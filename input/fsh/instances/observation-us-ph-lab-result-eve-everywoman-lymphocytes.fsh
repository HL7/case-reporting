Instance: observation-us-ph-lab-result-eve-everywoman-lymphocytes
InstanceOf: USPublicHealthLaboratoryResultObservationProfile
Title: "US Public Health Lab Result Observation Example: observation-us-ph-lab-result-eve-everywoman-lymphocytes"
Description: "Example of US Public Health Lab Result profile (Eve Everywoman, lymphocytes)"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2018-03-07"
* valueQuantity = 5.2 '10*3/uL'
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 1 '10*3/uL'
* referenceRange.high = 4.8 '10*3/uL'