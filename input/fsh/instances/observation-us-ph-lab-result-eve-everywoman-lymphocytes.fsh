Instance: observation-us-ph-lab-result-eve-everywoman-lymphocytes
InstanceOf: USPublicHealthLaboratoryResultObservation
Title: "Observation - Lab Result Lymphocytes for Eve Everywoman"
Description: "Example of a US Public Health Laboratory Result observation documenting lymphocyte count in blood for patient Eve Everywoman with high interpretation."
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2018-03-07"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* valueQuantity = 5.2 '10*3/uL'
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 1 '10*3/uL'
* referenceRange.high = 4.8 '10*3/uL'