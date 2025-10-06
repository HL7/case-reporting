Extension: USPublicHealthNamedEventTypeExtension
Id: us-ph-named-eventtype-extension
Title: "US Public Health Named Event Type Extension"
Description: "Indicates the types of named events to subscribe to from the EHR."
Context: PlanDefinition.action.trigger
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2019-09-01T00:00:00.000Z"
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . 1..1
* . ^short = "US Public Health Named Event Type Extension"
* . ^definition = "Indicates the types of named events to subscribe to from the EHR."
* url only uri
* value[x] only CodeableConcept
* value[x] from USPublicHealthTriggerDefinitionNamedEvent (extensible)
* value[x] ^short = "The set of named events that can be used for subscriptions"
* value[x] ^binding.description = "US Public Health TriggerDefinition NamedEvents"