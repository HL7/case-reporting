Instance: condition-eicr-eve-everywoman-diabetes
InstanceOf: USPublicHealthConditionProblemsHealthConcerns
Title: "Condition - Diabetes Mellitus for Eve Everywoman"
Description: "Example of a US Public Health Condition documenting a diabetes mellitus diagnosis for patient Eve Everywoman."
Usage: #example
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = $sct#73211009 "Diabetes mellitus (disorder)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* onsetDateTime = "2017-08-23"
* asserter.reference = "Practitioner/practitioner-us-core-henry-seven"
* asserter.display = "Henry Seven, MD"