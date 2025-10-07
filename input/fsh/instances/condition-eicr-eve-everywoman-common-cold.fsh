Instance: condition-eicr-eve-everywoman-common-cold
InstanceOf: USPublicHealthConditionProblemsHealthConcerns
Title: "eICR Condition example: Eve Everywoman- common cold"
Description: "Example of eICR Condition profile (Eve Everywoman: common cold)"
Usage: #example
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#82272006 "Common cold (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"