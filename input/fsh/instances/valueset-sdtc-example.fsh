Instance: valueset-sdtc-example
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-sdtc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1479"
* version = "1.0.0"
* name = "Example_Suspected_Disorder_Triggers_for_Public_Health_Reporting"
* title = "Example Suspected Disorder Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* date = "2021-10-05"
* publisher = "{site.data.fhir.ig.publisher}"
* contact.name = "HL7 Public Health and Emergency Response WorkGroup"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* description = "This example set of values contains suspected diagnoses or problems that represent that the patient may have a potentially reportable condition. For example, these may be diagnoses recorded in an EHR problem list and diagnosis codes used for billing for the encounter."
* useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[+].code = $USPublicHealthUsageContextType#priority "Priority"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* compose.include[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[0].code = #A01
* compose.include[=].concept[=].display = "Typhoid and paratyphoid fevers"
* compose.include[=].concept[+].code = #A01.0
* compose.include[=].concept[=].display = "Typhoid fever"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[0].code = #12591000132100
* compose.include[=].concept[=].display = "Suspected severe acute respiratory syndrome (situation)"
* compose.include[=].concept[+].code = #12601000132105
* compose.include[=].concept[=].display = "Probable severe acute respiratory syndrome (situation)"
* compose.include[=].concept[+].code = #722545003
* compose.include[=].concept[=].display = "Suspected rabies (situation)"
* compose.include[=].concept[+].code = #722546002
* compose.include[=].concept[=].display = "Probable rabies (situation)"
* compose.include[=].concept[+].code = #772147001
* compose.include[=].concept[=].display = "Botulism suspected (situation)"
* compose.include[=].concept[+].code = #772150003
* compose.include[=].concept[=].display = "Diphtheria suspected (situation)"
* compose.include[=].concept[+].code = #772151004
* compose.include[=].concept[=].display = "Anthrax suspected (situation)"