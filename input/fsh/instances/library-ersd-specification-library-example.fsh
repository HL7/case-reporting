Instance: library-ersd-specification-library-example
InstanceOf: USPublicHealthSpecificationLibrary
Title: "eRSD Specification Library Example"
Description: "Description of library"
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-ersd-specification-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.6"
* version = "2020-11-01"
* name = "ERSDSpecificationLibraryExample"
* title = "eRSD Specification Library Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Description of library"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering "Triggering"
* useContext[specificationTypeContext].code = $USPublicHealthUsageContextType#specification-type "Specification Type"
* useContext[specificationTypeContext].valueCodeableConcept = $USPublicHealthUsageContext#program "Program"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[planDefinition].type = #composed-of
* relatedArtifact[planDefinition].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* relatedArtifact[triggeringValueSetLibrary].type = #composed-of
* relatedArtifact[triggeringValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"