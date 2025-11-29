CodeSystem: SystemPropertiesExample
Id: codesystem-properties-example
Title: "CodeSystem Properties Example"
Description: "This code system is an example of a codesystem that contains the property codes used in the US Public Health terminology."

* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-codesystem"
* ^url = "http://example.org/fhir/us/ecr/CodeSystem/codesystem-properties-example"

* ^version = "{{site.data.fhir.igVer}}"
* ^experimental = true

* ^caseSensitive = false
* ^content = #complete

* #type "Type of public health jurisdiction" "Type of public health jurisdiction"
* #state "USPS Two Letter Alphabetic Codes" "USPS Two Letter Alphabetic Codes"
* #postalcode "Postal code within the public health jurisdiction" "Postal code within the public health jurisdiction"