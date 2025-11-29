Instance: library-us-ph-valueset-library-example
InstanceOf: USPublicHealthValueSetLibrary
Title: "Library - US Public Health ValueSet Library"
Description: "Example of a US Public Health ValueSet Library containing a collection of ValueSets used for public health reporting."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-valueset-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.4"
* insert rsVersion
* name = "USPHValueSetLibraryExample"
* title = "US Public Health ValueSet Library Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "Public Health Example Publisher"
* description = "Example of a US Public Health ValueSet Library containing a collection of ValueSets used for public health reporting."
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[USPHValueSet].type = #composed-of
* relatedArtifact[USPHValueSet].resource = "http://example.org/fhir/us/ecr/ValueSet/valueset-us-ph-example"