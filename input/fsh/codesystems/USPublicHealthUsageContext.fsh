CodeSystem: $USPublicHealthUsageContext
Id: us-ph-usage-context
Title: "US Public Health Usage Context"
Description: "This code system contains codes that identify the use context of a ValueSet or Library."
* ^meta.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-codesystem"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-10-26"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^caseSensitive = true
* ^content = #complete
* #emergent "Emergent" "The artifact is an emergent reporting specification program release."
* #program "Program" "The artifact is a reporting specification program."
* #routine "Routine" "The artifact is a routine reporting specification program release."
* #supplemental "Supplemental" "The artifact is applicable only when determining whether an event is suspected reportable."
* #triggering "Triggering" "The artifact is applicable when identifying a triggering event."
* #value-set-library "ValueSet Library" "The artifact is a ValueSet Library."