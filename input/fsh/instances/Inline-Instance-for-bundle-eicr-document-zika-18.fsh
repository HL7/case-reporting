Instance: Inline-Instance-for-bundle-eicr-document-zika-18
InstanceOf: USPublicHealthTravelHistory
Usage: #inline
* id = "observation-travel-history-eve-everywoman-201801"
* meta.versionId = "9"
* meta.lastUpdated = "2021-08-17T07:59:01.126+00:00"
* meta.source = "#d6PrWfFFuxUIiLtX"
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2018-01-15"
* effectivePeriod.end = "2018-01-30"
* component[0].code = $v3-ParticipationType#LOC "Location"
* component[=].valueCodeableConcept = urn:iso:std:iso:3166#FJI "Fiji"
* component[+].code = $v3-ParticipationType#LOC "Location"
* component[=].valueCodeableConcept = urn:oid:1.0.3166.1#VUT "Vanuatu"
* component[+].code = $sct#280147009 "Type of activity (attribute)"
* component[=].valueCodeableConcept = $sct#702348006 "Active duty military (occupation)"