Instance: observation-travel-history-eve-everywoman-201801
InstanceOf: USPublicHealthTravelHistory
Title: "Observation - Travel History for Eve Everywoman (January 2018)"
Description: "Example of a US Public Health Travel History observation documenting travel to Fiji and Vanuatu by patient Eve Everywoman in January 2018."
Usage: #example
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2018-01-15"
* effectivePeriod.end = "2018-01-30"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:iso:std:iso:3166#FJI "Fiji"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:oid:1.0.3166.1#VUT "Vanuatu"
* component[+].code = $sct#280147009 "Type of activity (attribute)"
* component[=].valueCodeableConcept = $sct#702348006 "Active duty military (occupation)"