Instance: 2.16.840.1.113762.1.4.1146.1184
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1184"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1184"
* version = "1.0.0"
* name = "CaliforniaSerogroupVirusDiseasesTestsforCaliforniaSerogroupVirusAntibodyQuantitative"
* title = "California Serogroup Virus Diseases (Tests for California Serogroup Virus Antibody [Quantitative])"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "California Serogroup Virus Diseases (Tests for California Serogroup Virus Antibody [Quantitative])"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#418182000
* useContext[=].valueCodeableConcept.text = "Disease caused by California serogroup virus (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #10904-1
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #17036-5
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #17037-3
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #17038-1
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Titer] in Serum"
* compose.include.concept[+].code = #22373-5
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #24209-9
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum by Immunofluorescence --1st specimen"
* compose.include.concept[+].code = #24210-7
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum by Immunofluorescence --2nd specimen"
* compose.include.concept[+].code = #24283-4
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum --1st specimen"
* compose.include.concept[+].code = #24284-2
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum --2nd specimen"
* compose.include.concept[+].code = #29561-8
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #29562-6
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #29563-4
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #29782-0
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #29788-7
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #29795-2
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Cerebral spinal fluid by Neutralization test"
* compose.include.concept[+].code = #29801-8
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #29808-3
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #29814-1
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #29821-6
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Specimen"
* compose.include.concept[+].code = #29827-3
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #29834-9
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #29839-8
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #29846-3
* compose.include.concept[=].display = "Trivittatus virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #29851-3
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #30174-7
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Titer] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #31446-8
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #31448-4
* compose.include.concept[=].display = "La Crosse virus Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #31450-0
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #31688-5
* compose.include.concept[=].display = "Trivittatus virus Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #31689-3
* compose.include.concept[=].display = "Trivittatus virus Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #31690-1
* compose.include.concept[=].display = "Trivittatus virus Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #35694-9
* compose.include.concept[=].display = "California encephalitis virus IgG Ab [Titer] in Serum"
* compose.include.concept[+].code = #35696-4
* compose.include.concept[=].display = "California encephalitis virus Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #35697-2
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Serum by Complement fixation"
* compose.include.concept[+].code = #35709-5
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Body fluid"
* compose.include.concept[+].code = #40506-8
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #40507-6
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Titer] in Serum by Hemagglutination inhibition"
* compose.include.concept[+].code = #40510-0
* compose.include.concept[=].display = "Snowshoe hare virus Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #40511-8
* compose.include.concept[=].display = "Snowshoe hare virus Ab [Titer] in Serum by Hemagglutination inhibition"
* compose.include.concept[+].code = #42952-2
* compose.include.concept[=].display = "Snowshoe hare virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #43004-1
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Titer] in Specimen"
* compose.include.concept[+].code = #43005-8
* compose.include.concept[=].display = "Jamestown canyon virus IgG Ab [Titer] in Serum"
* compose.include.concept[+].code = #43006-6
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #43132-0
* compose.include.concept[=].display = "California encephalitis virus Ab [Units/volume] in Serum Qualitative"
* compose.include.concept[+].code = #43931-5
* compose.include.concept[=].display = "California encephalitis virus Ab [Titer] in Serum"
* compose.include.concept[+].code = #44746-6
* compose.include.concept[=].display = "La Crosse virus Ab [Units/volume] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #44748-2
* compose.include.concept[=].display = "La Crosse virus Ab [Units/volume] in Serum by Immunoassay"
* compose.include.concept[+].code = #48716-5
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Units/volume] in Serum by Immunoassay"
* compose.include.concept[+].code = #49138-1
* compose.include.concept[=].display = "California encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #49140-7
* compose.include.concept[=].display = "California encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #49194-4
* compose.include.concept[=].display = "California encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #49195-1
* compose.include.concept[=].display = "California encephalitis virus IgG Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #5073-2
* compose.include.concept[=].display = "La Crosse virus Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #7940-0
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #9538-0
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #9539-8
* compose.include.concept[=].display = "La Crosse virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #95637-5
* compose.include.concept[=].display = "Jamestown canyon virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #95638-3
* compose.include.concept[=].display = "California encephalitis virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #95642-5
* compose.include.concept[=].display = "Snowshoe hare virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #95653-2
* compose.include.concept[=].display = "La Crosse virus Ab [Titer] in Specimen by Neutralization test"
* compose.include.concept[+].code = #10905-8
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #17039-9
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Titer] in Serum"
* compose.include.concept[+].code = #22375-0
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #29786-1
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Specimen by Immunofluorescence"
* compose.include.concept[+].code = #29799-4
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #29812-5
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #29825-7
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Specimen"
* compose.include.concept[+].code = #29837-2
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #29849-7
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #31451-8
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* compose.include.concept[+].code = #35695-6
* compose.include.concept[=].display = "California encephalitis virus IgM Ab [Titer] in Serum"
* compose.include.concept[+].code = #40508-4
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #40509-2
* compose.include.concept[=].display = "Snowshoe hare virus IgM Ab [Titer] in Serum by Neutralization test"
* compose.include.concept[+].code = #42953-0
* compose.include.concept[=].display = "Snowshoe hare virus IgM Ab [Titer] in Serum"
* compose.include.concept[+].code = #43003-3
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Titer] in Serum"
* compose.include.concept[+].code = #44822-5
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Titer] in Serum by Immunoassay"
* compose.include.concept[+].code = #49139-9
* compose.include.concept[=].display = "California encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #49141-5
* compose.include.concept[=].display = "California encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence"
* compose.include.concept[+].code = #49193-6
* compose.include.concept[=].display = "California encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid"
* compose.include.concept[+].code = #62946-9
* compose.include.concept[=].display = "Jamestown canyon virus IgM Ab [Titer] in Body fluid by Immunofluorescence"
* compose.include.concept[+].code = #7941-8
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #9540-6
* compose.include.concept[=].display = "La Crosse virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10904-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #17036-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #17037-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #17038-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22373-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24209-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24210-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24283-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #24284-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29561-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29562-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29563-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29782-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29788-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29795-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29801-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29808-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29814-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29821-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29827-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29834-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29839-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29846-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29851-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #30174-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31446-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31448-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31450-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31688-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31689-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31690-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #35694-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #35696-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #35697-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #35709-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40506-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40507-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40510-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40511-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42952-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43004-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43005-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43006-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43132-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43931-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #44746-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #44748-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #48716-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49138-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49140-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49194-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49195-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #5073-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #7940-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #9538-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #9539-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95637-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95638-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95642-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #95653-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #10905-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #17039-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #22375-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29786-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29799-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29812-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29825-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29837-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #29849-7
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #31451-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #35695-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40508-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #40509-2
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #42953-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #43003-3
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #44822-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49139-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49141-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #49193-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #62946-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #7941-8
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #9540-6