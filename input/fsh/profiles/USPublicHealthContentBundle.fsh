Profile: USPublicHealthContentBundle
Parent: Bundle
Id: us-ph-content-bundle
Title: "US Public Health Content Bundle"
Description: "Bundle Resource profile for exchanging public health messages, knowledge artifacts or content."
* ^version = "0.1.0"

* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "US Public Health Content Bundle"
* . ^definition = "Sets expectations for supported capabilities for Bundles used to package content in public health."
* type 1..1 MS
* type only code
* type = #collection (exactly)
* timestamp 0..1 MS
* entry 1..* MS