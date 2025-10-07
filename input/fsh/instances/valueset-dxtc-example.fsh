Instance: valueset-dxtc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* meta.versionId = "5"
* meta.lastUpdated = "2020-11-25T23:10:42.057+00:00"
* meta.source = "#YnUIRZLVoM19ij7X"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.627"
* version = "1.0.0"
* name = "Example_Diagnosis_Problem_Triggers_for_Public_Health_Reporting"
* title = "Example Diagnosis Problem Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2018-08-01"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains diagnoses or problems that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* compose.include[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[0].code = #A01
* compose.include[=].concept[=].display = "Typhoid and paratyphoid fevers"
* compose.include[=].concept[+].code = #A01.0
* compose.include[=].concept[=].display = "Typhoid fever"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[0].code = #10750051000119105
* compose.include[=].concept[=].display = "Chlamydia trachomatis infection in mother complicating childbirth (disorder)"
* compose.include[=].concept[+].code = #10754031000119105
* compose.include[=].concept[=].display = "Gonorrhea in mother complicating childbirth (disorder)"
* compose.include[=].concept[+].code = #1084791000119106
* compose.include[=].concept[=].display = "Cardiac disorder due to typhoid fever (disorder)"
* compose.include[=].concept[+].code = #1086991000119103
* compose.include[=].concept[=].display = "Gonococcal abscess of brain (disorder)"
* compose.include[=].concept[+].code = #1087051000119109
* compose.include[=].concept[=].display = "Gonococcal osteomyelitis (disorder)"
* compose.include[=].concept[+].code = #1087061000119106
* compose.include[=].concept[=].display = "Gonococcal pneumonia (disorder)"
* compose.include[=].concept[+].code = #1092371000119103
* compose.include[=].concept[=].display = "Salmonella pyelonephritis (disorder)"