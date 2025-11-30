ValueSet: ValueSetSDTCExample
Id: valueset-sdtc-example
Title: "Example SDTC Triggers for Public Health Reporting"
Description: "Purpose: Clinical Focus - This set of values contains suspected diagnoses or problems that represent that the patient may have a potentially reportable condition. For example, these may be diagnoses recorded in an EHR problem list and diagnosis codes used for billing for the encounter. Purpose: Data Element Scope - Suspected diagnoses or problems documented in a clinical record. Purpose: Inclusion Criteria - See individual value sets. Purpose: Exclusion Criteria - See individual value sets. Note - Includes codes from selected value sets used in the Reportable Condition Knowledge Management System (RCKMS) reporting logic. RCKMS value sets in VSAC are for informational use only. When implementing trigger codes for electronic case reporting, use the Reportable Condition Trigger Codes (RCTC) file."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-sdtc-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1479"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#program
// * ^useContext[0].valueReference.reference = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* ^useContext[0].valueReference.reference = "PlanDefinition/plandefinition-ersd-instance-example"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine
* ^purpose = "Suspected diagnoses or problems documented in a clinical record."
* ^compose.include[0].valueSet = $2.16.840.1.113762.1.4.1146.1439-example
* ^compose.include[+].valueSet = $2.16.840.1.113762.1.4.1146.1436-example
* ^compose.include[+].valueSet = $2.16.840.1.113762.1.4.1146.1435-example
* ^compose.include[+].valueSet = $2.16.840.1.113762.1.4.1146.1446-example
* ^compose.include[+].valueSet = $2.16.840.1.113762.1.4.1146.1438-example
