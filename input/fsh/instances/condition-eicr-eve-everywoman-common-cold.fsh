Instance: condition-eicr-eve-everywoman-common-cold
InstanceOf: USPublicHealthConditionProblemsHealthConcerns
Title: "eICR Condition example: Eve Everywoman- common cold"
Description: "Example of eICR Condition profile (Eve Everywoman: common cold)"
Usage: #example
* category[us-core] = $condition-category#problem-list-item
* code = $sct#82272006 "Common cold (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"