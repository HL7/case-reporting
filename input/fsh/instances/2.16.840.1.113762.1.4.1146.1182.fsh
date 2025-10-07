Instance: 2.16.840.1.113762.1.4.1146.1182
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1182"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1182"
* version = "1.0.0"
* name = "PowassanVirusDiseaseTestsforPowassanVirusAntibodyQuantitative"
* title = "Powassan Virus Disease (Tests for Powassan Virus Antibody [Quantitative])"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Powassan Virus Disease (Tests for Powassan Virus Antibody [Quantitative])"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#416707008
* useContext[=].valueCodeableConcept.text = "Powassan encephalitis virus infection (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #29564-2
* compose.include.concept[=].display = "Powassan virus IgG Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #30177-0
* compose.include.concept[=].display = "Powassan virus IgG Ab [Titer] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #31573-9
* compose.include.concept[=].display = "Powassan virus IgG Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #31574-7
* compose.include.concept[=].display = "Powassan virus IgG Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #40504-3
* compose.include.concept[=].display = "Powassan virus Ab [Titer] in Serum by Complement fixation"
* compose.include.concept[+].code = #40513-4
* compose.include.concept[=].display = "Powassan virus Ab [Titer] in Serum by Hemagglutination inhibition"
* compose.include.concept[+].code = #42973-8
* compose.include.concept[=].display = "Powassan virus IgG Ab [Titer] in Specimen"
* compose.include.concept[+].code = #42974-6
* compose.include.concept[=].display = "Powassan virus IgG Ab [Titer] in Serum"
* compose.include.concept[+].code = #42975-3
* compose.include.concept[=].display = "Powassan virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #95647-4
* compose.include.concept[=].display = "Powassan virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #30179-6
* compose.include.concept[=].display = "Powassan virus IgM Ab [Titer] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #31575-4
* compose.include.concept[=].display = "Powassan virus IgM Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #31576-2
* compose.include.concept[=].display = "Powassan virus IgM Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #42971-2
* compose.include.concept[=].display = "Powassan virus IgM Ab [Titer] in Specimen"
* compose.include.concept[+].code = #42972-0
* compose.include.concept[=].display = "Powassan virus IgM Ab [Titer] in Serum"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29564-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #30177-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31573-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31574-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40504-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40513-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42973-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42974-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42975-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95647-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #30179-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31575-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31576-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42971-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42972-0