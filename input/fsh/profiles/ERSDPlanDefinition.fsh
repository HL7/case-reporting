Profile: ERSDPlanDefinition
Parent: USPublicHealthPlanDefinition
Id: ersd-plandefinition
Title: "eRSD PlanDefinition"
Description: "This PlanDefinition profile defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician. The rules for determining reportability described by an eRSD specification involve the use of triggering codes to determine potentially reportable events, and optionally locally evaluated rules for determining suspected reportable events. The final determination of reportability is made by the Public Health Agency or Agencies appropriate for the event, and may be performed by a combination of decisions occurring at various points during the processing of an eICR, as explained in the Reportability Response profile."
* . ^short = "eRSD - electronic Reporting and Surveillance Distribution"
* . ^definition = "Defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician."

// * extension MS
// * extension ^slicing.discriminator.type = #value
// * extension ^slicing.discriminator.path = "url"
// * extension ^slicing.rules = #open
// * extension ^definition = "Defines variables for the PlanDefinition."
* extension contains http://hl7.org/fhir/StructureDefinition/variable named variable 0..* MS
* extension[variable] ^short = "Defines variables for the PlanDefinition."
* extension[variable] ^definition = "Defines variables for the PlanDefinition."
* action 8.. MS
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "id"
* action ^slicing.ordered = true
* action ^slicing.rules = #open
// * action.code 0..1 MS
// * action.code from USPublicHealthPlanDefinitionAction (extensible)
// * action.code ^binding.description = "The set of actions that can be used to create plan definition"
* action.input.extension MS
* action.input.extension ^slicing.discriminator.type = #value
* action.input.extension ^slicing.discriminator.path = "url"
* action.input.extension ^slicing.rules = #open
* action.input.extension ^definition = "Defines extensions for the action."
* action.input.extension contains http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern named fhirquerypattern 0..1 MS
* action.input.extension[fhirquerypattern].url 1..1 MS
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetDuration ^definition = "The duration quantity may include a comparator, indicating how the offset should be applied. For example, <= 1 hour, meaning that the offset should be no more than 1 hour. This allows systems flexibility in scheduling the actions to isolate reporting activities to off hours."
* action contains
    encounterStart 1..1 MS and
    checkForImmediateReporting 1..1 MS and
    checkReportable 1..1 MS and
    createEicr 1..1 MS and
    validateEicr 1..1 MS and
    routeAndSendEicr 1..1 MS and
    encounterModified 1..1 MS and
    isModifiedEncounterReportable 1..1 MS
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
* action[encounterStart].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow
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
// * action[encounterStart].trigger.extension contains 
    // USPublicHealthNamedEventTypeExtension named namedEventType 0..1 MS
// * action[encounterStart].trigger.extension[namedEventType] 0..1 MS
// * action[encounterStart].trigger.extension[namedEventType] only USPublicHealthNamedEventTypeExtension
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
* action[encounterStart].relatedAction.actionId = "check-for-immediate-reporting" (exactly)
* action[encounterStart].relatedAction.relationship = #before-start (exactly)
* action[encounterStart].relatedAction.offsetDuration 0..1
* action[encounterStart].relatedAction.offsetDuration only Duration
* action[encounterStart].relatedAction.offsetDuration ^example.label = "Wait 1 hour before next action."
* action[encounterStart].relatedAction.offsetDuration ^example.valueDuration.value = 1
* action[encounterStart].relatedAction.offsetDuration ^example.valueDuration.unit = "h"

* action[checkForImmediateReporting] ^short = "Check for immediate reporting"
* action[checkForImmediateReporting] ^definition = "Defines the \"check-for-immediate-reporting\" action, which checks for immediately reportable evidence and schedules the subsequent reportability checks."
* action[checkForImmediateReporting].id 1.. MS
* action[checkForImmediateReporting].id = "check-for-immediate-reporting" (exactly)
* action[checkForImmediateReporting].description 1.. MS
* action[checkForImmediateReporting].description = "This action represents the start of the check suspected disorder reporting workflow in response to the encounter-start event." (exactly)
* action[checkForImmediateReporting].description ^short = "Description of the check for immediate reporting action."
* action[checkForImmediateReporting].description ^definition = "Description of the check for immediate reporting action."
* action[checkForImmediateReporting].code 1..1 MS
* action[checkForImmediateReporting].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#execute-reporting-workflow
* action[checkForImmediateReporting].code ^short = "Code for the \"check-for-immediate-reporting\" action."
* action[checkForImmediateReporting].code ^definition = "The US-PH-PlanDefinition-Action code for the \"check-for-immediate-reporting\" action."
* action[checkForImmediateReporting].action 4..
* action[checkForImmediateReporting].action ^slicing.discriminator.type = #value
* action[checkForImmediateReporting].action ^slicing.discriminator.path = "id"
* action[checkForImmediateReporting].action ^slicing.rules = #open
* action[checkForImmediateReporting].action contains
    isEncounterImmediatelyReportable 1..1 MS and
    continueCheckReportable 1..1 MS and
    terminateLateEncounter 1..1 MS and
    isLateEncounterCompleted 1..1 MS
//* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable] only BackboneElement
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].id 1.. MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].id = "is-encounter-immediately-reportable" (exactly)
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].code 1.. MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition 0..* MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.kind = #applicability (exactly)
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.expression 1.. MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.expression.language = #text/fhirpath (exactly)
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input 0..* MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named '%[id]' using the 'id' of the input data requirement"
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input.id 1..1 MS
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named '%[id]'"
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].relatedAction.actionId = "create-eicr" (exactly)
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].relatedAction.relationship = #before-start (exactly)
//* action[checkForImmediateReporting].action[continueCheckReportable] only BackboneElement
* action[checkForImmediateReporting].action[continueCheckReportable].id 1.. MS
* action[checkForImmediateReporting].action[continueCheckReportable].id = "continue-check-reportable" (exactly)
* action[checkForImmediateReporting].action[continueCheckReportable].code 1..
* action[checkForImmediateReporting].action[continueCheckReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
* action[checkForImmediateReporting].action[continueCheckReportable].condition.kind = #applicability (exactly)
* action[checkForImmediateReporting].action[continueCheckReportable].condition.expression 1.. MS
* action[checkForImmediateReporting].action[continueCheckReportable].condition.expression.language = #text/fhirpath (exactly)
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.actionId = "check-reportable" (exactly)
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.relationship = #before-start (exactly)
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration 0..1
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration only Duration
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration ^example.label = "Wait 6 hours before next action."
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration ^example.valueDuration.value = 6
* action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration ^example.valueDuration.unit = "h"

* action[checkForImmediateReporting].action[terminateLateEncounter] ^short = "Terminate a late encounter"
* action[checkForImmediateReporting].action[terminateLateEncounter] ^definition = "Terminates the reporting workflow for an encounter that is still in progress beyond the normal reporting duration, or that ended more than the post-encounter grace period ago."
* action[checkForImmediateReporting].action[terminateLateEncounter].id 1.. MS
* action[checkForImmediateReporting].action[terminateLateEncounter].id = "terminate-late-encounter" (exactly)
* action[checkForImmediateReporting].action[terminateLateEncounter].code 1..
* action[checkForImmediateReporting].action[terminateLateEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
* action[checkForImmediateReporting].action[terminateLateEncounter].condition 0..* MS
* action[checkForImmediateReporting].action[terminateLateEncounter].condition.kind = #applicability (exactly)
* action[checkForImmediateReporting].action[terminateLateEncounter].condition.expression 1.. MS
* action[checkForImmediateReporting].action[terminateLateEncounter].condition.expression.language = #text/fhirpath (exactly)
* action[checkForImmediateReporting].action[isLateEncounterCompleted] ^short = "Late encounter completed"
* action[checkForImmediateReporting].action[isLateEncounterCompleted] ^definition = "Records completion of reporting for an encounter that finished after its reporting window had elapsed. Ambulatory encounters use the ambulatory reporting duration; inpatient encounters use the normal reporting duration."
* action[checkForImmediateReporting].action[isLateEncounterCompleted].id 1.. MS
* action[checkForImmediateReporting].action[isLateEncounterCompleted].id = "is-late-encounter-completed" (exactly)
* action[checkForImmediateReporting].action[isLateEncounterCompleted].code 1..
* action[checkForImmediateReporting].action[isLateEncounterCompleted].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#complete-reporting
* action[checkForImmediateReporting].action[isLateEncounterCompleted].condition 0..* MS
* action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.kind = #applicability (exactly)
* action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.expression 1.. MS
* action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable] ^short = "Check the encounter for reportability"
* action[checkReportable] ^definition = "Defines the checking of the encounter for reportability."
* action[checkReportable].id 1.. MS
* action[checkReportable].id = "check-reportable" (exactly)
* action[checkReportable].description = "This action represents the check for suspected reportability of the eICR." (exactly)
* action[checkReportable].description ^short = "Description of the Periodic Update of eICR action."
* action[checkReportable].description ^definition = "Description of the Periodic Update of eICR action within the eICR action."
* action[checkReportable].code 1..
* action[checkReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#execute-reporting-workflow
* action[checkReportable].action 7..
* action[checkReportable].action ^slicing.discriminator.type = #value
* action[checkReportable].action ^slicing.discriminator.path = "id"
* action[checkReportable].action ^slicing.rules = #open
* action[checkReportable].action contains
    isEncounterReportable 1..1 MS and
    checkUpdateEicr 1..1 MS and
    encounterInProgress 1..1 MS and
    ambEncounterInProgress 1..1 MS and
    terminateEncounter 1..1 MS and
    terminateAmbEncounter 1..1 MS and
    encounterComplete 1..1 MS
//* action[checkReportable].action[isEncounterReportable] only BackboneElement
* action[checkReportable].action[isEncounterReportable].id 1.. MS
* action[checkReportable].action[isEncounterReportable].id = "is-encounter-reportable" (exactly)
* action[checkReportable].action[isEncounterReportable].code 1..
* action[checkReportable].action[isEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
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
* action[checkReportable].action[checkUpdateEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
* action[checkReportable].action[checkUpdateEicr].condition.kind = #applicability (exactly)
* action[checkReportable].action[checkUpdateEicr].condition.expression 1.. MS
* action[checkReportable].action[checkUpdateEicr].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[checkUpdateEicr].relatedAction.actionId = "create-eicr" (exactly)
* action[checkReportable].action[checkUpdateEicr].relatedAction.relationship = #before-start (exactly)
//* action[checkReportable].action[encounterInProgress] only BackboneElement
* action[checkReportable].action[encounterInProgress].id 1.. MS
* action[checkReportable].action[encounterInProgress].id = "is-encounter-in-progress" (exactly)
* action[checkReportable].action[encounterInProgress].code 1..
* action[checkReportable].action[encounterInProgress].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
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

// 2025-11-16 added encounterComplete
* action[checkReportable].action[encounterComplete].id 1.. MS
* action[checkReportable].action[encounterComplete].id = "is-encounter-completed" (exactly)
* action[checkReportable].action[encounterComplete].code 1..
* action[checkReportable].action[encounterComplete].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#complete-reporting
* action[checkReportable].action[encounterComplete].condition.kind = #applicability (exactly)
* action[checkReportable].action[encounterComplete].condition.expression 1.. MS
* action[checkReportable].action[encounterComplete].condition.expression.language = #text/fhirpath (exactly)


* action[checkReportable].action[ambEncounterInProgress] ^short = "Ambulatory encounter in progress"
* action[checkReportable].action[ambEncounterInProgress] ^definition = "Continues the reportability check loop for an ambulatory encounter that is still in progress and within the ambulatory reporting duration."
* action[checkReportable].action[ambEncounterInProgress].id 1.. MS
* action[checkReportable].action[ambEncounterInProgress].id = "is-amb-encounter-in-progress" (exactly)
* action[checkReportable].action[ambEncounterInProgress].code 1..
* action[checkReportable].action[ambEncounterInProgress].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
* action[checkReportable].action[ambEncounterInProgress].condition 0..* MS
* action[checkReportable].action[ambEncounterInProgress].condition.kind = #applicability (exactly)
* action[checkReportable].action[ambEncounterInProgress].condition.expression 1.. MS
* action[checkReportable].action[ambEncounterInProgress].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[ambEncounterInProgress].relatedAction.actionId = "check-reportable" (exactly)
* action[checkReportable].action[ambEncounterInProgress].relatedAction.relationship = #before-start (exactly)
* action[checkReportable].action[ambEncounterInProgress].relatedAction.offsetDuration 0..1
* action[checkReportable].action[ambEncounterInProgress].relatedAction.offsetDuration only Duration
* action[checkReportable].action[terminateEncounter] ^short = "Terminate an inpatient encounter"
* action[checkReportable].action[terminateEncounter] ^definition = "Terminates the reporting workflow for an inpatient, emergency or observation encounter that has passed the normal reporting duration or the post-encounter grace period."
* action[checkReportable].action[terminateEncounter].id 1.. MS
* action[checkReportable].action[terminateEncounter].id = "terminate-encounter" (exactly)
* action[checkReportable].action[terminateEncounter].code 1..
* action[checkReportable].action[terminateEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
* action[checkReportable].action[terminateEncounter].condition 0..* MS
* action[checkReportable].action[terminateEncounter].condition.kind = #applicability (exactly)
* action[checkReportable].action[terminateEncounter].condition.expression 1.. MS
* action[checkReportable].action[terminateEncounter].condition.expression.language = #text/fhirpath (exactly)
* action[checkReportable].action[terminateAmbEncounter] ^short = "Terminate an ambulatory encounter"
* action[checkReportable].action[terminateAmbEncounter] ^definition = "Terminates the reporting workflow for an ambulatory, virtual or home health encounter that has passed the ambulatory reporting duration or the post-encounter grace period."
* action[checkReportable].action[terminateAmbEncounter].id 1.. MS
* action[checkReportable].action[terminateAmbEncounter].id = "terminate-amb-encounter" (exactly)
* action[checkReportable].action[terminateAmbEncounter].code 1..
* action[checkReportable].action[terminateAmbEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
* action[checkReportable].action[terminateAmbEncounter].condition 0..* MS
* action[checkReportable].action[terminateAmbEncounter].condition.kind = #applicability (exactly)
* action[checkReportable].action[terminateAmbEncounter].condition.expression 1.. MS
* action[checkReportable].action[terminateAmbEncounter].condition.expression.language = #text/fhirpath (exactly)
* action[createEicr] ^short = "Create the eICR"
* action[createEicr] ^definition = "Defines the \"create-eicr\" action"
* action[createEicr].id 1.. MS
* action[createEicr].id = "create-eicr" (exactly)
* action[createEicr].description = "This action represents the creation of the eICR. It subsequently calls validate." (exactly)
* action[createEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#create-report
* action[createEicr].relatedAction 1..1 MS
* action[createEicr].relatedAction.actionId = "validate-eicr" (exactly)
* action[createEicr].relatedAction.relationship = #before-start (exactly)
* action[validateEicr] ^short = "Validate the eICR"
* action[validateEicr] ^definition = "Defines the \"validate-eicr\" action"
* action[validateEicr].id 1.. MS
* action[validateEicr].id = "validate-eicr" (exactly)
* action[validateEicr].description = "This action represents the validation of the eICR. It subsequently calls route-and-send." (exactly)
* action[validateEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#validate-report
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
* action[routeAndSendEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#submit-report
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
* action[encounterModified].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow
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
// * action[encounterModified].trigger.extension contains USPublicHealthNamedEventTypeExtension named namedEventType 0..1 MS
// * action[encounterModified].trigger.extension[namedEventType] 0..1 MS
// * action[encounterModified].trigger.extension[namedEventType] only USPublicHealthNamedEventTypeExtension
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
* action[encounterModified].relatedAction 1..1 MS
* action[encounterModified].relatedAction.actionId = "is-modified-encounter-reportable" (exactly)
* action[encounterModified].relatedAction.relationship = #before-start (exactly)

* action[isModifiedEncounterReportable] ^short = "Check a modified encounter for reportability"
* action[isModifiedEncounterReportable] ^definition = "Checks a modified encounter against the trigger code value sets. Invoked by the \"encounter-modified\" action and, when reportable, invokes \"create-eicr\"."
* action[isModifiedEncounterReportable].id 1.. MS
* action[isModifiedEncounterReportable].id = "is-modified-encounter-reportable" (exactly)
* action[isModifiedEncounterReportable].code 1..
* action[isModifiedEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
* action[isModifiedEncounterReportable].condition 0..* MS
* action[isModifiedEncounterReportable].condition ^short = "Applicability condition for the modified-encounter reportability check."
* action[isModifiedEncounterReportable].condition.kind = #applicability (exactly)
* action[isModifiedEncounterReportable].condition.expression 1.. MS
* action[isModifiedEncounterReportable].condition.expression.language = #text/fhirpath (exactly)
* action[isModifiedEncounterReportable].description 1.. MS
* action[isModifiedEncounterReportable].input 0..* MS
* action[isModifiedEncounterReportable].input.id 1..1 MS
* action[isModifiedEncounterReportable].relatedAction 1..1 MS
* action[isModifiedEncounterReportable].relatedAction.actionId = "create-eicr" (exactly)
* action[isModifiedEncounterReportable].relatedAction.relationship = #before-start (exactly)
