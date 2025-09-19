Profile: ERSDPlanDefinition
Parent: USPublicHealthPlanDefinition
Id: ersd-plandefinition
Title: "eRSD PlanDefinition"
Description: "This PlanDefinition profile defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician. The rules for determining reportability described by an eRSD specification involve the use of triggering codes to determine potentially reportable events, and optionally locally evaluated rules for determining suspected reportable events. The final determination of reportability is made by the Public Health Agency or Agencies appropriate for the event, and may be performed by a combination of decisions occurring at various points during the processing of an eICR, as explained in the Reportability Response profile."




* . MS
* . ^short = "eRSD - electronic Reporting and Surveillance Distribution"
* . ^definition = "Defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician."
* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^definition = "Defines variables for the PlanDefinition."
* extension contains Variable named variable 0..* MS
* action 5.. MS
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "id"
* action ^slicing.ordered = true
* action ^slicing.rules = #open
* action.code 0..1 MS
* action.code from USPublicHealthPlanDefinitionAction (extensible)
* action.code ^binding.description = "The set of actions that can be used to create plan definition"
* action.input.extension MS
* action.input.extension ^slicing.discriminator.type = #value
* action.input.extension ^slicing.discriminator.path = "url"
* action.input.extension ^slicing.rules = #open
* action.input.extension ^definition = "Defines extensions for the action."
* action.input.extension contains USPublicHealthFHIRQueryPatternExtension named fhirquerypattern 0..1 MS
* action.input.extension[fhirquerypattern].url 1..1 MS
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetDuration ^definition = "The duration quantity may include a comparator, indicating how the offset should be applied. For example, <= 1 hour, meaning that the offset should be no more than 1 hour. This allows systems flexibility in scheduling the actions to isolate reporting activities to off hours."
* action contains
    encounterStart 1..1 MS and
    checkSuspectedDisorder 1..1 MS and
    checkReportable 1..1 and
    createEicr 1..1 and
    validateEicr 1..1 and
    routeAndSendEicr 1..1 and
    encounterModified 1..1 MS
* action[encounterStart] ^short = "Encounter start code"
* action[encounterStart] ^definition = "Defines the \"start\" action"
* action[encounterStart].id 1.. MS
* action[encounterStart].id = "start-workflow" (exactly)
* action[encounterStart].description 1.. MS
* action[encounterStart].description = "This action represents the start of the reporting workflow in response to the encounter-start event." (exactly)
* action[encounterStart].description ^short = "Description of the \"start\" action."
* action[encounterStart].description ^definition = "Description of the \"start\" action."
* action[encounterStart].textEquivalent 1.. MS
* action[encounterStart].textEquivalent = "Start the reporting workflow in response to an encounter-start event" (exactly)
* action[encounterStart].textEquivalent ^short = "Text equivalent of the \"start\" action."
* action[encounterStart].textEquivalent ^definition = "Text equivalent of the \"start\" action."
* action[encounterStart].code 1..1 MS
* action[encounterStart].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow
* action[encounterStart].code ^short = "Code for the \"start\" action."
* action[encounterStart].code ^definition = "The US-PH-PlanDefinition-Action code for the \"start\" action."
* action[encounterStart].trigger 1.. MS
* action[encounterStart].trigger obeys epd-1
* action[encounterStart].trigger ^short = "When the \"start\" action should be triggered."
* action[encounterStart].trigger ^definition = "When the \"start\" action should be triggered."
* action[encounterStart].trigger.extension ..*
//* action[encounterStart].trigger.extension only Extension
* action[encounterStart].trigger.extension ^slicing.discriminator.type = #value
* action[encounterStart].trigger.extension ^slicing.discriminator.path = "url"
* action[encounterStart].trigger.extension ^slicing.description = "Extensions are always sliced by (at least) url"
* action[encounterStart].trigger.extension ^slicing.rules = #open
* action[encounterStart].trigger.extension ^short = "Additional content defined by implementations"
* action[encounterStart].trigger.extension ^definition = "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."
* action[encounterStart].trigger.extension ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
* action[encounterStart].trigger.extension ^alias[0] = "extensions"
* action[encounterStart].trigger.extension ^alias[+] = "user content"
* action[encounterStart].trigger.extension ^base.path = "Element.extension"
* action[encounterStart].trigger.extension ^base.min = 0
* action[encounterStart].trigger.extension ^base.max = "*"
* action[encounterStart].trigger.extension ^isModifier = false
* action[encounterStart].trigger.extension ^isSummary = false
* action[encounterStart].trigger.extension[namedEventType] 0..1 MS
* action[encounterStart].trigger.extension[namedEventType] only USPublicHealthNamedEventTypeExtension
* action[encounterStart].trigger.extension[namedEventType] ^short = "Indicates the types of named events to subscribe to from the EHR."
* action[encounterStart].trigger.extension[namedEventType] ^definition = "Indicates the types of named events to subscribe to from the EHR."
* action[encounterStart].trigger.extension[namedEventType] ^base.path = "Element.extension"
* action[encounterStart].trigger.extension[namedEventType] ^base.min = 0
* action[encounterStart].trigger.extension[namedEventType] ^base.max = "*"
* action[encounterStart].trigger.extension[namedEventType] ^isModifier = false
* action[encounterStart].trigger.extension[namedEventType] ^isSummary = false
* action[encounterStart].trigger.type = #named-event (exactly)
* action[encounterStart].trigger.name = "encounter-start" (exactly)
* action[encounterStart].trigger.name ^definition = "The name of the event, encounter-start in this case. For any action invoked as a result of this trigger, the triggering encounter is accessible via the context variable `%encounter`"
* action[encounterStart].relatedAction 1..1 MS
* action[encounterStart].relatedAction.actionId = "check-suspected-disorder" (exactly)
* action[encounterStart].relatedAction.relationship = #before-start (exactly)
* action[encounterStart].relatedAction.offsetDuration 0..1
* action[encounterStart].relatedAction.offsetDuration only Duration
* action[encounterStart].relatedAction.offsetDuration ^example.label = "Wait 1 hour before next action."
* action[encounterStart].relatedAction.offsetDuration ^example.valueDuration.value = 1

