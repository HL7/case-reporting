Instance: SpecificationLibrary
InstanceOf: USPublicHealthSpecificationLibrary
Usage: #inline
* meta.versionId = "1.0.0"
* url = "http://hl7.org/fhir/us/ecr/Library/SpecificationLibrary"
* version = "1.0.0"
* name = "SpecificationLibrary"
* title = "Specification Library"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "eCR"
* description = "Defines the asset-collection library containing the US Public Health specification assets."
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[specificationTypeContext].code = $USPublicHealthUsageContextType#specification-type
* useContext[specificationTypeContext].valueCodeableConcept = $USPublicHealthUsageContext#program
* relatedArtifact[planDefinition].type = #composed-of
* relatedArtifact[planDefinition].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* relatedArtifact[triggeringValueSetLibrary].type = #composed-of
* relatedArtifact[triggeringValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"