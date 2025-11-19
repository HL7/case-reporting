Instance: condition-eicr-eve-everywoman-common-cold
InstanceOf: USPublicHealthConditionEncounterDiagnosis
Title: "Condition - Common Cold for Eve Everywoman"
Description: "Example of a US Public Health Condition documenting a common cold encounter diagnosis for patient Eve Everywoman."
Usage: #example
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $sct#82272006 "Common cold (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-09-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"