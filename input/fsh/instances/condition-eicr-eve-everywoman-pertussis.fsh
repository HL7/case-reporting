Instance: condition-eicr-eve-everywoman-pertussis
InstanceOf: USPublicHealthConditionProblemsHealthConcerns
Title: "Condition - Pertussis for Eve Everywoman"
Description: "Example of a US Public Health Condition documenting a pertussis diagnosis for patient Eve Everywoman."
Usage: #example
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = $sct#27836007 "Pertussis (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"