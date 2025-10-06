Extension: USPublicHealthInformationRecipientExtension
Id: us-ph-information-recipient-extension
Title: "US Public Health Information Recipient Extension"
Description: "This extension represents a US Public Health Information Recipient"
Context: Composition
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* value[x] only Reference(USCorePractitionerProfile or USPublicHealthPractitionerRole or USPublicHealthOrganization)
* value[x] MS