* action[encounterStart].relatedAction.offsetDuration ^example.valueDuration.unit = "h"
* action[checkSuspectedDisorder] ^short = "Check suspected disorder"
* action[checkSuspectedDisorder] ^definition = "Defines the \"check-suspected-disorder\" action"
* action[checkSuspectedDisorder].id 1.. MS
* action[checkSuspectedDisorder].id = "check-suspected-disorder" (exactly)
* action[checkSuspectedDisorder].description 1.. MS
* action[checkSuspectedDisorder].description = "This action represents the start of the check suspected disorder reporting workflow in response to the encounter-start event." (exactly)
* action[checkSuspectedDisorder].description ^short = "Description of the check for suspected disorders action."
* action[checkSuspectedDisorder].description ^definition = "Description of the check for suspected disorders action."
* action[checkSuspectedDisorder].code 1..1 MS
* action[checkSuspectedDisorder].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[checkSuspectedDisorder].code ^short = "Code for the \"check-suspected-disorder\" action."
* action[checkSuspectedDisorder].code ^definition = "The US-PH-PlanDefinition-Action code for the \"check-suspected-disorder\" action."
* action[checkSuspectedDisorder].action 2..
* action[checkSuspectedDisorder].action ^slicing.discriminator.type = #value
* action[checkSuspectedDisorder].action ^slicing.discriminator.path = "id"
* action[checkSuspectedDisorder].action ^slicing.rules = #open
* action[checkSuspectedDisorder].action contains
    isEncounterSuspectedDisorder 1..1 MS and
    continueCheckReportable 1..1 MS
//* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder] only BackboneElement
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].id 1.. MS
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].id = "is-encounter-suspected-disorder" (exactly)
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].code 1..
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.kind = #applicability (exactly)
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.expression 1.. MS
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.expression.language = #text/fhirpath (exactly)
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input MS
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input.id 1..1 MS
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].relatedAction.actionId = "create-eicr" (exactly)
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].relatedAction.relationship = #before-start (exactly)
//* action[checkSuspectedDisorder].action[continueCheckReportable] only BackboneElement
* action[checkSuspectedDisorder].action[continueCheckReportable].id 1.. MS
* action[checkSuspectedDisorder].action[continueCheckReportable].id = "continue-check-reportable" (exactly)
* action[checkSuspectedDisorder].action[continueCheckReportable].code 1..
* action[checkSuspectedDisorder].action[continueCheckReportable].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.kind = #applicability (exactly)
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.expression 1.. MS
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.expression.language = #text/fhirpath (exactly)
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.actionId = "check-reportable" (exactly)
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.relationship = #before-start (exactly)
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration 0..1
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration only Duration
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration ^example.label = "Wait 6 hours before next action."
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration ^example.valueDuration.value = 6
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration ^example.valueDuration.unit = "h"
* action[checkReportable] ^short = "Check the encounter for reportability"
* action[checkReportable] ^definition = "Defines the checking of the encounter for reportability."
* action[checkReportable].id 1.. MS
* action[checkReportable].id = "check-reportable" (exactly)
* action[checkReportable].description = "This action represents the check for suspected reportability of the eICR." (exactly)
* action[checkReportable].description ^short = "Description of the Periodic Update of eICR action."
* action[checkReportable].description ^definition = "Description of the Periodic Update of eICR action within the eICR action."
* action[checkReportable].code 1..
* action[checkReportable].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[checkReportable].action 3..
* action[checkReportable].action ^slicing.discriminator.type = #value
* action[checkReportable].action ^slicing.discriminator.path = "id"
* action[checkReportable].action ^slicing.rules = #open
* action[checkReportable].action contains
    isEncounterReportable 1..1 MS and
    checkUpdateEicr 1..1 MS and
    encounterInProgress 1..1 MS
