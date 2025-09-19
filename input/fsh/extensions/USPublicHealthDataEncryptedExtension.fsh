Extension: USPublicHealthDataEncryptedExtension
Id: us-ph-data-encrypted-extension
Title: "US Public Health Data Encrypted Extension"
Description: "Indicates whether the data in the content bundle is encrypted or not."
Context: MessageHeader
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..1
* . ^short = "US Public Health Data Encrypted Extension"
* . ^definition = "Indicates whether the data in the content bundle is encrypted or not."
* url only uri
* value[x] only boolean