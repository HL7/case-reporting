Instance: 2.16.840.1.113762.1.4.1146.408
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.408"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.408"
* version = "1.0.0"
* name = "HepatitisBVirusInfectionOrganismorSubstanceinLabResults"
* title = "Hepatitis B Virus Infection (Organism or Substance in Lab Results)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Hepatitis B Virus Infection (Organism or Substance in Lab Results)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#66071002
* useContext[=].valueCodeableConcept.text = "Viral hepatitis type B (disorder)"
* useContext[+].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#60498001
* useContext[=].valueCodeableConcept.text = "Congenital viral hepatitis B infection (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #121112003
* compose.include.concept[=].display = "Deoxyribonucleic acid of Hepatitis B virus (substance)"
* compose.include.concept[+].code = #121184008
* compose.include.concept[=].display = "Ribosomal ribonucleic acid of Hepatitis B virus (substance)"
* compose.include.concept[+].code = #13105002
* compose.include.concept[=].display = "Antigen of Hepatitis B virus subtype ayr surface protein (substance)"
* compose.include.concept[+].code = #22290004
* compose.include.concept[=].display = "Antigen of Hepatitis B virus surface protein (substance)"
* compose.include.concept[+].code = #303233001
* compose.include.concept[=].display = "Antigen of Hepatitis B virus (substance)"
* compose.include.concept[+].code = #39082004
* compose.include.concept[=].display = "Antigen of Hepatitis B virus core protein (substance)"
* compose.include.concept[+].code = #52680001
* compose.include.concept[=].display = "Antigen of Hepatitis B virus subtype adr surface protein (substance)"
* compose.include.concept[+].code = #60605004
* compose.include.concept[=].display = "Antigen of Hepatitis B virus e protein (substance)"
* compose.include.concept[+].code = #63350005
* compose.include.concept[=].display = "Antigen of Hepatitis B virus subtype adw surface protein (substance)"
* compose.include.concept[+].code = #703886001
* compose.include.concept[=].display = "Hepatitis B virus genotype A (organism)"
* compose.include.concept[+].code = #703887005
* compose.include.concept[=].display = "Hepatitis B virus genotype B (organism)"
* compose.include.concept[+].code = #703888000
* compose.include.concept[=].display = "Hepatitis B virus genotype C (organism)"
* compose.include.concept[+].code = #703889008
* compose.include.concept[=].display = "Hepatitis B virus genotype D (organism)"
* compose.include.concept[+].code = #703890004
* compose.include.concept[=].display = "Hepatitis B virus genotype E (organism)"
* compose.include.concept[+].code = #703891000
* compose.include.concept[=].display = "Hepatitis B virus genotype F (organism)"
* compose.include.concept[+].code = #703892007
* compose.include.concept[=].display = "Hepatitis B virus genotype G (organism)"
* compose.include.concept[+].code = #703893002
* compose.include.concept[=].display = "Hepatitis B virus genotype H (organism)"
* compose.include.concept[+].code = #708281003
* compose.include.concept[=].display = "Deoxyribonucleic acid of Hepatitis B virus polymerase (substance)"
* compose.include.concept[+].code = #716076002
* compose.include.concept[=].display = "Antigen of Hepatitis B virus recombinant surface protein (substance)"
* compose.include.concept[+].code = #73661005
* compose.include.concept[=].display = "Antigen of Hepatitis B virus subtype ayw surface protein (substance)"
* compose.include.concept[+].code = #81665004
* compose.include.concept[=].display = "Hepatitis B virus (organism)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121112003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121184008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #13105002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #22290004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #303233001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #39082004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #52680001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #60605004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #63350005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703886001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703887005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703888000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703889008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703890004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703891000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703892007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703893002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #708281003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #716076002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #73661005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #81665004