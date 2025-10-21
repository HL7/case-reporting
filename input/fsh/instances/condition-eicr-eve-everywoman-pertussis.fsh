Instance: condition-eicr-eve-everywoman-pertussis
InstanceOf: USPublicHealthConditionProblemsHealthConcerns
Title: "eICR Condition example: Eve Everywoman - pertussis"
Description: "Example of eICR Condition profile (Eve Everywoman: pertussis)"
Usage: #example
* category = $condition-category#problem-list-item
* code = $sct#27836007 "Pertussis (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"