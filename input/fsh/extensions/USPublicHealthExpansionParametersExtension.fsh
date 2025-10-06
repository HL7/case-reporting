Extension: USPublicHealthExpansionParametersExtension
Id: us-ph-expansion-parameters-extension
Title: "US Public Health Expansion Parameters Extension"
Description: "Supports the definition of expansion parameters for the ValueSet."
Context: Library
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2021-07-02T00:00:00.000Z"
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . 0..1
* . ^short = "US Public Health Expansion Parameters Extension"
* . ^definition = "Supports the definition of expansion parameters for the ValueSet."
* url only uri
* value[x] only Reference(Parameters)