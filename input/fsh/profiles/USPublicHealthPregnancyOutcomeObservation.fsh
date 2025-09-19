Profile: USPublicHealthPregnancyOutcomeObservation
Parent: Observation
Id: us-ph-pregnancy-outcome-observation
Title: "US Public Health Pregnancy Outcome Observation"
Description: """This profile represents a result of the pregnancy such as live birth, still birth, miscarriage, etc.

The subject of this profile is the mother. The focus of this profile is the related Pregnancy Status Observation. 

The order born in the delivery, live born or fetal death (1st, 2nd, 3rd, 4th, 5th, 6th, 7th, etc.) is contained in Observation.component. All live births and fetal losses are included. If the pregnancy plurality is 1 then this value will also be 1.

There will be one Pregnancy Outcome Observation for each fetus delivered live or dead at any time in the pregnancy, regardless of gestational age or if the fetuses were delivered at different dates in the pregnancy. All live births and fetal losses are included. The order born in the delivery, live born or fetal death is contained in Observation.component."""





* . ^short = "US Public Health Pregnancy Outcome Observation"
* code = $loinc#63893-2 "Outcome of pregnancy"
* code MS
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* focus 1..1 MS
* focus only Reference(USPublicHealthPregnancyStatusObservation)
* focus ^short = "The related Pregnancy Status Observation"
* focus ^definition = "The focus is the related Pregnancy Status Observation."
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "Pregnancy outcome date."
* effective[x] ^definition = "Date on which the pregnancy outcome occurred (for a live birth this is the delivery date)."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PregnancyOutcome (extensible)
* value[x] ^short = "Pregnancy outcome"
* value[x] ^binding.description = "Pregnancy Outcome"
* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains sliceBirthOrder 1..1 MS
* component[sliceBirthOrder] ^short = "Birth order"
* component[sliceBirthOrder] ^definition = "Represents the order born in the delivery, live born or fetal death (1st, 2nd, 3rd, 4th, 5th, 6th, 7th, etc.). All live births and fetal losses are included. If the pregnancy plurality is 1 then this value will also be 1."
* component[sliceBirthOrder].code = $loinc#73771-8 "Birth order"
* component[sliceBirthOrder].code MS
* component[sliceBirthOrder].value[x] 1..1 MS
* component[sliceBirthOrder].value[x] only integer
* component[sliceBirthOrder].value[x] ^short = "Birth order value (1, 2, 3, 4, etc.)"