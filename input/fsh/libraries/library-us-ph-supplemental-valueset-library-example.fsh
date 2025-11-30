Instance: library-us-ph-supplemental-valueset-library-example
InstanceOf: USPublicHealthSupplementalValuesetLibrary
Description: "Example of a US Public Health Supplemental ValueSet Library containing supplemental ValueSets for public health reporting."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-supplemental-valueset-library-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.3"
* insert rsVersion
* name = "USPHSupplementalValueSetLibraryExample"
* title = "Library - US Public Health Supplemental ValueSet Library"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Example of a US Public Health Supplemental ValueSet Library containing supplemental ValueSets for public health reporting."
* useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#supplemental "Supplemental"
* useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#specification-type "Specification Type"
* useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#value-set-library "ValueSet Library"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[USPHValueSet].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-chlamydia-supplemental-example"
