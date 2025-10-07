Instance: 2.16.840.1.113762.1.4.1146.409
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.409"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.409"
* version = "1.0.0"
* name = "HepatitisCVirusInfectionOrganismorSubstanceinLabResults"
* title = "Hepatitis C Virus Infection (Organism or Substance in Lab Results)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Hepatitis C Virus Infection (Organism or Substance in Lab Results)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#50711007
* useContext[=].valueCodeableConcept.text = "Viral hepatitis type C (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #121022006
* compose.include.concept[=].display = "Antigen of Hepacivirus C (substance)"
* compose.include.concept[+].code = #121185009
* compose.include.concept[=].display = "Ribosomal ribonucleic acid of Hepatitis C virus (substance)"
* compose.include.concept[+].code = #121204002
* compose.include.concept[=].display = "Ribonucleic acid of Hepatitis C virus (substance)"
* compose.include.concept[+].code = #371140008
* compose.include.concept[=].display = "Polymerase chain reaction positive for hepatitis C viral ribonucleic acid genotype 1A (finding)"
* compose.include.concept[+].code = #603413005
* compose.include.concept[=].display = "Hepatitis C virus subtype 1a (organism)"
* compose.include.concept[+].code = #603414004
* compose.include.concept[=].display = "Hepatitis C virus subtype 1b (organism)"
* compose.include.concept[+].code = #603415003
* compose.include.concept[=].display = "Hepatitis C virus subtype 2a (organism)"
* compose.include.concept[+].code = #603416002
* compose.include.concept[=].display = "Hepatitis C virus subtype 2b (organism)"
* compose.include.concept[+].code = #603417006
* compose.include.concept[=].display = "Hepatitis C virus subtype 3a (organism)"
* compose.include.concept[+].code = #603418001
* compose.include.concept[=].display = "Hepatitis C virus subtype 3b (organism)"
* compose.include.concept[+].code = #603419009
* compose.include.concept[=].display = "Hepatitis C virus subtype 5a (organism)"
* compose.include.concept[+].code = #603420003
* compose.include.concept[=].display = "Hepatitis C virus subtype 6a (organism)"
* compose.include.concept[+].code = #603421004
* compose.include.concept[=].display = "Hepatitis C virus subtype 4a (organism)"
* compose.include.concept[+].code = #603422006
* compose.include.concept[=].display = "Hepatitis C virus genotype 1 (organism)"
* compose.include.concept[+].code = #603423001
* compose.include.concept[=].display = "Hepatitis C virus genotype 2 (organism)"
* compose.include.concept[+].code = #603424007
* compose.include.concept[=].display = "Hepatitis C virus genotype 3 (organism)"
* compose.include.concept[+].code = #603425008
* compose.include.concept[=].display = "Hepatitis C virus genotype 4 (organism)"
* compose.include.concept[+].code = #603426009
* compose.include.concept[=].display = "Hepatitis C virus genotype 5 (organism)"
* compose.include.concept[+].code = #603427000
* compose.include.concept[=].display = "Hepatitis C virus genotype 6 (organism)"
* compose.include.concept[+].code = #603428005
* compose.include.concept[=].display = "Hepatitis C virus subtype 1c (organism)"
* compose.include.concept[+].code = #603429002
* compose.include.concept[=].display = "Hepatitis C virus subtype 2c (organism)"
* compose.include.concept[+].code = #603430007
* compose.include.concept[=].display = "Hepatitis C virus subtype 4b (organism)"
* compose.include.concept[+].code = #603431006
* compose.include.concept[=].display = "Hepatitis C virus subtype 4c (organism)"
* compose.include.concept[+].code = #603432004
* compose.include.concept[=].display = "Hepatitis C virus subtype 4d (organism)"
* compose.include.concept[+].code = #603433009
* compose.include.concept[=].display = "Hepatitis C virus subtype 4e (organism)"
* compose.include.concept[+].code = #62944002
* compose.include.concept[=].display = "Hepatitis C virus (organism)"
* compose.include.concept[+].code = #711331006
* compose.include.concept[=].display = "Polymerase chain reaction test for Hepatitis C positive (finding)"
* compose.include.concept[+].code = #726592002
* compose.include.concept[=].display = "Antigen of Hepatitis C virus core (substance)"
* compose.include.concept[+].code = #781245007
* compose.include.concept[=].display = "Hepatitis C virus genotype 4h (organism)"
* compose.include.concept[+].code = #781276001
* compose.include.concept[=].display = "Hepatitis C virus genotype 3c (organism)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121022006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121185009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121204002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #371140008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603413005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603414004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603415003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603416002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603417006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603418001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603419009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603420003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603421004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603422006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603423001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603424007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603425008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603426009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603427000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603428005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603429002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603430007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603431006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603432004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #603433009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #62944002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #711331006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #726592002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #781245007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #781276001