Instance: observation-us-ph-lab-result-eve-everywoman-pertussis
InstanceOf: USPublicHealthLaboratoryResultObservation
Title: "Observation - Lab Result Pertussis Antibody for Eve Everywoman"
Description: "Example of a US Public Health Laboratory Result observation documenting Bordetella pertussis antibody levels in serum for patient Eve Everywoman with high interpretation."
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#11585-7 "Bordetella pertussis Ab [Units/volume] in Serum"
* code.text = "Bordetella pertussis Ab [Units/volume] in Serum"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2016-11-07"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* valueQuantity = 100 '[iU]/mL'
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.high = 45 '[iU]/mL'