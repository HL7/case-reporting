This document describes the eRSD Jurisdictions CodeSystem.

### Overview

Jurisdiction information is provided in the form of a FHIR CodeSystem resource that is available for download via web service API.

### CodeSystem

The CodeSystem is structured as follows:

```json
"concept": [
    {
      "code": "AK",
      "display": "ALASKA",
      "definition": "Alaska Department of Health and Social Services",
      "property": [
        {
          "code": "type",
          "valueCode": "pha-state"
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
          "valueCode": "pha-state"
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
        }
      ]
    },
    {
      "code": "DED",
      "display": "GUAM",
      "definition": "Dededo",
      "property": [
        {
          "code": "type",
          "valueCode": "pha-county"
        },
        {
          "code": "state",
          "valueCode": "GU"
        },
        {
          "code": "postalcode",
          "valueCode": "96912"
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
          "valueCode": "pha-county"
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
    }
]
```

The concept code is formatted in uppercase to improve query results.  It represents the identifying code for each jurisdiction.

The concept definition represents the name of the jurisdiction, for example the name of a Public Health Agency, state or county.

The concept property valueCode with `code: "type"` indicates the type of the jurisdiction.  Available types are drawn from the [eRSD Jurisdiction Types](CodeSystem-ersd-jurisdiction-types.html) CodeSystem.

The concept property valueCode with `code: "state"` contains the state code from the US Core ValueSet for state codes ([USPS Two Letter Alphabetic Codes](http://hl7.org/fhir/us/core/ValueSet-us-core-usps-state.html)).

The concept property valueCode with `code: "postalcode"` represents postal codes that report to the specified jurisdiction. If no postal code has been specified, this property will not be included rather than containing a valueCode of `(null)`.

This CodeSystem supports identifying known jurisdictions so they can be matched to Patient and Encounter location addresses as part of the process of determining the jurisdiction reporting requirements for the jurisdiction of care and the jurisdiction or residence. This matching is done by comparing postal codes from the Patient Encounter location addresses with state and postal codes designated to specific jurisdictions.  The logic for determining jurisdiction is covered in detail in the next section.
