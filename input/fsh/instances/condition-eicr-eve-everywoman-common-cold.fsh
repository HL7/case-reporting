Instance: condition-eicr-eve-everywoman-common-cold
InstanceOf: USPublicHealthConditionEncounterDiagnosis
Title: "US Public Health Condition Encounter Diagnosis example: Eve Everywoman- common cold"
Description: "Example of US Public Health Condition Encounter Diagnosis profile (Eve Everywoman: common cold)"
Usage: #example
* category[us-core] = $condition-category#encounter-diagnosis
* code = $sct#82272006 "Common cold (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"