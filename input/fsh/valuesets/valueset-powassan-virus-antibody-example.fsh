ValueSet: ValueSetPowassanVirusAntibodyExample
Id: 2.16.840.1.113762.1.4.1146.1182-example
Title: "Powassan Virus Disease (Tests for Powassan Virus Antibody [Quantitative])"
Description: "Powassan Virus Disease (Tests for Powassan Virus Antibody [Quantitative])"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1182-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1182"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#416707008
* ^useContext[=].valueCodeableConcept.text = "Powassan encephalitis virus infection (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* $loinc#29564-2 "Powassan virus IgG Ab [Titer] in Serum by Immunofluorescence"
* $loinc#30177-0 "Powassan virus IgG Ab [Titer] in Specimen by Immunofluorescence"
* $loinc#31573-9 "Powassan virus IgG Ab [Units/volume] in Serum"
* $loinc#31574-7 "Powassan virus IgG Ab [Units/volume] in Specimen"
* $loinc#40504-3 "Powassan virus Ab [Titer] in Serum by Complement fixation"
* $loinc#40513-4 "Powassan virus Ab [Titer] in Serum by Hemagglutination inhibition"
* $loinc#42973-8 "Powassan virus IgG Ab [Titer] in Specimen"
* $loinc#42974-6 "Powassan virus IgG Ab [Titer] in Serum"
* $loinc#42975-3 "Powassan virus Ab [Titer] in Serum"
* $loinc#95647-4 "Powassan virus neutralizing antibody [Titer] in Specimen by Neutralization test"
* $loinc#30179-6 "Powassan virus IgM Ab [Titer] in Specimen by Immunofluorescence"
* $loinc#31575-4 "Powassan virus IgM Ab [Units/volume] in Serum"
* $loinc#31576-2 "Powassan virus IgM Ab [Units/volume] in Specimen"
* $loinc#42971-2 "Powassan virus IgM Ab [Titer] in Specimen"
* $loinc#42972-0 "Powassan virus IgM Ab [Titer] in Serum"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #29564-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #30177-0
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31573-9
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31574-7
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40504-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #40513-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42973-8
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42974-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42975-3
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #95647-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #30179-6
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31575-4
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #31576-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42971-2
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].version = "Provisional_2021-12-30"
* ^expansion.contains[=].code = #42972-0
