Profile: USPublicHealthTriggeringValueSet
Parent: USPublicHealthValueSet
Id: us-ph-triggering-valueset
Title: "US Public Health Triggering ValueSet"
Description: "This profile describes the US Public Health Triggering value set."



* . ^short = "US Public Health Triggering ValueSet"
* useContext ..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains reportingContext 1..1
* useContext[reportingContext].code 1..1
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].value[x] 1..1
* useContext[reportingContext].value[x] only CodeableConcept
* useContext[reportingContext].value[x] = $USPublicHealthUsageContext#triggering
* useContext[reportingContext].value[x] ^short = "value set useContext"
* useContext[reportingContext].value[x] ^definition = "The US Public Health use context of the value set."