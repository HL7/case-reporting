ValueSet: ValueSetHepBVirusOrgSubExample
Id: 2.16.840.1.113762.1.4.1146.408-example
Title: "Hepatitis B Virus Infection (Organism or Substance in Lab Results)"
Description: "Hepatitis B Virus Infection (Organism or Substance in Lab Results)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.408-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.408"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#66071002
* ^useContext[=].valueCodeableConcept.text = "Viral hepatitis type B (disorder)"
* ^useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#60498001
* ^useContext[=].valueCodeableConcept.text = "Congenital viral hepatitis B infection (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#121112003 "Deoxyribonucleic acid of Hepatitis B virus (substance)"
* $sct#121184008 "Ribosomal ribonucleic acid of Hepatitis B virus (substance)"
* $sct#13105002 "Antigen of Hepatitis B virus subtype ayr surface protein (substance)"
* $sct#22290004 "Antigen of Hepatitis B virus surface protein (substance)"
* $sct#303233001 "Antigen of Hepatitis B virus (substance)"
* $sct#39082004 "Antigen of Hepatitis B virus core protein (substance)"
* $sct#52680001 "Antigen of Hepatitis B virus subtype adr surface protein (substance)"
* $sct#60605004 "Antigen of Hepatitis B virus e protein (substance)"
* $sct#63350005 "Antigen of Hepatitis B virus subtype adw surface protein (substance)"
* $sct#703886001 "Hepatitis B virus genotype A (organism)"
* $sct#703887005 "Hepatitis B virus genotype B (organism)"
* $sct#703888000 "Hepatitis B virus genotype C (organism)"
* $sct#703889008 "Hepatitis B virus genotype D (organism)"
* $sct#703890004 "Hepatitis B virus genotype E (organism)"
* $sct#703891000 "Hepatitis B virus genotype F (organism)"
* $sct#703892007 "Hepatitis B virus genotype G (organism)"
* $sct#703893002 "Hepatitis B virus genotype H (organism)"
* $sct#708281003 "Deoxyribonucleic acid of Hepatitis B virus polymerase (substance)"
* $sct#716076002 "Antigen of Hepatitis B virus recombinant surface protein (substance)"
* $sct#73661005 "Antigen of Hepatitis B virus subtype ayw surface protein (substance)"
* $sct#81665004 "Hepatitis B virus (organism)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #121112003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #121184008
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #13105002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #22290004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #303233001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #39082004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #52680001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #60605004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #63350005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703886001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703887005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703888000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703889008
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703890004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703891000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703892007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703893002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #708281003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #716076002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #73661005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #81665004
