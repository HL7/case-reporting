ValueSet: ValueSetOrganismSubstanceReleaseTriggersforPublicHealthReporting
Id: valueset-ostc-example
Title: "Organism Substance Release Triggers for Public Health Reporting"
Description: "Purpose: Clinical Focus - This set of values contains organism and substance names received in a laboratory results report, that may represent that the patient has a potentially reportable condition. These pertain to resulted laboratory reports, where the test method is a non-specific test (e.g., general cultures not specific to a condition) and the result value, coded in SNOMED, includes the organism or substance name. Purpose: Data Element Scope - Nominal laboratory result values documented in a clinical record. Purpose: Inclusion Criteria - See individual value sets. Purpose: Exclusion Criteria - See individual value sets. Note - Includes codes from selected value sets used in the Reportable Condition Knowledge Management System (RCKMS) reporting logic. RCKMS value sets in VSAC are for informational use only. When implementing trigger codes for electronic case reporting, use the Reportable Condition Trigger Codes (RCTC) file."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1059"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#program
* ^useContext[0].valueReference.reference = "PlanDefinition/plandefinition-ersd-instance-example"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine
* ^purpose = "Nominal laboratory result values documented in a clinical record."
* ^compose.include[0].valueSet = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.528-example"
* ^compose.include[+].valueSet = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.408-example"
* ^compose.include[+].valueSet = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.409-example"
* ^compose.include[+].valueSet = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1469-example"
* ^compose.include[+].valueSet = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1468-example"