//* action[checkReportable].action[isEncounterReportable] only BackboneElement
* action[checkReportable].action[isEncounterReportable].id 1.. MS
* action[checkReportable].action[isEncounterReportable].id = "is-encounter-reportable" (exactly)
* action[checkReportable].action[isEncounterReportable].code 1..
* action[checkReportable].action[isEncounterReportable].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[checkReportable].action[isEncounterReportable].condition.kind = #applicability (exactly)
* action[checkReportable].action[isEncounterReportable].condition.expression 1.. MS
* action[checkReportable].action[isEncounterReportable].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[isEncounterReportable].input MS
* action[checkReportable].action[isEncounterReportable].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"
* action[checkReportable].action[isEncounterReportable].input.id 1..1 MS
* action[checkReportable].action[isEncounterReportable].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"
* action[checkReportable].action[isEncounterReportable].relatedAction.actionId = "create-eicr" (exactly)
* action[checkReportable].action[isEncounterReportable].relatedAction.relationship = #before-start (exactly)
//* action[checkReportable].action[checkUpdateEicr] only BackboneElement
* action[checkReportable].action[checkUpdateEicr].id 1.. MS
* action[checkReportable].action[checkUpdateEicr].id = "check-update-eicr" (exactly)
* action[checkReportable].action[checkUpdateEicr].code 1..
* action[checkReportable].action[checkUpdateEicr].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkReportable].action[checkUpdateEicr].condition.kind = #applicability (exactly)
* action[checkReportable].action[checkUpdateEicr].condition.expression 1.. MS
* action[checkReportable].action[checkUpdateEicr].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[checkUpdateEicr].relatedAction.actionId = "create-eicr" (exactly)
* action[checkReportable].action[checkUpdateEicr].relatedAction.relationship = #before-start (exactly)
//* action[checkReportable].action[encounterInProgress] only BackboneElement
* action[checkReportable].action[encounterInProgress].id 1.. MS
* action[checkReportable].action[encounterInProgress].id = "is-encounter-in-progress" (exactly)
* action[checkReportable].action[encounterInProgress].code 1..
* action[checkReportable].action[encounterInProgress].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkReportable].action[encounterInProgress].condition.kind = #applicability (exactly)
* action[checkReportable].action[encounterInProgress].condition.expression 1.. MS
* action[checkReportable].action[encounterInProgress].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[encounterInProgress].relatedAction.actionId = "check-reportable" (exactly)
* action[checkReportable].action[encounterInProgress].relatedAction.relationship = #before-start (exactly)
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration 0..1
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration only Duration
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration ^example.label = "Wait 6 hours before next action."
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration ^example.valueDuration.value = 6
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration ^example.valueDuration.unit = "h"
* action[createEicr] ^short = "Create the eICR"
* action[createEicr] ^definition = "Defines the \"create-eicr\" action"
* action[createEicr].id 1.. MS
* action[createEicr].id = "create-eicr" (exactly)
* action[createEicr].description = "This action represents the creation of the eICR. It subsequently calls validate." (exactly)
* action[createEicr].code = USPublicHealthPlanDefinitionActions#create-report
* action[createEicr].relatedAction 1..1 MS
* action[createEicr].relatedAction.actionId = "validate-eicr" (exactly)
* action[createEicr].relatedAction.relationship = #before-start (exactly)
* action[validateEicr] ^short = "Validate the eICR"
* action[validateEicr] ^definition = "Defines the \"validate-eicr\" action"
* action[validateEicr].id 1.. MS
* action[validateEicr].id = "validate-eicr" (exactly)
* action[validateEicr].description = "This action represents the validation of the eICR. It subsequently calls route-and-send." (exactly)
* action[validateEicr].code = USPublicHealthPlanDefinitionActions#validate-report
* action[validateEicr].relatedAction 1..1 MS
* action[validateEicr].relatedAction.actionId = "route-and-send-eicr" (exactly)
* action[validateEicr].relatedAction.relationship = #before-start (exactly)
* action[routeAndSendEicr] ^short = "Route and send eICR"
* action[routeAndSendEicr] ^definition = "Defines the routing and sending of the eICR."
* action[routeAndSendEicr].id 1.. MS
* action[routeAndSendEicr].id = "route-and-send-eicr" (exactly)
* action[routeAndSendEicr].description 1.. MS
* action[routeAndSendEicr].description = "This action represents the routing and sending of the eICR." (exactly)
* action[routeAndSendEicr].description ^short = "Description of the route and send action."
* action[routeAndSendEicr].description ^definition = "Description of the route and send action."
* action[routeAndSendEicr].textEquivalent 1.. MS
* action[routeAndSendEicr].textEquivalent = "Route and send eICR" (exactly)
* action[routeAndSendEicr].code = USPublicHealthPlanDefinitionActions#submit-report
* action[encounterModified] ^short = "Encounter modified code"
* action[encounterModified] ^definition = "Defines the \"encounter-modified\" action"
* action[encounterModified].id 1.. MS
* action[encounterModified].id = "encounter-modified" (exactly)
* action[encounterModified].description 1.. MS
* action[encounterModified].description = "This action represents the start of the reporting workflow in response to the encounter-modified event" (exactly)
* action[encounterModified].description ^short = "Description of the \"encounter-modified\" action."
* action[encounterModified].description ^definition = "Description of the \"encounter-modified\" action."
* action[encounterModified].textEquivalent 1.. MS
* action[encounterModified].textEquivalent = "Start the reporting workflow in response to an encounter-modified event" (exactly)
* action[encounterModified].textEquivalent ^short = "Text equivalent of the \"encounter-modified\" action."
* action[encounterModified].textEquivalent ^definition = "Text equivalent of the \"encounter-modified\" action."
* action[encounterModified].code 1..1 MS
* action[encounterModified].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow
* action[encounterModified].code ^short = "Code for the \"encounter-modified\" action."
* action[encounterModified].code ^definition = "The US-PH-PlanDefinition-Action code for the \"encounter-modified\" action."
* action[encounterModified].trigger 1.. MS
* action[encounterModified].trigger obeys epd-1
* action[encounterModified].trigger ^short = "When the \"encounter-modified\" action should be triggered."
* action[encounterModified].trigger ^definition = "When the \"encounter-modified\" action should be triggered."
* action[encounterModified].trigger.extension ..*
//* action[encounterModified].trigger.extension only Extension
* action[encounterModified].trigger.extension ^slicing.discriminator.type = #value
* action[encounterModified].trigger.extension ^slicing.discriminator.path = "url"
* action[encounterModified].trigger.extension ^slicing.description = "Extensions are always sliced by (at least) url"
* action[encounterModified].trigger.extension ^slicing.rules = #open
* action[encounterModified].trigger.extension ^short = "Additional content defined by implementations"
* action[encounterModified].trigger.extension ^definition = "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."
* action[encounterModified].trigger.extension ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
* action[encounterModified].trigger.extension ^alias[0] = "extensions"
* action[encounterModified].trigger.extension ^alias[+] = "user content"
* action[encounterModified].trigger.extension ^base.path = "Element.extension"
* action[encounterModified].trigger.extension ^base.min = 0
* action[encounterModified].trigger.extension ^base.max = "*"
* action[encounterModified].trigger.extension ^isModifier = false
* action[encounterModified].trigger.extension ^isSummary = false
* action[encounterModified].trigger.extension[namedEventType] 0..1 MS
* action[encounterModified].trigger.extension[namedEventType] only USPublicHealthNamedEventTypeExtension
* action[encounterModified].trigger.extension[namedEventType] ^short = "Indicates the types of named events to subscribe to from the EHR."
* action[encounterModified].trigger.extension[namedEventType] ^definition = "Indicates the types of named events to subscribe to from the EHR."
* action[encounterModified].trigger.extension[namedEventType] ^base.path = "Element.extension"
* action[encounterModified].trigger.extension[namedEventType] ^base.min = 0
* action[encounterModified].trigger.extension[namedEventType] ^base.max = "*"
* action[encounterModified].trigger.extension[namedEventType] ^isModifier = false
* action[encounterModified].trigger.extension[namedEventType] ^isSummary = false
* action[encounterModified].trigger.type = #named-event (exactly)
* action[encounterModified].trigger.name = "encounter-modified" (exactly)
* action[encounterModified].trigger.name ^definition = "The name of the event, encounter-start in this case. For any action invoked as a result of this trigger, the triggering encounter is accessible via the context variable `%encounter`"
* action[encounterModified].action.condition.kind = #applicability (exactly)
* action[encounterModified].action.condition.expression 1.. MS
* action[encounterModified].action.condition.expression.language = #text/fhirpath (exactly)
* action[encounterModified].relatedAction 1..1 MS
* action[encounterModified].relatedAction.actionId = "create-eicr" (exactly)
* action[encounterModified].relatedAction.relationship = #before-start (exactly)