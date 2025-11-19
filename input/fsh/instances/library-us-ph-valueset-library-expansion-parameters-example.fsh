Instance: library-us-ph-valueset-library-expansion-parameters-example
InstanceOf: USPublicHealthValueSetLibrary
Title: "Library - US Public Health ValueSet Library with Expansion Parameters"
Description: "Example of a US Public Health ValueSet Library that demonstrates the use of expansion parameters for ValueSet expansion."
Usage: #example
* contained = expansion-parameters-ecr
* extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters"
* extension.valueReference.reference = "#expansion-parameters-ecr"
* url = "http://hl7.org/fhir/us/ecr/Library/library-us-ph-valueset-library-expansion-parameters-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.11111.5"
* version = "2020-11-01"
* name = "USPHValueSetLibraryExpansionParametersExample"
* title = "US Public Health ValueSet Library Expansion Parameters Example"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "Example of a US Public Health ValueSet Library that demonstrates the use of expansion parameters for ValueSet expansion."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[USPHValueSet].type = #composed-of
* relatedArtifact[USPHValueSet].resource = "http://example.org/fhir/ValueSet/valueset-us-ph-example"