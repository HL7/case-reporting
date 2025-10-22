CodeSystem: USPublicHealthUsageContextType
Id: us-ph-usage-context-type
Title: "US Public Health Usage Context Type"
Description: "This code system contains codes that identify the use context type of a ValueSet or Library."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-codesystem"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-10-26"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^caseSensitive = true
* ^content = #complete
* #priority "Priority" "The priority designation of the reporting specifciation release (e.g. Routine, Emergent)."
* #reporting "Reporting" "The reporting workflow step in which this artifact should be used."
* #specification-type "Specification Type" "The type of specification this resource represents (e.g. Program Specification, or ValueSet Library)."