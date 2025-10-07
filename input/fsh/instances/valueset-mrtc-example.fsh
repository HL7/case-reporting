Instance: valueset-mrtc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "6"
* meta.lastUpdated = "2020-12-03T05:57:10.741+00:00"
* meta.source = "#jZvYkGxPTEYqKf6v"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1060"
* version = "1.0.0"
* name = "Example_Medications_Triggers_for_Public_Health_Reporting"
* title = "Example Medications Triggers for Public Health Reporting"
* status = #active
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* description = "This example set of values contains CVX, RXNORM,and SNOMED medication codes that may represent that the patient may have a potentially reportable condition. These pertain to medications administered and medications prescribed, where the medication, coded in CVX,RXNORM,SNOMED, may be indicative of a reportable condition."
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* purpose = "Prescription drugs names used in observations documented in a clinical record."
* compose.include.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include.concept[0].code = #809002
* compose.include.concept[=].display = "Carbidopa 10 MG / Levodopa 100 MG Disintegrating Oral Tablet [Parcopa]"
* compose.include.concept[+].code = #476515
* compose.include.concept[=].display = "Carbidopa 25 MG / Levodopa 250 MG Disintegrating Oral Tablet"
* compose.include.concept[+].code = #308988
* compose.include.concept[=].display = "Carbidopa 25 MG / Levodopa 100 MG Extended Release Oral Tablet"
* compose.include.concept[+].code = #724606
* compose.include.concept[=].display = "Carbidopa 10 MG / Levodopa 100 MG Oral Tablet [Sinemet]"
* compose.include.concept[+].code = #1600914
* compose.include.concept[=].display = "8 HR Carbidopa 48.75 MG / Levodopa 195 MG Extended Release Oral Capsule"
* compose.include.concept[+].code = #476399
* compose.include.concept[=].display = "Carbidopa 25 MG / Levodopa 100 MG Disintegrating Oral Tablet"