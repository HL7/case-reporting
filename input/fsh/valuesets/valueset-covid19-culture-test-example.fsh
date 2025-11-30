ValueSet: ValueSetCOVID19CultureTestExample
Id: 2.16.840.1.113762.1.4.1146.1223-example
Title: "COVID_19 (Tests for SARS_CoV_2 by Culture and Identification Method)"
Description: "COVID_19 (Tests for SARS_CoV_2 by Culture and Identification Method)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"


* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1223-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1223"


* insert rsValueSetRequired

* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#840539006
* ^useContext[=].valueCodeableConcept.text = "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $loinc#94763-0 "SARS-CoV-2 (COVID-19) [Presence] in Specimen by Organism specific culture"
* $loinc#94764-8 "SARS-CoV-2 (COVID-19) whole genome [Nucleotide sequence] in Isolate or Specimen by Sequencing"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #94763-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #94764-8
