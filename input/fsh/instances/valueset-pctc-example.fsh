Instance: valueset-pctc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2020-12-01T17:02:45.651+00:00"
* meta.source = "#JGRpT4MaN5pv7ImH"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1056"
* version = "1.0.0"
* name = "Example_Procedure_Triggers_for_Public_Health_Reporting"
* title = "Example Procedure Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains procedure names for orders that represent that the patient may have a received a procedure or that a procedure has been requested."
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"