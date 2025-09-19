Extension: USPublicHealthCodeSystemPropertyBindingExtension
Id: us-ph-codesystem-property-binding-extension
Title: "US Public Health CodeSystem Property Binding Extension"
Description: "A reference to a CodeSystem or ValueSet that establishes the allowable values for a code system property"
Context: CodeSystem.property
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ^short = "US Public Health CodeSystem Property Binding Extension"
* . ^definition = "This extension represents an US Public Health CodeSystem Property Binding"
* value[x] 1..
* value[x] only canonical