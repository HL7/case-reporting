ValueSet: USPublicHealthComputableValueSetExample
Id: us-ph-computable-valueset-example
Title: "US Public Health Computable ValueSet Example"
Description: "ACME Codes for Cholesterol: Plasma only"
* ^meta.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-computable-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "Example Steward"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "Example Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-rules-text"
* ^extension[=].valueMarkdown = "Include codes from [codesystem-example.html](http://example.org/fhir/CodeSystem/example) where acme-plasma  =  true"
* ^url = "http://example.org/fhir/ValueSet/us-ph-computable-valueset-example"
* ^status = #draft
* ^experimental = true
* ^date = "2022-05-01"
* ^publisher = "{site.data.fhir.ig.publisher}"
* ^useContext.code = $USPublicHealthUsageContextType#priority "Priority"
* ^useContext.valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"