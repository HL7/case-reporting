Instance: plandefinition-ersd-instance-namedEvent-example
InstanceOf: PlanDefinition
Title: "eRSD PlanDefinition Instance NamedEvent Example"
Description: "This PlanDefinition is a simplified duplicate of the eRSD PlanDefinition Instance created for the purposes of demonstrating by example the usage of the US Public Health Named Event extension."
Usage: #example
* url = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-namedEvent-example"
* version = "2.1.0"
* name = "PlanDefinition_eRSD_Instance_namedEvent_Example"
* title = "eRSD PlanDefinition Instance NamedEvent Example"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* status = #active
* experimental = true
* date = "2020-12-01T12:32:29.858-05:00"
* publisher = "HL7 Public Health Work Group"
* description = "This PlanDefinition is a simplified duplicate of the eRSD PlanDefinition Instance created for the purposes of demonstrating by example the usage of the US Public Health Named Event extension."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* jurisdiction.text = "United States of America (the)"
* effectivePeriod.start = "2020-12-01"
* action.id = "start-workflow"
* action.description = "This action represents the start of the reporting workflow in response to the encounter-start event"
* action.textEquivalent = "Start the reporting workflow in response to an encounter-start event"
* action.code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow "Initiate a reporting workflow"
* action.trigger.id = "encounter-start"
* action.trigger.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-named-eventtype-extension"
* action.trigger.extension.valueCodeableConcept = USPublicHealthTriggerDefinitionNamedEvents#encounter-start "Indicates the start of an encounter"
* action.trigger.type = #named-event
* action.trigger.name = "encounter-start"