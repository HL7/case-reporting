Instance: sdtc
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://hl7.org/fhir/us/ecr/ValueSet/sdtc"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1479"
* version = "1.0.0"
* name = "Suspected_DisorderTriggersforPublicHealthReporting"
* title = "Suspected_Disorder Triggers for Public Health Reporting"
* status = #draft
* experimental = true
* publisher = "eCR"
* description = "Purpose: Clinical Focus - This set of values contains suspected diagnoses or problems that represent that the patient may have a potentially reportable condition. For example, these may be diagnoses recorded in an EHR problem list and diagnosis codes used for billing for the encounter. Purpose: Data Element Scope - Suspected diagnoses or problems documented in a clinical record. Purpose: Inclusion Criteria - See individual value sets. Purpose: Exclusion Criteria - See individual value sets. Note - Includes codes from selected value sets used in the Reportable Condition Knowledge Management System (RCKMS) reporting logic. RCKMS value sets in VSAC are for informational use only. When implementing trigger codes for electronic case reporting, use the Reportable Condition Trigger Codes (RCTC) file."
* useContext[0].code = $usage-context-type#program
* useContext[=].valueReference.reference = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* purpose = "Suspected diagnoses or problems documented in a clinical record."
* compose.include[0].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1439"
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1436"
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1435"
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1446"
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1438"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #722545003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #722546002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #772152006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #772150003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #772158005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #772155008