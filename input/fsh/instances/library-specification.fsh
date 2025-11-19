Instance: library-specification
InstanceOf: USPublicHealthSpecificationLibrary
Usage: #inline
* url = "http://hl7.org/fhir/us/ecr/Library/library-specification"
* version = "1.0.0"
* name = "LibrarySpecification"
* title = "Specification Library"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "eCR"
* description = "Defines the asset-collection library containing the US Public Health specification assets."
* useContext[reportingContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* useContext[reportingContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* useContext[specificationTypeContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#specification-type
* useContext[specificationTypeContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#program
* relatedArtifact[planDefinition].type = #composed-of
* relatedArtifact[planDefinition].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* relatedArtifact[triggeringValueSetLibrary].type = #composed-of
* relatedArtifact[triggeringValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"