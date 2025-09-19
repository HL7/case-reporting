Profile: USPublicHealthCondition
Parent: USCoreCondition
Id: us-ph-condition
Title: "US Public Health Condition"
Description: """This Condition profile represents the signs, symptoms, and diagnoses related to a public health event.

It is based on the **US Core Condition** profile with further restriction of a *Must Support* constraint on the **onset\[x]** and verificationStatus data elements.

In the case of a condition being mistakenly entered into the system and later corrected:
* verificationStatus of 'entered-in-error' must be set"""





* . ^short = "US Public Health Condition"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $condition-assertedDate named sliceAssertedDate 0..1 MS
* subject only Reference(USPublicHealthPatient)
* subject MS
* onset[x] MS
* onset[x] ^isModifier = false
* recordedDate MS