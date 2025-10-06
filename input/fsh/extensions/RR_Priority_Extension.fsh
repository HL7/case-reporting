Extension: RR_Priority_Extension
Id: rr-priority-extension
Title: "Reportability Response Priority Extension"
Description: "This Extension profile represents the priority given to the whole composition or one or more external resources."
Context: Composition.section, DocumentReference
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . ..1
* . ^short = "Reportability Response Priority"
* . ^definition = "Priority given to the composition or one or more external resources."
* . ^isModifier = false
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from RRVS_ReportabilityPriority_eCR (extensible)
* value[x] ^short = "Reportability priority"
* value[x] ^definition = "Priority given to the whole composition or one or more external resources."
* value[x] ^binding.description = "Reportability Priority"