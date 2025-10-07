Instance: library-ersd-supplemental-library-example
InstanceOf: ERSDSupplementalLibrary
Title: "eRSD Supplemental Library Example"
Description: "Description of library"
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-ersd-supplemental-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111"
* version = "2020-11-01"
* name = "ERSDSupplementalLibraryExample"
* title = "eRSD Supplemental Library Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Description of library"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* useContext[specificationTypeContext].code = $USPublicHealthUsageContextType#specification-type "Specification Type"
* useContext[specificationTypeContext].valueCodeableConcept = $USPublicHealthUsageContext#program "Program"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[computableLibrary].type = #composed-of
* relatedArtifact[computableLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/RuleFilters"
* relatedArtifact[supplementalValueSetLibrary].type = #composed-of
* relatedArtifact[supplementalValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-supplemental-valueset-library-example"
* relatedArtifact[sliceJurisdictionsCodeSystem].type = #composed-of
* relatedArtifact[sliceJurisdictionsCodeSystem].resource = "http://hl7.org/fhir/us/ecr/CodeSystem/ersd-jurisdictions-example"