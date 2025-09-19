Instance: valueset-lrtc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "6"
* meta.lastUpdated = "2020-11-25T23:10:42.051+00:00"
* meta.source = "#f1ilk1zBBG4DSxHC"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lrtc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1057"
* version = "1.0.0"
* name = "Example_Lab_Obs_Test_Name_Triggers_for_Public_Health_Reporting"
* title = "Example Lab Obs Test Name Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains laboratory observations test names that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[+].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].code = #11585-7
* compose.include.concept[=].display = "Bordetella pertussis Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #14127-5
* compose.include.concept[=].display = "Neisseria gonorrhoeae [Presence] in Anal by Organism specific culture"
* compose.include.concept[+].code = #14461-8
* compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Blood by Organism specific culture"
* compose.include.concept[+].code = #14462-6
* compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Cerebral spinal fluid by Organism specific culture"
* compose.include.concept[+].code = #14463-4
* compose.include.concept[=].display = "Chlamydia trachomatis [Presence] in Cervix by Organism specific culture"