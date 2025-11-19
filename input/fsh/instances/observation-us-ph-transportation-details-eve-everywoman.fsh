Instance: observation-us-ph-transportation-details-eve-everywoman
InstanceOf: USPublicHealthTransportationDetails
Title: "US Public Health Transportation Example: Eve Everywoman"
Description: "Example of US Public Health Transportation Example (Eve Everywoman)"
Usage: #example
* status = #final
* category[transportation] = http://terminology.hl7.org/CodeSystem/v3-ActClass#TRNS "Transportation"
* category[transportation].text = "Transportation"
* code = $sct#424483007 "Transportation details (observable entity)"
* code.text = "Transportation details (observable entity)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-18T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = $sct#21812002 "Ocean liner, device (physical object)"
* valueCodeableConcept.text = "Cruise Ship"
* component[0].code.text = "Ship name"
* component[=].valueString = "Princess of the Sea"
* component[+].code.text = "Cabin number"
* component[=].valueString = "69B"