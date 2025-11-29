ValueSet: ValueSetCaliforniaVirusAntibodyExample
Id: 2.16.840.1.113762.1.4.1146.1184-example
Title: "California Serogroup Virus Diseases (Tests for California Serogroup Virus Antibody [Quantitative])"
Description: "California Serogroup Virus Diseases (Tests for California Serogroup Virus Antibody [Quantitative])"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"


* ^url = "http://example.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1184-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1184"

* insert rsValueSetRequired

* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#418182000
* ^useContext[=].valueCodeableConcept.text = "Disease caused by California serogroup virus (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $loinc#10904-1 "La Crosse virus IgG Ab [Titer] in Serum by Immunofluorescence"
* $loinc#17036-5 "La Crosse virus Ab [Titer] in Serum"
* $loinc#17037-3 "La Crosse virus Ab [Titer] in Cerebral spinal fluid"
* $loinc#17038-1 "La Crosse virus IgG Ab [Titer] in Serum"
* $loinc#22373-5 "La Crosse virus IgG Ab [Titer] in Cerebral spinal fluid"
* $loinc#24209-9 "La Crosse virus Ab [Titer] in Serum by Immunofluorescence --1st specimen"
* $loinc#24210-7 "La Crosse virus Ab [Titer] in Serum by Immunofluorescence --2nd specimen"
* $loinc#24283-4 "La Crosse virus Ab [Titer] in Serum --1st specimen"
* $loinc#24284-2 "La Crosse virus Ab [Titer] in Serum --2nd specimen"
* $loinc#29561-8 "Jamestown canyon virus IgG Ab [Titer] in Serum by Immunofluorescence"
* $loinc#29562-6 "Jamestown canyon virus neutralizing antibody [Titer] in Serum by Neutralization test"
* $loinc#29563-4 "La Crosse virus neutralizing antibody [Titer] in Serum by Neutralization test"
* $loinc#29782-0 "Trivittatus virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#29788-7 "Jamestown canyon virus IgG Ab [Units/volume] in Specimen by Immunofluorescence"
* $loinc#29795-2 "Trivittatus virus neutralizing antibody [Titer] in Cerebral spinal fluid by Neutralization test"
* $loinc#29801-8 "Jamestown canyon virus IgG Ab [Units/volume] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#29808-3 "Trivittatus virus neutralizing antibody [Titer] in Serum by Neutralization test"
* $loinc#29814-1 "Jamestown canyon virus IgG Ab [Units/volume] in Serum by Immunofluorescence"
* $loinc#29821-6 "Trivittatus virus Ab [Titer] in Specimen"
* $loinc#29827-3 "Jamestown canyon virus IgG Ab [Units/volume] in Specimen"
* $loinc#29834-9 "Trivittatus virus Ab [Titer] in Cerebral spinal fluid"
* $loinc#29839-8 "Jamestown canyon virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#29846-3 "Trivittatus virus Ab [Titer] in Serum"
* $loinc#29851-3 "Jamestown canyon virus IgG Ab [Units/volume] in Serum"
* $loinc#30174-7 "Jamestown canyon virus IgG Ab [Titer] in Specimen by Immunofluorescence"
* $loinc#31446-8 "Jamestown canyon virus Ab [Units/volume] in Serum"
* $loinc#31448-4 "La Crosse virus Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#31450-0 "La Crosse virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#31688-5 "Trivittatus virus Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#31689-3 "Trivittatus virus Ab [Units/volume] in Serum"
* $loinc#31690-1 "Trivittatus virus Ab [Units/volume] in Specimen"
* $loinc#35694-9 "California encephalitis virus IgG Ab [Titer] in Serum"
* $loinc#35696-4 "California encephalitis virus Ab [Titer] in Cerebral spinal fluid"
* $loinc#35697-2 "La Crosse virus Ab [Titer] in Serum by Complement fixation"
* $loinc#35709-5 "La Crosse virus Ab [Titer] in Body fluid"
* $loinc#40506-8 "Jamestown canyon virus Ab [Titer] in Serum by Immunofluorescence"
* $loinc#40507-6 "Jamestown canyon virus Ab [Titer] in Serum by Hemagglutination inhibition"
* $loinc#40510-0 "Snowshoe hare virus Ab [Titer] in Serum by Immunofluorescence"
* $loinc#40511-8 "Snowshoe hare virus Ab [Titer] in Serum by Hemagglutination inhibition"
* $loinc#42952-2 "Snowshoe hare virus Ab [Titer] in Serum"
* $loinc#43004-1 "Jamestown canyon virus IgG Ab [Titer] in Specimen"
* $loinc#43005-8 "Jamestown canyon virus IgG Ab [Titer] in Serum"
* $loinc#43006-6 "Jamestown canyon virus Ab [Titer] in Serum"
* $loinc#43132-0 "California encephalitis virus Ab [Units/volume] in Serum Qualitative"
* $loinc#43931-5 "California encephalitis virus Ab [Titer] in Serum"
* $loinc#44746-6 "La Crosse virus Ab [Units/volume] in Serum by Immunofluorescence"
* $loinc#44748-2 "La Crosse virus Ab [Units/volume] in Serum by Immunoassay"
* $loinc#48716-5 "La Crosse virus IgG Ab [Units/volume] in Serum by Immunoassay"
* $loinc#49138-1 "California encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#49140-7 "California encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence"
* $loinc#49194-4 "California encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid"
* $loinc#49195-1 "California encephalitis virus IgG Ab [Units/volume] in Serum"
* $loinc#5073-2 "La Crosse virus Ab [Units/volume] in Serum"
* $loinc#7940-0 "La Crosse virus IgG Ab [Units/volume] in Serum"
* $loinc#9538-0 "La Crosse virus Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#9539-8 "La Crosse virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#95637-5 "Jamestown canyon virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#95638-3 "California encephalitis virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#95642-5 "Snowshoe hare virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#95653-2 "La Crosse virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#10905-8 "La Crosse virus IgM Ab [Titer] in Serum by Immunofluorescence"
* $loinc#17039-9 "La Crosse virus IgM Ab [Titer] in Serum"
* $loinc#22375-0 "La Crosse virus IgM Ab [Titer] in Cerebral spinal fluid"
* $loinc#29786-1 "Jamestown canyon virus IgM Ab [Units/volume] in Specimen by Immunofluorescence"
* $loinc#29799-4 "Jamestown canyon virus IgM Ab [Units/volume] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#29812-5 "Jamestown canyon virus IgM Ab [Units/volume] in Serum by Immunofluorescence"
* $loinc#29825-7 "Jamestown canyon virus IgM Ab [Units/volume] in Specimen"
* $loinc#29837-2 "Jamestown canyon virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#29849-7 "Jamestown canyon virus IgM Ab [Units/volume] in Serum"
* $loinc#31451-8 "La Crosse virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#35695-6 "California encephalitis virus IgM Ab [Titer] in Serum"
* $loinc#40508-4 "Jamestown canyon virus IgM Ab [Titer] in Serum by Neutralization test"
* $loinc#40509-2 "Snowshoe hare virus IgM Ab [Titer] in Serum by Neutralization test"
* $loinc#42953-0 "Snowshoe hare virus IgM Ab [Titer] in Serum"
* $loinc#43003-3 "Jamestown canyon virus IgM Ab [Titer] in Serum"
* $loinc#44822-5 "La Crosse virus IgM Ab [Titer] in Serum by Immunoassay"
* $loinc#49139-9 "California encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#49141-5 "California encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence"
* $loinc#49193-6 "California encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid"
* $loinc#62946-9 "Jamestown canyon virus IgM Ab [Titer] in Body fluid by Immunofluorescence"
* $loinc#7941-8 "La Crosse virus IgM Ab [Units/volume] in Serum"
* $loinc#9540-6 "La Crosse virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10904-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #17036-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #17037-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #17038-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22373-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24209-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24210-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24283-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24284-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29561-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29562-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29563-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29782-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29788-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29795-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29801-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29808-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29814-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29821-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29827-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29834-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29839-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29846-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29851-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #30174-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31446-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31448-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31450-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31688-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31689-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31690-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #35694-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #35696-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #35697-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #35709-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40506-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40507-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40510-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40511-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42952-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43004-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43005-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43006-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43132-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43931-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #44746-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #44748-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #48716-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49138-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49140-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49194-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49195-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #5073-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #7940-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #9538-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #9539-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95637-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95638-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95642-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95653-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10905-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #17039-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22375-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29786-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29799-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29812-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29825-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29837-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29849-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31451-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #35695-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40508-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40509-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42953-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43003-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #44822-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49139-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49141-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #49193-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #62946-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #7941-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #9540-6
