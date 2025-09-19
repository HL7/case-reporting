Profile: USPublicHealthSupplementalValueSet
Parent: USPublicHealthValueSet
Id: us-ph-supplemental-valueset
Title: "US Public Health Supplemental ValueSet"
Description: "This profile describes the US Public Health Supplemental value set."



* . ^short = "US Public Health Supplemental ValueSet"
* useContext ..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #closed
* useContext contains reportingContext 1..1
* useContext[reportingContext].code 1..1
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].value[x] 1..1 MS
* useContext[reportingContext].value[x] only CodeableConcept
* useContext[reportingContext].value[x] = $USPublicHealthUsageContext#supplemental
* useContext[reportingContext].value[x] ^short = "value set useContext"
* useContext[reportingContext].value[x] ^definition = "The US Public Health use context of the value set."