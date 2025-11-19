Instance: observation-odh-past-or-present-job-eve-everywoman
InstanceOf: PastOrPresentJob
Title: "Observation - ODH Past or Present Job for Eve Everywoman"
Description: "Example of an Occupational Data for Health (ODH) Past or Present Job observation for Eve Everywoman as a nursing aide in a nursing care facility with asbestos hazard exposure."
Usage: #example
* status = #final
* code = $loinc#11341-5 "History of Occupation"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectivePeriod.start = "2015-04-24"
* performer.reference = "Practitioner/practitioner-us-core-henry-seven"
* valueCodeableConcept = $PHOccupationCDCCensus2010#3600 "Nursing, psychiatric, and home health aides"
* component[0].code = $loinc#86188-0 "History of Occupation industry"
* component[=].valueCodeableConcept = $PHIndustryCDCCensus2010#8270 "Nursing care facilities"
* component[+].code = $loinc#87729-0 "History of Occupational hazard"
* component[=].valueString = "Asbestos"