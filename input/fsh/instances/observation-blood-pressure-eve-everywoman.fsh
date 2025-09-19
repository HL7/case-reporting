Instance: observation-blood-pressure-eve-everywoman
InstanceOf: USCoreBloodPressureProfile
Title: "US Core Vital Sign Observation example"
Description: "An example of the US Core Vital Sign Observation profile."
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* encounter.display = "GP Visit"
* effectiveDateTime = "2020-07-02"
* performer = Reference(Organization/organization-rr-rules-authoring-agency-haw) "Health Authority West Rules Authoring Agency"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].code.text = "Systolic blood pressure"
* component[=].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Diastolic blood pressure"
* component[=].valueQuantity = 44 'mm[Hg]' "mmHg"