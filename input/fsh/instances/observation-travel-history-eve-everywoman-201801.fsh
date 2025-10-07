Instance: observation-travel-history-eve-everywoman-201801
InstanceOf: USPublicHealthTravelHistory
Title: "Travel History Observation Example: observation-travel-history-eve-everywoman-201801"
Description: "Example of Travel History Observation profile (Eve Everywoman - January 2018)"
Usage: #example
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2018-01-15"
* effectivePeriod.end = "2018-01-30"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:iso:std:iso:3166#FJI "Fiji"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:oid:1.0.3166.1#VUT "Vanuatu"
* component[+].code = $sct#280147009 "Type of activity (attribute)"
* component[=].valueCodeableConcept = $sct#702348006 "Active duty military (occupation)"