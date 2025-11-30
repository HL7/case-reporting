ValueSet: ValueSetAnthraxAntigenExample
Id: 2.16.840.1.113762.1.4.1146.480-example
Title: "Anthrax (Tests for Bacillis anthracis Antigen)"
Description: "Anthrax (Tests for Bacillis anthracis Antigen)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.480-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.480"


* insert rsValueSetRequired

* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#409498004
* ^useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $loinc#22866-8 "Bacillus anthracis Ag [Presence] in Tissue by Immunofluorescence"
* $loinc#22867-6 "Bacillus anthracis Ag [Presence] in Specimen by Immunofluorescence"
* $loinc#31726-3 "Bacillus anthracis Ag [Presence] in Specimen"
* $loinc#44269-9 "Bacillus anthracis cell wall Ag [Presence] in Specimen by Immunofluorescence"
* $loinc#44270-7 "Bacillus anthracis spore Ag [Presence] in Specimen by Immunofluorescence"
* $loinc#51976-9 "Bacillus anthracis capsule Ag [Presence] in Specimen by Immunofluorescence"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22866-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22867-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31726-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #44269-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #44270-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #51976-9
