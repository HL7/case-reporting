Instance: observation-travel-history-eve-everywoman-1999
InstanceOf: USPublicHealthTravelHistory
Title: "Travel History Observation Example: observation-travel-history-eve-everywoman-1999"
Description: "Example of Travel History Observation profile (Eve Everywoman)"
Usage: #example
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "1999"
* effectivePeriod.end = "2007"
* component.code = $v3-ParticipationType#LOC "Location"
* component.valueCodeableConcept.text = "Spent 8 years in the UK during the BSE outbreak"