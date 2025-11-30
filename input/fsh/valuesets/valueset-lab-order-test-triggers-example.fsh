ValueSet: ValueSetLabOrderTestTriggersExample
Id: valueset-lab-order-test-triggers-example
Title: "Example Lab Order Test Triggers for Public Health Reporting"
Description: "This example set of values contains laboratory test names for orders that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"


* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1056.1"

* insert rsValueSetRequired
* ^date = "2018-08-01"
* ^publisher = "{site.data.fhir.ig.publisher}"
* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering "Triggering"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority "Priority"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine "Routine"


* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#11585-7 "Bordetella pertussis Ab [Units/volume] in Serum"
* $loinc#16474-9 "Bordetella pertussis Ab [Units/volume] in Serum by Complement fixation"
* $loinc#20992-4 "Bordetella pertussis Ab [Presence] in Specimen"
* $loinc#22116-8 "Bordetella pertussis Ab [Titer] in Serum"
* $loinc#22117-6 "Bordetella pertussis Ab [Titer] in Specimen"