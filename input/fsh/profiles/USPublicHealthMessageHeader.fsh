Profile: USPublicHealthMessageHeader
Parent: MessageHeader
Id: us-ph-messageheader
Title: "US Public Health MessageHeader"
Description: "This is the MessageHeader Resource profile for the IG."
* ^version = "0.1.0"
* ^status = #active

* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "US Public Health MessageHeader"
* . ^definition = "Sets expectations for supported capabilities for MessageHeader resource for public health."
* . ^mustSupport = false
* extension contains
    USPublicHealthDataEncryptedExtension named dataEncrypted 0..1 MS and
    USPublicHealthMessageProcessingCategoryExtension named messageProcessingCategory 1..1 MS
* event[x] 1..1 MS
* event[x] only Coding
* event[x] from USPublicHealthMessageTypesValueSet (extensible)
* event[x] ^short = "Types of messages being sent between systems"
* event[x] ^binding.description = "US Public Health Message Types ValueSet"
* destination 1..* MS
* destination.endpoint 1..1 MS
* sender 1..1 MS
* sender only Reference(USPublicHealthOrganization)
* source 1..1 MS
* source.endpoint 1..1 MS
* reason 1..1 MS
* reason only CodeableConcept
* reason from USPublicHealthTriggerDefinitionNamedEvent (extensible)
* reason ^short = "The named event that gave rise to the message"
* reason ^binding.description = "US Public Health TriggerDefinition NamedEvents"
* response 0..1 MS
* response.identifier 1..1 MS
* response.code 1..1 MS
* response.details 0..1 MS