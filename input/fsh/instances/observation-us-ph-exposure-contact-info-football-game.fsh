Instance: observation-us-ph-exposure-contact-info-football-game
InstanceOf: USPublicHealthExposureContactInformation
Title: "US Public Health Exposure Contact Information Example: Football Game"
Description: "Example of US Public Health Exposure Contact Information (Football Game)"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v3-ActClass#EXPOS "exposure"
* category.text = "An interaction between entities that provides opportunity for transmission of a physical, chemical, or biological agent from an exposure source entity to an exposure target entity."
* code = http://terminology.hl7.org/CodeSystem/umls#C3841750 "Mass gathering"
* code.text = "Mass gathering (football game)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* focus.reference = "Location/location-ecr-city-football-stadium"
* focus.display = "City Football Stadium"
* effectivePeriod.start = "2020-01-11T18:00:00Z"
* effectivePeriod.end = "2020-01-11T21:30:00Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = $sct#264379009 "Sports stadium (environment)"
* valueCodeableConcept.text = "City Football Stadium"
* component.code = $v3-ParticipationType#EXPAGNT "ExposureAgent"
* component.valueCodeableConcept = $sct#840533007 "Severe acute respiratory syndrome coronavirus 2 (organism)"