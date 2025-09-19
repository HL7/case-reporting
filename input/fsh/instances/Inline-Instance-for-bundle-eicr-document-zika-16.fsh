Instance: Inline-Instance-for-bundle-eicr-document-zika-16
InstanceOf: USCoreBloodPressureProfile
Usage: #inline
* id = "observation-blood-pressure-eve-everywoman"
* meta.versionId = "2"
* meta.lastUpdated = "2021-07-19T08:19:31.753+00:00"
* meta.source = "#2PjceWUbU0gCYVZA"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* encounter.display = "GP Visit"
* effectiveDateTime = "2020-07-02"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].code.text = "Systolic blood pressure"
* component[=].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Diastolic blood pressure"
* component[=].valueQuantity = 44 'mm[Hg]' "mmHg"