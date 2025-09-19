ValueSet: Example_Procedure_Triggers_for_Public_Health_Reporting
Id: valueset-pctc-example
Title: "Example Procedure Triggers for Public Health Reporting"
Description: "This example set of values contains procedure names for orders that represent that the patient may have a received a procedure or that a procedure has been requested."
* ^meta.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.9999"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2018-08-01"
* ^publisher = "{site.data.fhir.ig.publisher}"
* ^useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering "Triggering"
* ^useContext[+].code = $USPublicHealthUsageContextType#priority "Priority"
* ^useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"