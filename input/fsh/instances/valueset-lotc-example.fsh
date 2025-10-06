Instance: valueset-lotc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "6"
* meta.lastUpdated = "2020-11-25T23:10:42.055+00:00"
* meta.source = "#FLOTVKreaVlW2e4a"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1056"
* version = "1.0.0"
* name = "Example_Lab_Order_Test_Triggers_for_Public_Health_Reporting"
* title = "Example Lab Order Test Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains laboratory test names for orders that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* useContext[0].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* useContext[+].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].code = #11585-7
* compose.include.concept[=].display = "Bordetella pertussis Ab [Units/volume] in Serum"
* compose.include.concept[+].code = #16474-9
* compose.include.concept[=].display = "Bordetella pertussis Ab [Units/volume] in Serum by Complement fixation"
* compose.include.concept[+].code = #20992-4
* compose.include.concept[=].display = "Bordetella pertussis Ab [Presence] in Unspecified specimen"
* compose.include.concept[+].code = #22116-8
* compose.include.concept[=].display = "Bordetella pertussis Ab [Titer] in Serum"
* compose.include.concept[+].code = #22117-6
* compose.include.concept[=].display = "Bordetella pertussis Ab [Titer] in Unspecified specimen"