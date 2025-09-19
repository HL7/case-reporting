Instance: observation-odh-past-or-present-job-eve-everywoman
InstanceOf: PastOrPresentJob
Title: "ODH Past or Present Job Example: observation-odh-past-or-present-job-eve-everywoman"
Description: "Example of ODH Past or Present Job profile (Eve Everywoman)"
Usage: #example
* status = #final
* code = $loinc#11341-5 "History of Occupation"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectivePeriod.start = "2015-04-24"
* valueCodeableConcept = $PHOccupationCDCCensus2010#3600 "Nursing, psychiatric, and home health aides"
* component[0].code = $loinc#86188-0 "History of Occupation industry"
* component[=].valueCodeableConcept = $PHIndustryCDCCensus2010#8270 "Nursing care facilities"
* component[+].code = $loinc#87729-0 "History of Occupational hazard"
* component[=].valueString = "Asbestos"