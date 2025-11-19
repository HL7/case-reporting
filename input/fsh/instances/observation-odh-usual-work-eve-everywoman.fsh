Instance: observation-odh-usual-work-eve-everywoman
InstanceOf: UsualWork
Title: "Observation - ODH Usual Work for Eve Everywoman"
Description: "Example of an Occupational Data for Health (ODH) Usual Work observation documenting Eve Everywoman's occupation as a Human Resources Manager in the hospital industry."
Usage: #example
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectivePeriod.start = "2015-01-01"
* effectivePeriod.end = "2018-03-07"
* performer.reference = "Practitioner/practitioner-us-core-henry-seven"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.314#0136 "Human Resources Managers"
* component[odh-UsualIndustry].code = $loinc#21844-6 "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.315#8190 "Hospitals"