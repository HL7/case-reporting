Instance: 2.16.840.1.113762.1.4.1146.480
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.480"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.480"
* version = "1.0.0"
* name = "AnthraxTestsforBacillisanthracisAntigen"
* title = "Anthrax (Tests for Bacillis anthracis Antigen)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Anthrax (Tests for Bacillis anthracis Antigen)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#409498004
* useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #22866-8
* compose.include.concept[=].display = "Bacillus anthracis Ag [Presence] in Tissue by Immunofluorescence"
* compose.include.concept[+].code = #22867-6
* compose.include.concept[=].display = "Bacillus anthracis Ag [Presence] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #31726-3
* compose.include.concept[=].display = "Bacillus anthracis Ag [Presence] in Specimen"
* compose.include.concept[+].code = #44269-9
* compose.include.concept[=].display = "Bacillus anthracis cell wall Ag [Presence] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #44270-7
* compose.include.concept[=].display = "Bacillus anthracis spore Ag [Presence] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #51976-9
* compose.include.concept[=].display = "Bacillus anthracis capsule Ag [Presence] in Specimen by Immunofluorescence"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22866-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22867-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31726-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #44269-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #44270-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #51976-9