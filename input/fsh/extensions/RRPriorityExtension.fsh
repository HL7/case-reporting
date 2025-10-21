Extension: RRPriorityExtension
Id: rr-priority-extension
Title: "Reportability Response Priority Extension"
Description: "This Extension profile represents the priority given to the whole composition or one or more external resources."
Context: Composition.section, DocumentReference
* . ^short = "Reportability Response Priority"
* . ^definition = "Priority given to the composition or one or more external resources."

* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from RRVS_ReportabilityPriority_eCR (extensible)
* value[x] ^short = "Reportability priority"
* value[x] ^definition = "Priority given to the whole composition or one or more external resources."
* value[x] ^binding.description = "Reportability Priority"