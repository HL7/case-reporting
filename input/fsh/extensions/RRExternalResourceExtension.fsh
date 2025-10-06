Extension: RRExternalResourceExtension
Id: rr-external-resource-extension
Title: "RR External Resource Extension"
Description: "This Extension profile represents an external resource (DocumentReference) pertaining to the condition such as a text guidance, link to access forms for additional reporting needs, additional testing and/or laboratory testing needs, treatment and/or prevention resources, Public Health Agency contact information and general additional resources."
Context: Observation
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . ^short = "External Resource"
* value[x] 1..
* value[x] only Reference(RRDocumentReference)
* value[x] ^short = "DocumentReference for an external resource"