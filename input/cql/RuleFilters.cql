library RuleFilters version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "LOINC": 'http://loinc.org'
codesystem "UsageContext": 'http://hl7.org/fhir/us/ecr/CodeSystem/us-ph-usage-context-type'
codesystem "JurisdictionsList": 'http://hl7.org/fhir/us/ecr/CodeSystem/ersd-jurisdictions-example'

// Overall triggering value sets, groupings of all condition-specific value sets, grouped by representation in the information model
valueset "Diagnosis Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example'
valueset "Medication Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example'
valueset "Laboratory Order Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example'
valueset "Laboratory Result Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-lrtc-example'
valueset "Organism Substance Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example'
valueset "Procedure Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example'

// Condition-specific triggering codes, these would be listed for each condition
valueset "Chlamydia Laboratory Result Trigger Codes": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-chlamydia-example'

// Supplemental (or operational) value sets used in suspected reportability determination logic
valueset "Indeterminate or Equivocal Lab Result Value": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1035'
valueset "Negative or Undetected Lab Result Value": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1034'

code "eICRComposition": '55751-2' from "LOINC"

parameter "Triggering Encounter" Encounter

context Patient

define "Chlamydia Test Results":
  [Observation: "Chlamydia Laboratory Result Trigger Codes"] O
    where O.status in { 'registered', 'preliminary', 'final', 'amended', 'corrected' }

define "Triggering Encounters":
  [Encounter] E

define "Encounter Location References":
  flatten("Triggering Encounters" TriggeringEncounter
    return TriggeringEncounter.location.location)

define "Locations Matching Encounter Location References":
  [Location] Location
    where exists (
        "Encounter Location References" LocationReference
          where ('Location/' + Location.id) ~ LocationReference.reference
      )

define "Encounter Location Address":
  "Locations Matching Encounter Location References" Address
    return Tuple { state: Address.address.state,  postalCode: Address.address.postalCode }

define "Patient Address":
  Patient.address PA
  return Tuple { state: PA.state, postalCode: PA.postalCode }

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
        and "Address Exists in Jurisdiction Codes"
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

define "Reportable Triggering Codes":
  flatten ("Indeterminate Chlamydia Test Results" O return O.code.coding)
    union flatten ("Negative Chlamydia Test Results" O return O.code.coding)
    // ... reportable triggering codes for other conditions

define "Is Reportable":
  exists (
    "Reportable Triggering Codes"
      except "Existing Reportable Triggering Codes"
    )

define "Existing Reportable Triggering Codes":
  flatten (
    "eICR Compositions" C
      return
        C.section.entry.extension E
          where E.url = 'http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-trigger-code-flag-extension'
            return (singleton from (E.extension SE where SE.url = 'triggerCode')).value as Coding
  )

define "Is Encounter In Progress":
  not IsNull (
    "Triggering Encounter" E
      where E.status ~ 'in-progress'
  ) or exists (
      "Triggering Encounters" E
        where E.status ~ 'in-progress'
    )

define "Is Encounter Complete":
  not IsNull (
    "Triggering Encounter" E
      where E.status ~ 'finished'
  ) or exists (
      "Triggering Encounters" E
        where E.status ~ 'finished'
    )
define "Is Encounter In Progress or 72h or less after end of encounter?":
  "Is Encounter In Progress"
    or (not IsNull("Triggering Encounter") and "Triggering Encounter".period.end 72 hours or less before Now())
    or (exists ("Triggering Encounters") and singleton from "Triggering Encounters".period.end 72 hours or less before Now())

define "eICR Compositions":
  [Composition : "eICRComposition"]

define "Most recent eICR sent over 24 hours ago?":
  First("eICR Compositions" eICRs
    where eICRs.date 24 hours or more before Now()
    sort by date desc)
