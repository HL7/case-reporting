Extension: USPublicHealthMessageProcessingCategoryExtension
Id: us-ph-message-processing-category-extension
Title: "US Public Health Message Processing Category Extension"
Description: "Indicates how systems have to deal with messages in terms of duplicates, lack of responses."
Context: MessageHeader
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 1..1
* . ^short = "US Public Health Message Processing Category Extension"
* . ^definition = "Indicates how systems have to deal with messages in terms of duplicates, lack of responses."
* url only uri
* value[x] only code
* value[x] from MessageSignificanceCategory (required)
* value[x] ^short = "The message processing requirements identified by the message"
* value[x] ^binding.description = "MessageSignificanceCategory"