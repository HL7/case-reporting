Extension: USPublicHealthAddressExtension
Id: us-ph-address-extension
Title: "US Public Health Address Extension"
Description: """This Extension profile represents where the patient traveled to or visited as an address e.g.: country, state, city, street address (if applicable).

At the least, address must contain the country. State is required if the country is US. If country is something other than US, the state **MAY** be present but **MAY** be bound to different vocabularies."""
Context: Observation.component, Observation
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ..1
* . ^short = "US Public Health Address Extension"
* . ^definition = "Where the patient traveled to or visited as an address e.g. country, city, street address if applicable. At least, address must contain the country."
* value[x] only Address
* value[x] MS
* value[x].use MS
* value[x].type MS
* value[x].line MS
* value[x].city MS
* value[x].district MS
* value[x].state MS
* value[x].state from UspsTwoLetterAlphabeticCodes (preferred)
* value[x].state ^binding.description = "USPS Two Letter Alphabetic Codes"
* value[x].postalCode MS
* value[x].country 1..1 MS