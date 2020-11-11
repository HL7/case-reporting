library RuleFilters version '1.0.0'

using FHIR version '4.0.0'

include FHIRHelpers version '4.0.0'

codesystem "UsageContext": 'http://terminology.hl7.org/CodeSystem/usage-context-type'
codesystem "JurisdictionsList": 'http://hl7.org/fhir/us/ecr/CodeSystem/ersd-jurisdictions'
valueset "Indeterminate or Equivocal Lab Result Value": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1035'
valueset "Negative or Undetected Lab Result Value": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1034'

code "focus": 'focus' from UsageContext
//code "Chlamydia": 'Chlamydia'

/* parameter "Triggering Encounter" Encounter */

context Patient

define "Chlamydia ValueSets":
  [ValueSet] ValueSet
    where exists (
      ValueSet.useContext UseContext
        where UseContext.code ~ "focus"
          and not IsNull(
            UseContext.value Value
              where Value.text = 'Chlamydia'
          )
    )

define function ExpandValueSetCodes(value List<ValueSet>):
  value Value
    return Value.expansion.contains.code

define function ExpandValueSetSystems(value List<ValueSet>):
  value Value
    return Value.expansion.contains.system

define "Flattened ValueSet Expansion Codes":
  flatten( ExpandValueSetCodes("Chlamydia ValueSets") )

define "Flattened ValueSet Expansion Systems":
  flatten( ExpandValueSetSystems("Chlamydia ValueSets") )

define function ObservationWithSystemAndCodeInChlamydiaValueSets(observation Observation):
    not IsNull(
      observation.code  OConcept
        where exists (
          OConcept.coding OCoding
            where ( OCoding.code in "Flattened ValueSet Expansion Codes" )
               and OCoding.system in "Flattened ValueSet Expansion Systems"
        )
    )

define function ObservationWithCodeInChlamydiaValueSets(observation Observation):
  not IsNull(
    observation.code  OConcept
      where exists (
        OConcept.coding OCoding where OCoding.code in flatten( ExpandValueSetCodes("Chlamydia ValueSets") )
      )
  )

define function ChlamydiaObservations(observation Observation):
  if exists (observation.code.coding.system)
  then ObservationWithSystemAndCodeInChlamydiaValueSets(observation)
  else ObservationWithCodeInChlamydiaValueSets(observation)

define "Chlamydia Test Results":
  [Observation] O
    where ChlamydiaObservations(O)
      and O.status in { 'preliminary', 'final', 'amended', 'corrected' }

define "Triggering Encounter":
[Encounter] E

define "Encounter Location References":
  flatten("Triggering Encounter" TriggeringEncounter
    return TriggeringEncounter.location.location)

define "Locations Matching Encounter Location References":
  [Location] Location
    where exists (
        "Encounter Location References" LocationReference
          where ('Location/' + Location.id) ~ LocationReference.reference
      )

/* define "Encounter Location Addresses And Patient Addresses":
  "Locations Matching Encounter Location References".address
    union Patient.address */

define "Encounter Location Address":
  "Locations Matching Encounter Location References" Address
    return Tuple { state: Address.address.state,  postalCode: Address.address.postalCode }

define "Patient Address":
  Patient.address PA
  return Tuple { state: PA.state, postalCode: PA.postalCode }

/* define "Address Elements Relevant to Jurisdiction Qualification":
  "Encounter Location Addresses And Patient Addresses" Address
    return Tuple { state: Address.state,  postalCode: Address.postalCode } */

define "Jurisdictions":
  flatten([CodeSystem] C
    return C.concept Cpt
      return Tuple { jurisdictionCode: Cpt.code,
        definition: Cpt.definition,
        jurisdictionType: Cpt.property P where P.code='type' return P.value as FHIR.string,
        stateCode: Cpt.property P where P.code = 'state' return P.value as FHIR.code,
        postalCode: Cpt.property P where P.code = 'postalcode' return P.value as FHIR.code
        })

define "Encounter Address Postal Code is in Jurisdiction Codes":
  "Jurisdictions" J
    with "Encounter Location Address" LocationAddress
      such that LocationAddress.postalCode in J.postalCode

define "Encounter Address State is in Jurisdiction Codes":
    "Jurisdictions" J
      with "Encounter Location Address" LocationAddress
        such that LocationAddress.state in J.stateCode
          and 'STATE' in J.jurisdictionType

define "Patient Address Postal Code is in Jurisdiction Codes":
  "Jurisdictions" J
    with "Patient Address" PA
      such that PA.postalCode in J.postalCode

define "Patient Address State is in Jurisdiction Codes":
  "Jurisdictions" J
    with "Patient Address" PA
      such that PA.state in J.stateCode
        and 'STATE' in J.jurisdictionType

define "Address Exists in Jurisdiction Codes":
  exists (
    "Encounter Address State is in Jurisdiction Codes"
      union "Encounter Address Postal Code is in Jurisdiction Codes"
        union "Patient Address State is in Jurisdiction Codes"
          union "Patient Address Postal Code is in Jurisdiction Codes"
    )

define function EncounterAddressJurisdictions():
  if exists ("Encounter Address Postal Code is in Jurisdiction Codes")
    then "Encounter Address Postal Code is in Jurisdiction Codes"
      else "Encounter Address State is in Jurisdiction Codes"

define function PatientAddressJurisdictions():
  if exists ("Patient Address Postal Code is in Jurisdiction Codes")
    then "Patient Address Postal Code is in Jurisdiction Codes"
      else "Patient Address State is in Jurisdiction Codes"

define "Jurisdiction Codes Relevant to Encounter Addresses":
  EncounterAddressJurisdictions()

define "Jurisdiction Codes Relevant to Patient Addresses":
  PatientAddressJurisdictions()

define "Indeterminate Chlamydia Test Results":
  "Chlamydia Test Results" O
    let organization: [Organization]
    where (
      (
        exists (
            O.interpretation interpretationConcept
              where interpretationConcept as CodeableConcept in "Indeterminate or Equivocal Lab Result Value"
        )
          or O.value as CodeableConcept in "Indeterminate or Equivocal Lab Result Value"
      )
        or "Address Exists in Jurisdiction Codes"
    )

define "Negative Chlamydia Test Results":
  "Chlamydia Test Results" O
    let organization: [Organization]
    where (
      (
        exists (
            O.interpretation interpretationConcept
              where interpretationConcept as CodeableConcept in "Negative or Undetected Lab Result Value"
        )
          or O.value as CodeableConcept in "Negative or Undetected Lab Result Value"
      )
        and "Address Exists in Jurisdiction Codes"
    )

define "Is Reportable":
  exists "Indeterminate Chlamydia Test Results"
    or exists "Negative Chlamydia Test Results"
