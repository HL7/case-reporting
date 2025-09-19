Instance: observation-pregnancy-outcome-eve-everywoman
InstanceOf: USPublicHealthPregnancyOutcomeObservation
Title: "US Public Health Pregnancy Outcome Observation Example: Eve Everywoman"
Description: "Example of US Public Health Pregnancy Outcome Observation profile (Eve Everywoman)"
Usage: #example
* status = #final
* code = $loinc#63893-2 "Outcome of pregnancy"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* focus.reference = "Observation/observation-pregnancy-status-eve-everywoman"
* focus.display = "Pregnancy (finding)"
* effectiveDateTime = "2018-01-05"
* valueCodeableConcept = $sct#21243004 "Term birth of newborn (finding)"
* component.code = $loinc#73771-8 "Birth order"
* component.valueInteger = 1