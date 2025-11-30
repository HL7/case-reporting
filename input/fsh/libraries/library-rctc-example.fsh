Instance: library-rctc-example
InstanceOf: USPublicHealthTriggeringValueSetLibrary
Description: "Example of a US Public Health Triggering ValueSet Library containing Reportable Condition Trigger Codes (RCTC) for initiating decision support for electronic case reports. This release includes code updates for existing conditions, adds codes for Parkinson's disease and 13 enteric conditions, and includes medication codes."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.7508"
* insert rsVersion
* name = "Reportable_Condition_Trigger_Codes"
* title = "Library - Reportable Condition Trigger Codes (RCTC)"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "This release includes code updates for the existing conditions and adds codes for Parkinson’s disease and 13 enteric conditions. Medication codes have also been added to this version."
* useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering "Triggering"
* useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#specification-type "Specification Type"
* useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#value-set-library "ValueSet Library"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Triggers for initiating decision support for electronic case reports"
* effectivePeriod.start = "2019-11-01"
* relatedArtifact[USPHValueSet].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-organism-substance-triggers-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-obs-test-name-triggers-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-suspected-disorder-triggers-example"