ValueSet: ValueSetAnthraxAntibodyExample
Id: 2.16.840.1.113762.1.4.1146.481-example
Title: "Anthrax (Tests for Bacillis anthracis Antibody)"
Description: "Anthrax (Tests for Bacillis anthracis Antibody)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.481-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.481"


* insert rsValueSetRequired

* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#409498004
* ^useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $loinc#22860-1 "Bacillus anthracis Ab [Presence] in Serum"
* $loinc#22861-9 "Bacillus anthracis Ab [Presence] in Serum by Immune diffusion (ID)"
* $loinc#22862-7 "Bacillus anthracis Ab [Presence] in Serum by Agglutination"
* $loinc#22863-5 "Bacillus anthracis Ab [Presence] in Serum by Immunoassay"
* $loinc#22864-3 "Bacillus anthracis Ab [Presence] in Serum by Complement fixation"
* $loinc#11467-8 "Bacillus anthracis Ab [Units/volume] in Serum by Immunoblot"
* $loinc#11468-6 "Bacillus anthracis Ab [Units/volume] in Specimen by Immunofluorescence"
* $loinc#22109-3 "Bacillus anthracis Ab [Units/volume] in Specimen"
* $loinc#22859-3 "Bacillus anthracis Ab [Titer] in Serum"
* $loinc#22865-0 "Bacillus anthracis Ab [Titer] in Serum by Immune diffusion (ID)"
* $loinc#5055-9 "Bacillus anthracis Ab [Units/volume] in Serum by Hemagglutination"
* $loinc#7814-7 "Bacillus anthracis Ab [Units/volume] in Serum"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22860-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22861-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22862-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22863-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22864-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #11467-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #11468-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22109-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22859-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22865-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #5055-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #7814-7
