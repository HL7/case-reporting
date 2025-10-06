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
* useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering "Triggering"
* useContext[+].code = $USPublicHealthUsageContextType#specification-type "Specification Type"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#program "Program"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[0].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"