Profile: EICREncounter
Parent: USPublicHealthEncounter
Id: eicr-encounter
Title: "eICR Encounter"
Description: "This Encounter profile represents the encounter related to the event. It is based on the US Public Health Encounter profile."
* . ^short = "eICR Encounter"
* identifier 1..*
* period 1..
* period.start 1.. MS
* diagnosis MS
* diagnosis.extension MS
* diagnosis.extension ^slicing.discriminator.type = #value
* diagnosis.extension ^slicing.discriminator.path = "url"
* diagnosis.extension ^slicing.rules = #open
* diagnosis.extension contains Eicr_Trigger_Code_Flag_Extension named sliceEncounterDiagnosisTrigger 0..1 MS
* diagnosis.extension[sliceEncounterDiagnosisTrigger] ^short = "Trigger Code Flag"
* diagnosis.extension[sliceEncounterDiagnosisTrigger] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the report to be generated."