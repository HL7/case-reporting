Instance: library-ersd-supplemental-library-example
InstanceOf: ERSDSupplementalLibrary
Title: "Library - eRSD Supplemental Library"
Description: "Example of an eRSD Supplemental Library containing executable rule filters, supplemental ValueSet Library, and jurisdictions CodeSystem for electronic case reporting."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-ersd-supplemental-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111"
* insert rsVersion
* name = "ERSDSupplementalLibraryExample"
* title = "eRSD Supplemental Library Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Example of an eRSD Supplemental Library containing executable rule filters, supplemental ValueSet Library, and jurisdictions CodeSystem for electronic case reporting."
* useContext[reportingContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* useContext[reportingContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#supplemental "Supplemental"
* useContext[specificationTypeContext].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#specification-type "Specification Type"
* useContext[specificationTypeContext].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#program "Program"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[computableLibrary].type = #composed-of
* relatedArtifact[computableLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-executable-rule-filters-example"
// * relatedArtifact[computableLibrary].resource = $library-executable-rule-filters-example
* relatedArtifact[supplementalValueSetLibrary].type = #composed-of
* relatedArtifact[supplementalValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-supplemental-valueset-library-example"
// * relatedArtifact[supplementalValueSetLibrary].resource = $library-us-ph-supplemental-valueset-library-example
* relatedArtifact[sliceJurisdictionsCodeSystem].type = #composed-of
* relatedArtifact[sliceJurisdictionsCodeSystem].resource = "http://example.org/fhir/us/ecr/CodeSystem/codesystem-ersd-jurisdictions-example"