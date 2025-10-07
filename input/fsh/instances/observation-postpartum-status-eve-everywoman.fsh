Instance: observation-postpartum-status-eve-everywoman
InstanceOf: USPublicHealthIsPostpartum
Title: "US Public Health Postpartum Status Example: observation-postpartum-status-eve-everywoman"
Description: "Example of US Public Health Postpartum Status profile (Eve Everywoman)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9701b264-0f70-47f9-bfbf-aa4f9686cd3a"
* status = #final
* code = $sct#249197004 "Maternal condition during puerperium (observable entity)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2018-01-05T10:15:00+10:00"
* valueCodeableConcept = $sct#42814007 "Mid postpartum state (finding)"