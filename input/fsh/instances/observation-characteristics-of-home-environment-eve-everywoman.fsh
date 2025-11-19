Instance: observation-characteristics-of-home-environment-eve-everywoman
InstanceOf: USPublicHealthCharacteristicsOfHomeEnvironment
Title: "Observation - Characteristics of Home Environment for Eve Everywoman"
Description: "Example of a US Public Health Characteristics of Home Environment observation indicating that Eve Everywoman is experiencing homelessness."
Usage: #example
* status = #final
* code = $loinc#75274-1 "Characteristics of residence"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2016-05-18T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = $sct#32911000 "Homeless"