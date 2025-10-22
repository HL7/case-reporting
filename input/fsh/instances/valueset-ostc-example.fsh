Instance: valueset-ostc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "8"
* meta.lastUpdated = "2021-06-30T07:40:56.697+00:00"
* meta.source = "#xas7OF0tYBOe11AS"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1059"
* version = "1.0.0"
* name = "Example_Organism_Substance_Triggers_for_Public_Health_Reporting"
* title = "Example Organism Substance Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains organism and substance names that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* compose.include.system = "http://snomed.info/sct"
* compose.include.concept[0].code = #1009003
* compose.include.concept[=].display = "Salmonella Oakland (organism)"
* compose.include.concept[+].code = #10096007
* compose.include.concept[=].display = "Salmonella Leoben (organism)"
* compose.include.concept[+].code = #10112007
* compose.include.concept[=].display = "Salmonella Alamo (organism)"
* compose.include.concept[+].code = #10183008
* compose.include.concept[=].display = "Salmonella Pensacola (organism)"
* compose.include.concept[+].code = #10248003
* compose.include.concept[=].display = "Salmonella Travis (organism)"