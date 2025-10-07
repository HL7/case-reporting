Instance: 2.16.840.1.113762.1.4.1146.481
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.481"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.481"
* version = "1.0.0"
* name = "AnthraxTestsforBacillisanthracisAntibody"
* title = "Anthrax (Tests for Bacillis anthracis Antibody)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Anthrax (Tests for Bacillis anthracis Antibody)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#409498004
* useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #22860-1
* compose.include.concept[=].display = "Bacillus anthracis Ab [Presence] in Serum"
* compose.include.concept[+].code = #22861-9
* compose.include.concept[=].display = "Bacillus anthracis Ab [Presence] in Serum by Immune diffusion (ID)"
* compose.include.concept[+].code = #22862-7
* compose.include.concept[=].display = "Bacillus anthracis Ab [Presence] in Serum by Agglutination"
* compose.include.concept[+].code = #22863-5
* compose.include.concept[=].display = "Bacillus anthracis Ab [Presence] in Serum by Immunoassay"
* compose.include.concept[+].code = #22864-3
* compose.include.concept[=].display = "Bacillus anthracis Ab [Presence] in Serum by Complement fixation"
* compose.include.concept[+].code = #11467-8
* compose.include.concept[=].display = "Bacillus anthracis Ab [Units/volume] in Serum by Immunoblot"
* compose.include.concept[+].code = #11468-6
* compose.include.concept[=].display = "Bacillus anthracis Ab [Units/volume] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #22109-3
* compose.include.concept[=].display = "Bacillus anthracis Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #22859-3
* compose.include.concept[=].display = "Bacillus anthracis Ab [Titer] in Serum"
* compose.include.concept[+].code = #22865-0
* compose.include.concept[=].display = "Bacillus anthracis Ab [Titer] in Serum by Immune diffusion (ID)"
* compose.include.concept[+].code = #5055-9
* compose.include.concept[=].display = "Bacillus anthracis Ab [Units/volume] in Serum by Hemagglutination"
* compose.include.concept[+].code = #7814-7
* compose.include.concept[=].display = "Bacillus anthracis Ab [Units/volume] in Serum"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22860-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22861-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22862-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22863-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22864-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #11467-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #11468-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22109-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22859-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22865-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #5055-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #7814-7