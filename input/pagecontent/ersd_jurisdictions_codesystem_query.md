[Previous Page - eRSD Narrative Guidance](ersd_narrative_guidance.html)

This document provides instructions for how to use the eRSD Jurisdictions CodeSystem with CQL queries to identify relevant jurisdictions for a Patient and Encounter.

### Overview

  The eRSD Jurisdictions CodeSystem can be used for CQL querying to determine which jurisdiction should receive eCR reports.  The CQL query uses the Patient address and the Encounter location address to determine relevant jurisdictions.  The relevant jurisdictions are determined by matching address postal codes with jurisdiction postal codes or by matching State codes if no postal code is specified for a jurisdiction.

### Dependencies

The following tools are needed to perform this operation:
* Atom (download available at [https://atom.io/](https://atom.io/))
* [RuleFilter CQL](Library-RuleFilters.html)
* CQL plugin for Atom (instructions in CQL Query section below)

### CodeSystem

The CodeSystem is in JSON format and follows FHIR specifications.  An example of how jurisdictions are represented in this file is shown below:

```json
{
  "code": "AK",
  "display": "ALASKA",
  "definition": "Alaska Department of Health and Social Services",
  "property": [
    {
      "code": "type",
      "valueCode": "STATE"
    },
    {
      "code": "state",
      "valueCode": "AK"
    }
  ]
},
{
  "code": "CA",
  "display": "CALIFORNIA",
  "definition": "California Department of Public Health",
  "property": [
    {
      "code": "type",
      "valueCode": "STATE"
    },
    {
      "code": "state",
      "valueCode": "CA"
    },
    {
      "code": "postalcode",
      "valueCode": "90041"
    },
    {
      "code": "postalcode",
      "valueCode": "90042"
    },
    {
      "code": "postalcode",
      "valueCode": "91912"
    }
  ]
},
{
  "code": "LAC",
  "display": "CALIFORNIA",
  "definition": "Los Angeles County Department of Public Health",
  "property": [
    {
      "code": "type",
      "valueCode": "COUNTY"
    },
    {
      "code": "state",
      "valueCode": "CA"
    },
    {
      "code": "postalcode",
      "valueCode": "90001"
    },
    {
      "code": "postalcode",
      "valueCode": "90002"
    }
  ]
},
{
  "code": "SDC",
  "display": "CALIFORNIA",
  "definition": "San Diego County Public Health Services",
  "property": [
    {
      "code": "type",
      "valueCode": "COUNTY"
    },
    {
      "code": "state",
      "valueCode": "CA"
    },
    {
      "code": "postalcode",
      "valueCode": "91901"
    },
    {
      "code": "postalcode",
      "valueCode": "91912"
    }
  ]
}
```
Each jurisdiction has a set of properties connected with it that specify what type of jurisdiction it is, which State (State, District, or Territory) the jurisdiction belongs to, and which postal codes are specified for reporting to it.  

### CQL Query

[RuleFilter Library](Library-RuleFilters.html) This file contains CQL code that uses the test cases in the `/input/tests/RuleFilters-1.0.0` folder.  The `CodeSystem-ersd-jurisdictions.json` file will need to be copied and pasted to the `/input/tests/RuleFilters-1.0.0/Reportable/CodeSystem` folder in order for the test cases to work.

The CQL code is setup to match Chlamydia test results with relevant jurisdictions.  CQL must be run in Atom using the CQL plugin.  To install the plugin, open Atom and click "File" then "Settings".  A Settings tab will open up.  Navigate to "Install" and search for "cql".  Find the package named "language-cql" authored by cqframework and click "Install".

In Atom, open the `RuleFilter Library cql`.  The code related to jursdiction querying is as follows:

```cql
codesystem "JurisdictionsList": 'http://hl7.org/fhir/us/ecr/CodeSystem/ersd-jurisdictions'

parameter "Triggering Encounter" Encounter

context Patient

define "Encounter Location References":
  "Triggering Encounter" TriggeringEncounter
    return TriggeringEncounter.location.location

define "Locations Matching Encounter Location References":
  [Location] Location
    where exists (
        "Encounter Location References" LocationReference
          where Location.id ~ LocationReference.reference
      )

define "Encounter Location Addresses And Patient Addresses":
  "Locations Matching Encounter Location References".address
    union Patient.address

define "Address Elements Relevant to Jurisdiction Qualification":
  "Encounter Location Addresses And Patient Addresses" Address
    return Tuple { state: Address.state,  postalCode: Address.postalCode }

define "Jurisdictions":
  flatten([CodeSystem] C
    return C.concept Cpt
      return Tuple { jcode: Cpt.code, definition: Cpt.definition, scode: Cpt.property P where P.code = 'state' return P.value as FHIR.code, value: Cpt.property P where P.code = 'postalcode' return P.value as FHIR.code })

define "Address Postal Code is in Jurisdiction Codes":
  "Jurisdictions" J
    with "Address Elements Relevant to Jurisdiction Qualification" AddressElement
      such that AddressElement.postalCode in J.value

define "Address State is in Jurisdiction Codes":
    "Jurisdictions" J
      with "Address Elements Relevant to Jurisdiction Qualification" AddressElement
        such that AddressElement.state in J.scode

define function AddressJurisdictions():
  if exists ("Address Postal Code is in Jurisdiction Codes")
    then "Address Postal Code is in Jurisdiction Codes"
      else "Address State is in Jurisdiction Codes"

define "Jurisdiction Codes Relevant to Addresses":
  AddressJurisdictions()
```

### Determining Relevant Jurisdictions

If a Patient or Encounter takes place in a specified postal code, reporting goes to the jurisdiction specified.  In some cases, a State Public Health Agency also requires reporting.  In such a case, relevant postal codes are also specified for the State Public Health Agency.  If no postal codes are specified for the State Public Health Agency, that agency will only receive reports for addresses within the State that are not already specified for a local jurisdiction.  If a postal code is not specified anywhere, the reporting goes to the State Public Health Agency.

For example, if the Patient and Encounter addresses were in Chula Vista, CA  91912, the CQL result would be:

```
Jurisdiction Codes Relevant to Addresses = [Tuple {
    jurisdictionCode -> CA
    stateCode -> [CA]
    definition -> California Department of Public Health
}, Tuple {
    jurisdictionCode -> SDC
    stateCode -> [CA]
    definition -> San Diego County Public Health Services
}]
```

As shown, the jurisdictions relevant to the Patient and Encounter addresses are San Diego County Public Health Services and California Department of Health.  This is because the postal code 91912 has been specified for both of these jurisdictions, as shown in the [CodeSystem example](#codesystem) .

If the Patient and Encounter addresses were in Los Angeles, CA 90002, the CQL result would be:

```
Jurisdiction Codes Relevant to Addresses = [Tuple {
    jurisdictionCode -> LAC
    stateCode -> [CA]
    definition -> Los Angeles County Department of Public Health
}]
```
This only reports to Los Angeles County because, as shown in the [CodeSystem example](#codesystem), the postal code 90002 is specified for Los Angeles County and not specified for the State of California.


If the Patient and Encounter addresses were in Juneau, AK  99850, the CQL result would be:

```
Jurisdiction Codes Relevant to Addresses = [Tuple {
    jurisdictionCode -> AK
    stateCode -> [AK]
    definition -> Alaska Department of Health and Social Services
}]
```
As shown in the [CodeSystem example](#codesystem), Alaska has no specified postal codes.  Therefore, anywhere in Alaska will report only to the Alaska Department of Health and Social Services.

[Next Page - ERSD Jurisdictions CodeSystem Configuration](ersd_jurisdictions_codesystem_configuration.html)
