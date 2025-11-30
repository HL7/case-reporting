ValueSet: ValueSetHepCVirusOrgSubExample
Id: 2.16.840.1.113762.1.4.1146.409-example
Title: "Hepatitis C Virus Infection (Organism or Substance in Lab Results)"
Description: "Hepatitis C Virus Infection (Organism or Substance in Lab Results)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.409-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.409"

* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#50711007
* ^useContext[=].valueCodeableConcept.text = "Viral hepatitis type C (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#121022006 "Antigen of Hepacivirus C (substance)"
* $sct#121185009 "Ribosomal ribonucleic acid of Hepatitis C virus (substance)"
* $sct#121204002 "Ribonucleic acid of Hepatitis C virus (substance)"
* $sct#371140008 "Hepatitis C viral ribonucleic acid genotype 1A detected by polymerase chain reaction (finding)"
* $sct#603413005 "Hepatitis C virus subtype 1a (organism)"
* $sct#603414004 "Hepatitis C virus subtype 1b (organism)"
* $sct#603415003 "Hepatitis C virus subtype 2a (organism)"
* $sct#603416002 "Hepatitis C virus subtype 2b (organism)"
* $sct#603417006 "Hepatitis C virus subtype 3a (organism)"
* $sct#603418001 "Hepatitis C virus subtype 3b (organism)"
* $sct#603419009 "Hepatitis C virus subtype 5a (organism)"
* $sct#603420003 "Hepatitis C virus subtype 6a (organism)"
* $sct#603421004 "Hepatitis C virus subtype 4a (organism)"
* $sct#603422006 "Hepatitis C virus genotype 1 (organism)"
* $sct#603423001 "Hepatitis C virus genotype 2 (organism)"
* $sct#603424007 "Hepatitis C virus genotype 3 (organism)"
* $sct#603425008 "Hepatitis C virus genotype 4 (organism)"
* $sct#603426009 "Hepatitis C virus genotype 5 (organism)"
* $sct#603427000 "Hepatitis C virus genotype 6 (organism)"
* $sct#603428005 "Hepatitis C virus subtype 1c (organism)"
* $sct#603429002 "Hepatitis C virus subtype 2c (organism)"
* $sct#603430007 "Hepatitis C virus subtype 4b (organism)"
* $sct#603431006 "Hepatitis C virus subtype 4c (organism)"
* $sct#603432004 "Hepatitis C virus subtype 4d (organism)"
* $sct#603433009 "Hepatitis C virus subtype 4e (organism)"
* $sct#62944002 "Hepatitis C virus (organism)"
* $sct#711331006 "Hepatitis C detected by polymerase chain reaction (finding)"
* $sct#726592002 "Antigen of Hepatitis C virus core (substance)"
* $sct#781245007 "Hepatitis C virus genotype 4h (organism)"
* $sct#781276001 "Hepatitis C virus genotype 3c (organism)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #121022006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #121185009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #121204002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #371140008
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603413005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603414004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603415003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603416002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603417006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603418001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603419009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603420003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603421004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603422006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603423001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603424007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603425008
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603426009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603427000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603428005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603429002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603430007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603431006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603432004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #603433009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #62944002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #711331006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #726592002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #781245007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #781276001
