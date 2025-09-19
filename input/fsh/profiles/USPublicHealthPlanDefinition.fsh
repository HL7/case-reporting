Profile: USPublicHealthPlanDefinition
Parent: $shareableplandefinition
Id: us-ph-plandefinition
Title: "US Public Health PlanDefinition"
Description: "This profile describes the US Public Health PlanDefinition."

* ^status = #active




* . ^short = "US Public Health PlanDefinition"
* . ^definition = "Defines a shareable US Public Health PlanDefinition."
* extension contains USPublicHealthReceiverAddressExtension named receiverAddress 0..1 MS
* version 1.. MS
* version ^short = "Business version of the PlanDefinition"
* version ^definition = "Business version of the PlanDefinition"
* name 1.. MS
* name ^short = "Name for this PlanDefinition (computer friendly)"
* name ^definition = "Name for this PlanDefinition (computer friendly)"
* title 1.. MS
* title ^short = "Title for this PlanDefinition"
* title ^definition = "Title for this PlanDefinition"
* type 1.. MS
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* type ^short = "Type of this PlanDefinition"
* type ^definition = "Type of this PlanDefinition"
* subject[x] MS
* date 1.. MS
* date ^short = "Date the PlanDefinition was last changed"
* date ^definition = "Date the PlanDefinition was last changed"
* publisher MS
* publisher ^short = "Name of the agency that published this PlanDefinition"
* publisher ^definition = "Name of the agency that published this PlanDefinition"
* effectivePeriod MS
* effectivePeriod ^short = "When the PlanDefinition is valid"
* effectivePeriod ^definition = "The period during which the PlanDefinition is valid"
* effectivePeriod.start 1..
* effectivePeriod.start ^short = "The start of the time period when this PlanDefinition goes into effect"
* effectivePeriod.start ^definition = "The start of the time period when this PlanDefinition goes into effect"
* library MS
* action 0..* MS
* action ^short = "All constraints on action are intended to apply to any nested constraints."
* action.description 0..1 MS
* action.code 0..1 MS
* action.code from USPublicHealthPlanDefinitionAction (extensible)
* action.code ^binding.description = "The set of actions that can be used to create plan definition"
* action.trigger 0..* MS
* action.trigger.extension contains USPublicHealthNamedEventTypeExtension named namedEventType 0..1 MS
// * action.trigger.extension[namedEventType] from USPublicHealthTriggerDefinitionNamedEvent (extensible)
// * action.trigger.extension[namedEventType] ^binding.description = "The set of named events that can be used for subscriptions"
* action.trigger.type 1..1 MS
* action.trigger.type only code
* action.trigger.type = #named-event (exactly)
* action.condition 0..* MS
* action.condition.kind 1..1 MS
* action.condition.expression 0..1 MS
* action.input 0..* MS
* action.input.extension contains USPublicHealthRelatedDataExtension named relatedData 0..1 MS
* action.input.type 1..1 MS
* action.output 0..* MS
* action.output.type 1..1 MS
* action.relatedAction 0..* MS
* action.relatedAction.actionId 1..1 MS
* action.relatedAction.relationship 1..1 MS
* action.relatedAction.offsetDuration 0..1 MS
* action.timing[x] 0..1 MS
* action.timing[x] only Duration