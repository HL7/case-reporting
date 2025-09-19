Profile: USPublicHealthCodeSystem
Parent: CodeSystem
Id: us-ph-codesystem
Title: "US Public Health CodeSystem"
Description: "This profile describes the US Public Health CodeSystem."




* . ^short = "US Public Health CodeSystem"
* property MS
* property.extension contains USPublicHealthCodeSystemPropertyBindingExtension named binding 0..1 MS
* property.extension[binding] ^short = "What values are allowed"
* property.extension[binding] ^definition = "A reference to a CodeSystem or ValueSet that establishes the allowable values for a code system property."