Profile: USPublicHealthEncounter
Parent: USCoreEncounterProfile
Id: us-ph-encounter
Title: "US Public Health Encounter"
Description: "This Encounter profile represents the encounter related to the event. It is based on the US Core Encounter."





* . ^short = "US Public Health Encounter"
* . ^definition = "The Public Health Encounter profile is based on the Encounter resource and establishes the core elements, extensions, vocabularies and value sets for representing the following encounters for public health reporting:\n\n- public health encounter related to the reported event."
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant ^definition = "The provider in charge of care and the facility in which care was provided during the encounter"
* participant contains sliceResponsibleProvider 0..1 MS
* participant[sliceResponsibleProvider] ^short = "Responsible provider"
* participant[sliceResponsibleProvider] ^definition = "The provider in charge of care and the facility in which care was provided during the encounter"
* participant[sliceResponsibleProvider].type 1..1 MS
* participant[sliceResponsibleProvider].type = $v3-ParticipationType#ATND
* participant[sliceResponsibleProvider].type ^short = "Responsible provider"
* participant.period MS
* participant[sliceResponsibleProvider].individual 1.. MS
* participant[sliceResponsibleProvider].individual only Reference(USPublicHealthPractitionerRole)
* participant[sliceResponsibleProvider].individual ^short = "Responsible Provider"
* participant[sliceResponsibleProvider].individual ^definition = "The provider in charge of care and the facility in which care was provided during the encounter"
* diagnosis MS
* diagnosis ^short = "Encounter diagnosis"
* diagnosis ^definition = "Encounter diagnosis"
* diagnosis.condition only Reference(USPublicHealthCondition)
* diagnosis.condition MS
* diagnosis.use MS
* location 1.. MS
* location ^short = "Public health encounter location"
* location ^definition = "Location of the facility in which the public health encounter took place"
* location ^isModifier = false
* location.location only Reference(USPublicHealthLocation)
* location.location MS
* location.location ^isModifier = false
* serviceProvider only Reference(USPublicHealthOrganization)
* serviceProvider MS