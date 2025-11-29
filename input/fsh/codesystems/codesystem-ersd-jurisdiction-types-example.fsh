CodeSystem: CodeSystemERSDJurisdictionTypesExample
Id: codesystem-ersd-jurisdiction-types-example
Title: "eRSD Jurisdiction Types Example"
Description: "This example code system describes the possible types of jurisdictions that require public health reporting."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-codesystem"
* ^url = "http://example.org/fhir/us/ecr/CodeSystem/codesystem-ersd-jurisdiction-types-example"

* ^version = "{{site.data.fhir.igVer}}"
* ^experimental = true

* ^caseSensitive = true
* ^content = #complete

* #STATE "PHA State" "A state-level public health agency/jurisdiction"
* #COUNTY "PHA County" "A county-level public health agency/jurisdiction"
* #CITY "PHA City" "A city-level public health agency/jurisdiction"
* #DISTRICT "PHA District" "A district-level public health agency/jurisdiction"
* #BOROUGH "PHA Borough" "A borough-level public health agency/jurisdiction"
* #PARISH "PHA Parish" "A parish/neighborhood-level public health agency/jurisdiction"