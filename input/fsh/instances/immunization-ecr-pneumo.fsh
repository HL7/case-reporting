Instance: immunization-ecr-pneumo
InstanceOf: us-core-immunization
Title: "Immunization - Pneumococcal Vaccine for Eve Everywoman"
Description: "Example of a US Core Immunization documenting the administration of pneumococcal polysaccharide PPV23 vaccine to patient Eve Everywoman."
Usage: #example
* status = #completed
* vaccineCode = $cvx#33 "pneumococcal polysaccharide PPV23"
* patient = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* occurrenceDateTime = "2018-09-01"
* primarySource = true