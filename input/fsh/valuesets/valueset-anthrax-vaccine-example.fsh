ValueSet: ValueSetAnthraxVaccineExample
Id: 2.16.840.1.113762.1.4.1146.1082-example
Title: "Anthrax Vaccine (RXNORM)"
Description: "Anthrax Vaccine (RXNORM)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://example.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1082-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1082"


* insert rsValueSetRequired

* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#409498004
* ^useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $rxnorm#832679 "Bacillus anthracis strain V770-NP1-R antigens 0.1 MG/ML Injectable Suspension"
* $rxnorm#832682 "Bacillus anthracis strain V770-NP1-R antigens 0.1 MG/ML Injectable Suspension [Biothrax]"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #832679
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #832682
