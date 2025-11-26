ValueSet: ValueSetEnterococcusFaecOrgSubExample
Id: 2.16.840.1.113762.1.4.1146.1469-example
Title: "Enterococcus faecium or E. faecalis (Organism or Substance in Lab Results)"
Description: "Enterococcus faecium or E. faecalis (Organism or Substance in Lab Results)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1469-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1469"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#406575008
* ^useContext[=].valueCodeableConcept.text = "Infection caused by vancomycin resistant enterococcus (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#416397000 "Enterococcus faecalis variant (organism)"
* $sct#708244002 "Deoxyribonucleic acid of Enterococcus faecalis (substance)"
* $sct#708245001 "Deoxyribonucleic acid of Enterococcus faecium (substance)"
* $sct#712664000 "Vancomycin intermediate Enterococcus faecalis (organism)"
* $sct#712666003 "Vancomycin intermediate Enterococcus faecium (organism)"
* $sct#78065002 "Enterococcus faecalis (organism)"
* $sct#782956001 "Vancomycin susceptible Enterococcus faecium (organism)"
* $sct#782958000 "Vancomycin susceptible Enterococcus faecalis (organism)"
* $sct#90272000 "Enterococcus faecium (organism)"
* $sct#928051771000087103 "Enterococcus faecalis type 2 (organism)"
* $sct#707768008 "Enterococcus faecium genotype vanA (organism)"
* $sct#707769000 "Enterococcus faecium genotype vanB (organism)"
* $sct#712663006 "Vancomycin resistant Enterococcus faecalis (organism)"
* $sct#712665004 "Vancomycin resistant Enterococcus faecium (organism)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #416397000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #708244002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #708245001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #712664000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #712666003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #78065002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #782956001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #782958000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #90272000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #928051771000087103
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #707768008
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #707769000
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #712663006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #712665004
