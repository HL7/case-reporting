Profile: USPublicHealthReportingBundle
Parent: Bundle
Id: us-ph-reporting-bundle
Title: "US Public Health Reporting Bundle"
Description: "Bundle Resource profile for exchanging one of public health messages, knowledge artifacts or content."
* ^version = "0.1.0"

* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "US Public Health Reporting Bundle"
* . ^definition = "Sets expectations for supported capabilities for Bundles used for reporting purposes in public health."
* type 1..1 MS
* type only code
* type = #message (exactly)
* timestamp 0..1 MS
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry contains sliceMessageHeader 1..1 MS
* entry[sliceMessageHeader].resource only USPublicHealthMessageHeader