CodeSystem: ERSDJurisdictionTypesExample
Id: ersd-jurisdiction-types-example
Title: "eRSD Jurisdiction Types Example"
Description: "This example code system describes the possible types of jurisdictions that require public health reporting."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-codesystem"
* ^url = "http://example.org/fhir/CodeSystem/ersd-jurisdiction-types-example"

* ^experimental = false

* ^caseSensitive = true
* ^content = #complete

* #pha-state "PHA State" "A state-level public health agency/jurisdiction"
* #pha-county "PHA County" "A county-level public health agency/jurisdiction"
* #pha-city "PHA City" "A city-level public health agency/jurisdiction"
* #pha-district "PHA District" "A district-level public health agency/jurisdiction"
* #pha-borough "PHA Borough" "A borough-level public health agency/jurisdiction"
* #pha-parish "PHA Parish" "A parish/neighborhood-level public health agency/jurisdiction"