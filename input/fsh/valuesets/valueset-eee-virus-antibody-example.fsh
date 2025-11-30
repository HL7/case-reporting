ValueSet: ValueSetEEEVirusAntibodyExample
Id: 2.16.840.1.113762.1.4.1146.1181-example
Title: "Eastern Equine Encephalitis Virus Disease (Tests for Eastern Equine Encephalitis Virus Antibody [Quantitative])"
Description: "Eastern Equine Encephalitis Virus Disease (Tests for Eastern Equine Encephalitis Virus Antibody [Quantitative])"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"


* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1181-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1181"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#416925005
* ^useContext[=].valueCodeableConcept.text = "Eastern equine encephalitis virus infection (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* $loinc#10896-9 "Eastern equine encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence"
* $loinc#10897-7 "Eastern equine encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#13228-2 "Eastern equine encephalitis virus IgG Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#13918-8 "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence"
* $loinc#20795-1 "Eastern equine encephalitis virus neutralizing antibody [Titer] in Serum by Neutralization test"
* $loinc#22257-0 "Eastern equine encephalitis virus Ab [Titer] in Serum"
* $loinc#22258-8 "Eastern equine encephalitis virus IgG Ab [Titer] in Cerebral spinal fluid"
* $loinc#22259-6 "Eastern equine encephalitis virus IgG Ab [Titer] in Serum"
* $loinc#23042-5 "Eastern equine encephalitis virus Ab [Titer] in Serum by Hemagglutination inhibition"
* $loinc#24213-1 "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence --1st specimen"
* $loinc#24214-9 "Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence --2nd specimen"
* $loinc#24287-5 "Eastern equine encephalitis virus Ab [Titer] in Serum --1st specimen"
* $loinc#24288-3 "Eastern equine encephalitis virus Ab [Titer] in Serum --2nd specimen"
* $loinc#34723-7 "Eastern equine encephalitis virus Ab [Titer] in Cerebral spinal fluid"
* $loinc#38764-7 "Eastern equine encephalitis virus IgG Ab [Units/volume] in Specimen"
* $loinc#43329-2 "Eastern equine encephalitis virus Ab [Titer] in Serum by Complement fixation"
* $loinc#5134-2 "Eastern equine encephalitis virus Ab [Units/volume] in Serum"
* $loinc#7860-0 "Eastern equine encephalitis virus IgG Ab [Units/volume] in Serum"
* $loinc#95654-0 "Eastern equine encephalitis virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#10898-5 "Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence"
* $loinc#10899-3 "Eastern equine encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid by Immunofluorescence"
* $loinc#13229-0 "Eastern equine encephalitis virus IgM Ab [Units/volume] in Cerebral spinal fluid"
* $loinc#22260-4 "Eastern equine encephalitis virus IgM Ab [Titer] in Cerebral spinal fluid"
* $loinc#22261-2 "Eastern equine encephalitis virus IgM Ab [Titer] in Serum"
* $loinc#38763-9 "Eastern equine encephalitis virus IgM Ab [Units/volume] in Specimen"
* $loinc#43330-0 "Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunoassay"
* $loinc#7861-8 "Eastern equine encephalitis virus IgM Ab [Units/volume] in Serum"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10896-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10897-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #13228-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #13918-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #20795-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22257-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22258-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22259-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #23042-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24213-1
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24214-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24287-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #24288-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #34723-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #38764-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43329-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #5134-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #7860-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95654-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10898-5
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #10899-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #13229-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22260-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #22261-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #38763-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #43330-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #7861-8
