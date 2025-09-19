Extension: USPublicHealthReceiverAddressExtension
Id: us-ph-receiver-address-extension
Title: "US Public Health Receiver Address Extension"
Description: "Indicates the endpoint address where the report has to be sent."
Context: PlanDefinition
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..1
* . ^short = "Indicates the address where the report has to be sent."
* . ^definition = "Indicates the address where the report has to be sent."
* url only uri
* value[x] only Reference(Endpoint)