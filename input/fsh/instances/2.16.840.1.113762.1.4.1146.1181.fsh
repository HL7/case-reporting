Instance: 2.16.840.1.113762.1.4.1146.1181
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1181"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1181"
* version = "1.0.0"
* name = "EasternEquineEncephalitisVirusDiseaseTestsforEasternEquineEncephalitisVirusAntibodyQuantitative"
* title = "Eastern Equine Encephalitis Virus Disease (Tests for Eastern Equine Encephalitis Virus Antibody [Quantitative])"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Eastern Equine Encephalitis Virus Disease (Tests for Eastern Equine Encephalitis Virus Antibody [Quantitative])"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#416925005
* useContext[=].valueCodeableConcept.text = "Eastern equine encephalitis virus infection (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #10896-9
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #10897-7
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #13228-2
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #13918-8
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #20795-1
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #22257-0
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #22258-8
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #22259-6
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Titer] in Serum"
* compose.include.concept[+].code = #23042-5
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Hemagglutination inhibition"
* compose.include.concept[+].code = #24213-1
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence --1st specimen"
* compose.include.concept[+].code = #24214-9
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence --2nd specimen"
* compose.include.concept[+].code = #24287-5
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum --1st specimen"
* compose.include.concept[+].code = #24288-3
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum --2nd specimen"
* compose.include.concept[+].code = #34723-7
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #38764-7
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #43329-2
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Serum by Complement fixation"
* compose.include.concept[+].code = #5134-2
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #7860-0
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgG Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #95654-0
* compose.include.concept[=].display = "Eastern equine encephalitis virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #10898-5
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #10899-3
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #13229-0
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #22260-4
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #22261-2
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Titer] in Serum"
* compose.include.concept[+].code = #38763-9
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #43330-0
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunoassay"
* compose.include.concept[+].code = #7861-8
* compose.include.concept[=].display = "Eastern equine encephalitis virus IgM Ab [Units/volume] in Serum"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10896-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10897-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #13228-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #13918-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #20795-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22257-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22258-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22259-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #23042-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24213-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24214-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24287-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24288-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #34723-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #38764-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43329-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #5134-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #7860-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95654-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10898-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10899-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #13229-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22260-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22261-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #38763-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43330-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #7861-8