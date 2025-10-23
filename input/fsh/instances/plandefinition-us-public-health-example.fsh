Instance: plandefinition-us-public-health-example
InstanceOf: USPublicHealthPlanDefinition
Title: "US Public Health PlanDefinition Example"
Description: "Example of US Public Health PlanDefinition profile"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-receiver-address-extension"
* extension.valueReference.reference = "Endpoint/endpoint-ecr-ymca"
* url = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-us-public-health-example"
* version = "2.1.0"
* name = "PlanDefinitionUSPublicHealthExample"
* title = "PlanDefinition US Public Health Example"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* status = #active
* experimental = true
* date = "2020-07-31T12:32:29.858-05:00"
* publisher = "Publisher Example"
* description = "An example US Public Health PlanDefinition"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* effectivePeriod.start = "2020-12-01"
* library = "http://hl7.org/fhir/us/ecr/Library/library-executable-rule-filters|2.1.0"