Instance: immunization-ecr-pneumo
InstanceOf: USCoreImmunizationProfile
Title: "Immunization Example: immunization-ecr-pneumo"
Description: "Example of US Core Immunization profile"
Usage: #example
* status = #completed
* vaccineCode = $cvx#33 "pneumococcal polysaccharide PPV23"
* patient = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* occurrenceDateTime = "2018-09-01"
* primarySource = true