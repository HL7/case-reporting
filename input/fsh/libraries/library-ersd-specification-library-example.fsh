Instance: library-ersd-specification-library-example
InstanceOf: USPublicHealthSpecificationLibrary
// Title: "Library - eRSD Specification Library"
Description: "Example of a US Public Health Specification Library containing eRSD PlanDefinition and RCTC ValueSet Library for electronic case reporting specification."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-ersd-specification-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.6"
* insert rsVersion
* name = "ERSDSpecificationLibraryExample"
* title = "Library - eRSD Specification Library"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Example of a US Public Health Specification Library containing eRSD PlanDefinition and RCTC ValueSet Library for electronic case reporting specification."
* useContext[reportingContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering "Triggering"
* useContext[specificationTypeContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#specification-type "Specification Type"
* useContext[specificationTypeContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#program "Program"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[planDefinition].type = #composed-of
* relatedArtifact[planDefinition].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-us-public-health-example"
// * relatedArtifact[planDefinition].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
// * relatedArtifact[planDefinition].resource = $plandefinition-ersd-instance-example
* relatedArtifact[triggeringValueSetLibrary].type = #composed-of
* relatedArtifact[triggeringValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"
// * relatedArtifact[triggeringValueSetLibrary].resource = $library-rctc-example
