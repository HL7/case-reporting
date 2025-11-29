ValueSet: ValueSetChlamydiaSupplementalExample
Id: valueset-chlamydia-supplemental-example
Title: "Example Chlamydia Supplemental Value Set for Public Health Reporting"
Description: "This example set of values contains laboratory observations test names that represent that the patient may have the potentially reportable condition of Chlamydia regardless of the clinical presentation of the condition"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-supplemental-valueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://example.org/fhir/us/ecr/ValueSet/valueset-chlamydia-supplemental-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1057.1"

* insert rsValueSetRequired

* ^publisher = "{site.data.fhir.ig.publisher}"

* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#supplemental "Supplemental"
* ^useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus "Clinical Focus"
* ^useContext[=].valueCodeableConcept = $sct#240589008 "Chlamydia trachomatis infection"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority "Priority"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine "Routine"


* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^compose.include.system = "http://loinc.org"
* ^compose.include.concept[0].code = #14461-8
* ^compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Blood by Organism specific culture"
* ^compose.include.concept[+].code = #14462-6
* ^compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Cerebral spinal fluid by Organism specific culture"
* ^compose.include.concept[+].code = #14463-4
* ^compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Cervix by Organism specific culture"