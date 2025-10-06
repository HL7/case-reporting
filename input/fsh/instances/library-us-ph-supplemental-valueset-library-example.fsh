Instance: library-us-ph-supplemental-valueset-library-example
InstanceOf: USPublicHealthSupplementalValuesetLibrary
Title: "US Public Health Supplemental ValueSet Library Example"
Description: "An example of the US Public Health Supplemental ValueSet Library"
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-supplemental-valueset-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.3"
* version = "2020-11-01"
* name = "USPHSupplementalValueSetLibraryExample"
* title = "US Public Health Supplemental ValueSet Library Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Description of library"
* useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[+].code = $USPublicHealthUsageContextType#specification-type "Specification Type"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#value-set-library "ValueSet Library"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact.type = #composed-of
* relatedArtifact.resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-us-ph-supplemental-valueset-example"