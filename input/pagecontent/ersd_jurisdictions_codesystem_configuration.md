[Previous Page - eRSD Jurisdictions CodeSystem Query](ersd_jurisdictions_codesystem_query.html)

This document describes the eRSD Jurisdictions CodeSystem and explains how it is built.

### Overview

RCKMS provides a .csv file containing jurisdiction information.  This file can be used to generate a CodeSystem in JSON format as part of the IG.

### Dependencies

The following tools are needed to perform this operation:
* Microsoft Excel
* Java/Maven
* The CQFramework CQF-Tooling Github repository: [https://github.com/cqframework/cqf-tooling](https://github.com/cqframework/cqf-tooling)

### RCKMS CSV File

The RCKMS jurisdictions csv file is formatted in the following manner:  

pha_id | name | pha_type | state | zip_code
------ | ---- | -------- | ----- | --------
AK | Alaska Department of Health and Social Services | STATE | ALASKA | (null)
ca | California Department of Public Health | STATE | CALIFORNIA | 90041
ca | California Department of Public Health | STATE | CALIFORNIA | 90042
DED | Dededo | COUNTY | GUAM | 96912
lac | Los Angeles County Department of Public Health | COUNTY | CALIFORNIA | 90001
lac | Los Angeles County Department of Public Health | COUNTY | CALIFORNIA | 90002

The file is in .csv format.  It is possible that an error will occur when running the Java execution command that says the following:

```
An exception occured while executing the Java class. No valid entries or contents found, this is not a valid OOXML (Office Open XML) file
```

This error occurs when there is something corrupt with the file (which can sometimes happen when downloading or creating a .csv file).  To fix it, simply save the file as a .xlsx file using the "Save As" command in Excel.

### CQF-Tooling Repo

The CQF-Tooling repository needs to be cloned onto the local machine.  Go to [https://github.com/cqframework/cqf-tooling](https://github.com/cqframework/cqf-tooling) to access the repository.  For instructions how to clone the repository, visit [https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository).

### Java Command

From your command line terminal, navigate to the root directory of the CQF-Tooling repository and type the following command:

```
mvn exec:java -Dexec.args="-JurisdictionsXlsxToCodeSystem -pts=C:/Users/me/case-reporting/input/vocabulary/codesystem/sources/rckms-jurisdictions.xlsx -op=C:/Users/me/case-reporting/input/vocabulary/codesystem"
```

The `-pts` (path to source) argument is the path to where the .csv file is currently located.  Details of the path will change depending on where the file is stored on the local machine.  The file should be saved in the  Case-Reporting IG under the `/input/vocabulary/codesystem/sources` folder.

The `-op` (output path) argument is the path to where the generated CodeSystem will be placed.  This must be in the Case-Reporting IG under the `input/vocabulary/codesystem` folder for other IG tools to work properly.

In the example command above, the actual .csv filename is `rckms-jurisdictions.xlsx`.

### Output

After running the Java command, the newly generated CodeSystem will be located in the specified output destination.  The filename will be `CodeSystem-ersd-jurisdictions.json`.  The CodeSystem is built according to FHIR specifications and it formats the data from the .csv file as follows:

```json
"concept": [
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
          "valueCode": "COUNTY"
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
    }
]
```

The "pha_id" column from the .csv file becomes the concept code and it is formatted in uppercase to improve query results.  This represents the identifying code for each jurisdiction.

The "name" column becomes the concept definition.  This represents the name of the Public Health Agency for the specified jurisdiction.

The "pha_type" column becomes the concept property valueCode for `code: "type"`.  This indicates the type of the jurisdiction.  Available types are:
* State
* County
* City
* District
* Borough
* Parish

The "state" column becomes the concept property valueCode for `code: "state"`.  This is converted to state codes from the US Core ValueSet for state codes ([USPS Two Letter Alphabetic Codes](http://hl7.org/fhir/us/core/ValueSet-us-core-usps-state.html)).

The "zip_code" column becomes the concept property valueCode for `code: "postalcode"`.  This represents postal codes that report to the specified jurisdiction. If no postal code has been specified, this property will be skipped rather than generating a valueCode that says `(null)`.

This CodeSystem allows the ability to use CQL to match the Patient and Encounter addresses with the appropriate Public Health Agency that requires reporting.  This matching is done by comparing postal codes from the Patient and Encounter addresses with postal codes designated to specific Public Health Agencies.  If a postal code has not been specified for a Public Health Agency, matching is done by State, District, or Territory.

[Next Page - Rule Filter Generation](rule_filter_generation.html)