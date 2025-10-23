Instance: library-us-ph-valueset-library-expansion-parameters-example
InstanceOf: USPublicHealthValueSetLibrary
Title: "US Public Health ValueSet Library Expansion Parameters Example"
Description: "An example of the US Public Health ValueSet Library"
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
* description = "Description of library"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Purpose of library"
* effectivePeriod.start = "2020-11-01"
* relatedArtifact[USPHValueSet].type = #composed-of
* relatedArtifact[USPHValueSet].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"