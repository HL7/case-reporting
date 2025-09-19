Profile: USPublicHealthEmergencyOutbreakInformation
Parent: Observation
Id: us-ph-emergency-outbreak-information
Title: "US Public Health Emergency Outbreak Information"
Description: """This profile represents information that is required during a public health emergency/outbreak. This information can be highly variable, so a generic structure has been chosen to represent it.

This information will be recorded using a question/answer pattern with questions specific to the public health emergency/outbreak."""





* . ^short = "US Public Health Outbreak Information"
* . ^definition = "This profile represents information that is required during a public health emergency/outbreak. This information will be recorded using a question/answer pattern with questions specific to the public health emergency/outbreak."
* identifier ..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(USPublicHealthPatient)
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept or string or boolean or integer or dateTime or Period
* hasMember only Reference(USPublicHealthEmergencyOutbreakInformation)
* hasMember MS