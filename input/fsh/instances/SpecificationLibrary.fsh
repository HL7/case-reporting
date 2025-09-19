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
* useContext[0].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#specification-type
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#program
* relatedArtifact[0].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"