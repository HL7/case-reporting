Instance: observation-us-ph-lab-result-eve-everywoman-pertussis
InstanceOf: USPublicHealthLaboratoryResultObservationProfile
Title: "US Core Results Example: observation-us-ph-lab-result-eve-everywoman-pertussis"
Description: "Example of US Public Health Lab Result profile (Eve Everywoman: Pertussis)"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#11585-7 "Bordetella pertussis Ab [Units/volume] in Serum"
* code.text = "Bordetella pertussis Ab [Units/volume] in Serum"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2016-11-07"
* valueQuantity = 100 '[iU]/mL'
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.high = 45 '[iU]/mL'