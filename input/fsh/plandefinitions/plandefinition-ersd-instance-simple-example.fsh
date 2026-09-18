Instance: plandefinition-ersd-instance-simple-example
InstanceOf: ERSDPlanDefinition
Title: "eRSD PlanDefinition Instance Simple Example"
Description: "An example eRSD PlanDefinition"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "normalReportingDuration"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "14"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ambulatoryReportingDuration"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "1"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "dxTimeboxDuration"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "30"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "labTimeboxDuration"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "30"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "extendedTimeboxDuration"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "365"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "negativeLabResultValueSet"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1034'"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "encounterStartDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "{{context.encounterStartDate}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "encounterEndDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "{{context.encounterEndDate}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "lastReportSubmissionDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "{{context.lastReportSubmissionDate}}"
* url = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-simple-example"
* insert rsVersion
* name = "PlanDefinition_eRSD_Instance_Simple_Example"
* title = "eRSD PlanDefinition Instance Simple Example"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* status = #active
* experimental = true
* date = "2020-07-31T12:32:29.858-05:00"
* publisher = "HL7 Public Health Work Group"
* description = "An example ersd PlanDefinition"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* relatedArtifact[triggeringValueSetLibrary].type = #depends-on
* relatedArtifact[triggeringValueSetLibrary].label = "RCTC Value Set Library of Trigger Codes"
* relatedArtifact[triggeringValueSetLibrary].resource = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"
* action[encounterStart].id = "start-workflow"
* action[encounterStart].description = "This action represents the start of the reporting workflow in response to the encounter-start event."
* action[encounterStart].textEquivalent = "Start the reporting workflow in response to an encounter-start event"
* action[encounterStart].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[encounterStart].trigger.id = "encounter-start"
* action[encounterStart].trigger.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension"
* action[encounterStart].trigger.extension.valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-triggerdefinition-namedevents#encounter-start "Indicates the start of an encounter"
* action[encounterStart].trigger.type = #named-event
* action[encounterStart].trigger.name = "encounter-start"
* action[encounterStart].input[0].id = "patient"
* action[encounterStart].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[encounterStart].input[=].extension.valueString = "Patient/{{context.patientId}}"
* action[encounterStart].input[=].type = #Patient
* action[encounterStart].input[+].id = "encounter"
* action[encounterStart].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[encounterStart].input[=].extension.valueString = "Encounter/{{context.encounterId}}"
* action[encounterStart].input[=].type = #Encounter
* action[encounterStart].relatedAction.actionId = "check-for-immediate-reporting"
* action[encounterStart].relatedAction.relationship = #before-start
* action[encounterStart].relatedAction.offsetDuration = 1 'h'
* action[checkForImmediateReporting].id = "check-for-immediate-reporting"
* action[checkForImmediateReporting].description = "This action represents the start of the check suspected disorder reporting workflow in response to the encounter-start event."
* action[checkForImmediateReporting].textEquivalent = "Check suspected disorders for immediate reportability and setup jobs for future reportability checks."
* action[checkForImmediateReporting].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#execute-reporting-workflow
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].id = "is-encounter-immediately-reportable"
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].description = "This action represents the check for suspected disorder reportability to create the patients eICR."
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].textEquivalent = "Check Trigger Codes based on Suspected Reportable Value set."
* action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.kind = #applicability
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.expression.language = #text/fhirpath
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].condition.expression.expression = "%modifiedConditions.exists() or %modifiedLabResults.exists() or %modifiedMedicationOrders.exists()"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[0].id = "modifiedConditions"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].type = #Condition
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.path = "code"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-suspected-disorder-triggers-example"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[+].id = "modifiedLabResults"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].type = #Observation
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.path = "value"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[+].id = "modifiedMedicationOrders"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].type = #MedicationRequest
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.path = "medication"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].relatedAction.actionId = "create-eicr"
// * action[checkForImmediateReporting].action[isEncounterImmediatelyReportable].relatedAction.relationship = #before-start
* action[checkForImmediateReporting].action[continueCheckReportable].id = "continue-check-reportable"
* action[checkForImmediateReporting].action[continueCheckReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
* action[checkForImmediateReporting].action[terminateLateEncounter].id = "terminate-late-encounter"
* action[checkForImmediateReporting].action[terminateLateEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
// NOTE: condition and relatedAction are commented out on nested child actions below.
// PlanDefinition.action.action is a contentReference, so the validator does not honour
// profile constraints beneath it and rejects these elements as not allowed. The same
// workaround is applied to the pre-existing nested actions in this file.
// * action[checkForImmediateReporting].action[terminateLateEncounter].condition.kind = #applicability
// * action[checkForImmediateReporting].action[terminateLateEncounter].condition.expression.language = #text/fhirpath
// * action[checkForImmediateReporting].action[terminateLateEncounter].condition.expression.expression = "%terminatedencounter.where(((status = 'in-progress' or status = 'arrived') and %encounterStartDate + 1 day * %normalReportingDuration < now()) or (status = 'finished' and %encounterEndDate + 72 hours < now())).select(true)"
* action[checkForImmediateReporting].action[isLateEncounterCompleted].id = "is-late-encounter-completed"
* action[checkForImmediateReporting].action[isLateEncounterCompleted].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#complete-reporting
// * action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.kind = #applicability
// * action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.expression.language = #text/fhirpath
// * action[checkForImmediateReporting].action[isLateEncounterCompleted].condition.expression.expression = "%lateCompletedEncounter.exists(status = 'finished')"
// * action[checkForImmediateReporting].action[continueCheckReportable].condition.kind = #applicability
// * action[checkForImmediateReporting].action[continueCheckReportable].condition.expression.language = #text/fhirpath
// * action[checkForImmediateReporting].action[continueCheckReportable].condition.expression.expression = "%encounter.where((status = 'in-progress' and period.start + %normalReportingDuration < now()) or status = 'finished' and period.end <= now() - 72 hours)"
// * action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.actionId = "check-reportable"
// * action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.relationship = #before-start
// * action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration.comparator = #<=
// * action[checkForImmediateReporting].action[continueCheckReportable].relatedAction.offsetDuration = 6 'h'
* action[checkReportable].id = "check-reportable"
* action[checkReportable].description = "This action represents the check for suspected reportability of the eICR."
* action[checkReportable].textEquivalent = "Check Reportability and setup jobs for future reportability checks."
* action[checkReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#execute-reporting-workflow
* action[checkReportable].action[isEncounterReportable].id = "is-encounter-reportable"
* action[checkReportable].action[isEncounterReportable].description = "This action represents the check for reportability to create the patients eICR."
* action[checkReportable].action[isEncounterReportable].textEquivalent = "Check Trigger Codes based on RCTC Value sets."
* action[checkReportable].action[isEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
// * action[checkReportable].action[isEncounterReportable].condition.kind = #applicability
// * action[checkReportable].action[isEncounterReportable].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[isEncounterReportable].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration >= now()) and (%conditions.exists() or %encounters.exists() or %immunizations.exists() or %procedures.exists() or %procedureOrders.exists() or %labOrders.exists() or %labTests.exists() or %labResults.exists() or %medicationAdministrations.exists() or %medicationOrders.exists() or %medicationDispenses.exists())"
// * action[checkReportable].action[isEncounterReportable].input[0].id = "conditions"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Condition
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "encounters"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "encounter"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Encounter
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "reasonCode"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "immunizations"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Immunization?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Immunization
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "vaccineCode"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "labOrders"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #ServiceRequest
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "labTests"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Observation
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "diagnosticOrders"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "DiagnosticReport?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #DiagnosticReport
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "procedureOrders"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #ServiceRequest
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-procedure-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "procedures"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Procedure?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Procedure
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-procedure-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "medicationOrders"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationRequest
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "medicationDispenses"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationDispense?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationDispense
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "medicationAdministrations"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationAdministration?patient=Patient/{{context.patientId}}"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationAdministration
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-medications-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "labResults"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "labTests"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #Observation
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "value"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-organism-substance-triggers-example"
// * action[checkReportable].action[isEncounterReportable].input[+].id = "diagnosticResults"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "diagnosticOrders"
// * action[checkReportable].action[isEncounterReportable].input[=].type = #DiagnosticReport
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
// * action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-organism-substance-triggers-example"
// * action[checkReportable].action[isEncounterReportable].relatedAction.actionId = "create-eicr"
// * action[checkReportable].action[isEncounterReportable].relatedAction.relationship = #before-start
* action[checkReportable].action[checkUpdateEicr].id = "check-update-eicr"
* action[checkReportable].action[checkUpdateEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
// * action[checkReportable].action[checkUpdateEicr].condition.kind = #applicability
// * action[checkReportable].action[checkUpdateEicr].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[checkUpdateEicr].condition.expression.expression = "%last-eicr.last().entry.first().resource.date < now() - 72 hours"
// * action[checkReportable].action[checkUpdateEicr].input.id = "last-eicr"
// * action[checkReportable].action[checkUpdateEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[checkUpdateEicr].input.extension.valueString = "eicrreport"
// * action[checkReportable].action[checkUpdateEicr].input.type = #Bundle
// * action[checkReportable].action[checkUpdateEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
// * action[checkReportable].action[checkUpdateEicr].relatedAction.actionId = "create-eicr"
// * action[checkReportable].action[checkUpdateEicr].relatedAction.relationship = #before-start
* action[checkReportable].action[encounterInProgress].id = "is-encounter-in-progress"
* action[checkReportable].action[encounterInProgress].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
// * action[checkReportable].action[encounterInProgress].condition.kind = #applicability
// * action[checkReportable].action[encounterInProgress].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[encounterInProgress].condition.expression.expression = "%`inprogress-encounter`.where(status = 'in-progress' and period.start + %normalReportingDuration >= now() and period.end <= now() - 72 hours)"
// * action[checkReportable].action[encounterInProgress].input.id = "inprogress-encounter"
// * action[checkReportable].action[encounterInProgress].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[encounterInProgress].input.extension.valueString = "encounter"
// * action[checkReportable].action[encounterInProgress].input.type = #Encounter
// * action[checkReportable].action[encounterInProgress].relatedAction.actionId = "check-reportable"
// * action[checkReportable].action[encounterInProgress].relatedAction.relationship = #before-start
// * action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration.comparator = #<=
// * action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration = 6 'h'
* action[checkReportable].action[encounterComplete].id = "is-encounter-completed"
* action[checkReportable].action[encounterComplete].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#complete-reporting
* action[checkReportable].action[ambEncounterInProgress].id = "is-amb-encounter-in-progress"
* action[checkReportable].action[ambEncounterInProgress].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition
// * action[checkReportable].action[ambEncounterInProgress].condition.kind = #applicability
// * action[checkReportable].action[ambEncounterInProgress].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[ambEncounterInProgress].condition.expression.expression = "%ambinprogressencounter.where((status = 'in-progress' or status = 'arrived') and %encounterStartDate + 1 day * %ambulatoryReportingDuration >= now()).exists() and %ambinprogressencounter.where(class.code='AMB' or class.code='VR' or class.code='HH').exists()"
// * action[checkReportable].action[ambEncounterInProgress].relatedAction.actionId = "check-reportable"
// * action[checkReportable].action[ambEncounterInProgress].relatedAction.relationship = #before-start
* action[checkReportable].action[terminateEncounter].id = "terminate-encounter"
* action[checkReportable].action[terminateEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
// * action[checkReportable].action[terminateEncounter].condition.kind = #applicability
// * action[checkReportable].action[terminateEncounter].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[terminateEncounter].condition.expression.expression = "%termencounter.where(((status = 'in-progress' or status = 'arrived') and %encounterStartDate + 1 day * %normalReportingDuration < now()) or (status = 'finished' and %encounterEndDate + 72 hours < now())).exists() and %termencounter.where(class.code='IMP' or class.code='EMER' or class.code='OBSENC').exists()"
* action[checkReportable].action[terminateAmbEncounter].id = "terminate-amb-encounter"
* action[checkReportable].action[terminateAmbEncounter].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#terminate-reporting-workflow
// * action[checkReportable].action[terminateAmbEncounter].condition.kind = #applicability
// * action[checkReportable].action[terminateAmbEncounter].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[terminateAmbEncounter].condition.expression.expression = "%termambencounter.where(((status = 'in-progress' or status = 'arrived') and %encounterStartDate + 1 day * %ambulatoryReportingDuration < now()) or (status = 'finished' and %encounterEndDate + 72 hours < now())).exists() and %termambencounter.where(class.code='AMB' or class.code='VR' or class.code='HH').exists()"
// * action[checkReportable].action[encounterComplete].condition.kind = #applicability
// * action[checkReportable].action[encounterComplete].condition.expression.language = #text/fhirpath
// * action[checkReportable].action[encounterComplete].condition.expression.expression = "%completedEncounter.exists(status = 'finished')"
// * action[checkReportable].action[encounterComplete].input.id = "completedEncounter"
// * action[checkReportable].action[encounterComplete].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
// * action[checkReportable].action[encounterComplete].input.extension.valueString = "encounter"
// * action[checkReportable].action[encounterComplete].input.type = #Encounter
* action[createEicr].id = "create-eicr"
* action[createEicr].description = "This action represents the creation of the eICR. It subsequently calls validate."
* action[createEicr].textEquivalent = "Create eICR"
* action[createEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#create-report
* action[createEicr].input[0].id = "patient-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "patient"
* action[createEicr].input[=].type = #Patient
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* action[createEicr].input[+].id = "condition-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "conditions"
* action[createEicr].input[=].type = #Condition
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis"
* action[createEicr].input[+].id = "encounter-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "encounters"
* action[createEicr].input[=].type = #Encounter
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
* action[createEicr].input[+].id = "mr-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "medicationOrders"
* action[createEicr].input[=].type = #MedicationRequest
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
* action[createEicr].input[+].id = "immz-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "immunizations"
* action[createEicr].input[=].type = #Immunization
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
* action[createEicr].input[+].id = "proc-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "procedures"
* action[createEicr].input[=].type = #Procedure
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* action[createEicr].input[+].id = "labResult-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "labResults"
* action[createEicr].input[=].type = #Observation
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* action[createEicr].input[+].id = "labOrder-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "labOrders"
* action[createEicr].input[=].type = #ServiceRequest
* action[createEicr].input[=].profile = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
* action[createEicr].input[+].id = "diagnosticResult-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "diagnosticResults"
* action[createEicr].input[=].type = #DiagnosticReport
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* action[createEicr].input[+].id = "diagnosticOrder-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "diagnosticOrders"
* action[createEicr].input[=].type = #DiagnosticReport
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* action[createEicr].output.id = "eicrreport"
* action[createEicr].output.type = #Bundle
* action[createEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[createEicr].relatedAction.actionId = "validate-eicr"
* action[createEicr].relatedAction.relationship = #before-start
* action[validateEicr].id = "validate-eicr"
* action[validateEicr].description = "This action represents the validation of the eICR. It subsequently calls route-and-send."
* action[validateEicr].textEquivalent = "Validate eICR"
* action[validateEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#validate-report
* action[validateEicr].input.id = "generated-eicr-report"
* action[validateEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[validateEicr].input.extension.valueString = "eicrreport"
* action[validateEicr].input.type = #Bundle
* action[validateEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[validateEicr].output.id = "valideicrreport"
* action[validateEicr].output.type = #Bundle
* action[validateEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[validateEicr].relatedAction.actionId = "route-and-send-eicr"
* action[validateEicr].relatedAction.relationship = #before-start
* action[routeAndSendEicr].id = "route-and-send-eicr"
* action[routeAndSendEicr].description = "This action represents the routing and sending of the eICR."
* action[routeAndSendEicr].textEquivalent = "Route and send eICR"
* action[routeAndSendEicr].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#submit-report
* action[routeAndSendEicr].input.id = "validated-eicr-report"
* action[routeAndSendEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[routeAndSendEicr].input.extension.valueString = "valideicrreport"
* action[routeAndSendEicr].input.type = #Bundle
* action[routeAndSendEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[routeAndSendEicr].output.id = "submittedeicrreport"
* action[routeAndSendEicr].output.type = #Bundle
* action[routeAndSendEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[encounterModified].id = "encounter-modified"
* action[encounterModified].description = "This action represents the start of the reporting workflow in response to the encounter-modified event"
* action[encounterModified].textEquivalent = "Start the reporting workflow in response to an encounter-modified event"
* action[encounterModified].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[encounterModified].trigger.id = "encounter-modified-trigger"
* action[encounterModified].trigger.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension"
* action[encounterModified].trigger.extension.valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-triggerdefinition-namedevents#encounter-modified "Indicates modifications to data elements of an encounter"
* action[encounterModified].trigger.type = #named-event
* action[encounterModified].trigger.name = "encounter-modified"
* action[encounterModified].condition.kind = #applicability
* action[encounterModified].condition.expression.language = #text/fhirpath
* action[encounterModified].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration < now())"
* action[encounterModified].relatedAction.actionId = "is-modified-encounter-reportable"
* action[encounterModified].relatedAction.relationship = #before-start

* action[isModifiedEncounterReportable].id = "is-modified-encounter-reportable"
* action[isModifiedEncounterReportable].description = "This action represents the check for reportability to create the patients eICR."
* action[isModifiedEncounterReportable].textEquivalent = "Check Trigger Codes based on RCTC Value sets."
* action[isModifiedEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#check-trigger-codes
* action[isModifiedEncounterReportable].condition.kind = #applicability
* action[isModifiedEncounterReportable].condition.expression.language = #text/fhirpath
* action[isModifiedEncounterReportable].condition.expression.expression = "%modifiedConditions.exists() or %modifiedEncounterDiagnoses.exists() or %modifiedLabOrders.exists() or %modifiedLabResults.exists() or %modifiedImmunizations.exists()"
* action[isModifiedEncounterReportable].input[0].id = "modifiedConditions"
* action[isModifiedEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[isModifiedEncounterReportable].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}&category=problem-list-item"
* action[isModifiedEncounterReportable].input[=].type = #Condition
* action[isModifiedEncounterReportable].input[=].codeFilter.path = "code"
* action[isModifiedEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
* action[isModifiedEncounterReportable].input[+].id = "modifiedEncounterDiagnoses"
* action[isModifiedEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[isModifiedEncounterReportable].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}&category=encounter-diagnosis"
* action[isModifiedEncounterReportable].input[=].type = #Condition
* action[isModifiedEncounterReportable].input[=].codeFilter.path = "code"
* action[isModifiedEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
* action[isModifiedEncounterReportable].input[+].id = "modifiedLabOrders"
* action[isModifiedEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[isModifiedEncounterReportable].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
* action[isModifiedEncounterReportable].input[=].type = #ServiceRequest
* action[isModifiedEncounterReportable].input[=].codeFilter.path = "code"
* action[isModifiedEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
* action[isModifiedEncounterReportable].input[+].id = "modifiedLabResults"
* action[isModifiedEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[isModifiedEncounterReportable].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
* action[isModifiedEncounterReportable].input[=].type = #Observation
* action[isModifiedEncounterReportable].input[=].codeFilter.path = "code"
* action[isModifiedEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lab-obs-test-name-triggers-example"
* action[isModifiedEncounterReportable].input[+].id = "modifiedImmunizations"
* action[isModifiedEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern"
* action[isModifiedEncounterReportable].input[=].extension.valueString = "Immunization?patient=Patient/{{context.patientId}}"
* action[isModifiedEncounterReportable].input[=].type = #Immunization
* action[isModifiedEncounterReportable].relatedAction.actionId = "create-eicr"
* action[isModifiedEncounterReportable].relatedAction.relationship = #before-start
