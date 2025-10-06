Extension: USPublicHealthUsageWarningExtension
Id: us-ph-usagewarning-extension
Title: "US Public Health Usage Warning Extension"
Description: "An extra warning about the correct use of the value set."
Context: ValueSet
* ^version = "0.2.0"
* ^experimental = false
* ^date = "2019-06-06T00:00:00.000Z"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . 0..1
* . ^short = "US Public Health Usage Warning Extension"
* . ^definition = "An extra warning about the correct use of the value set."
* url only uri
* value[x] only string