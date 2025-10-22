Instance: plandefinition-ersd-instance-relateddata-extension-example
InstanceOf: ERSDPlanDefinition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension.valueExpression.name = "normalReportingDuration"
* extension.valueExpression.language = #text/fhirpath
* extension.valueExpression.expression = "2 weeks"
* url = "http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-ersd-instance-relateddata-extension-example"
* version = "2.1.0"
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
* action[encounterStart].id = "start-workflow"
* action[encounterStart].description = "This action represents the start of the reporting workflow in response to the encounter-start event."
* action[encounterStart].textEquivalent = "Start the reporting workflow in response to an encounter-start event"
* action[encounterStart].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[encounterStart].trigger.id = "encounter-start"
* action[encounterStart].trigger.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension"
* action[encounterStart].trigger.extension.valueCodeableConcept = USPublicHealthTriggerDefinitionNamedEvents#encounter-start "Indicates the start of an encounter"
* action[encounterStart].trigger.type = #named-event
* action[encounterStart].trigger.name = "encounter-start"
* action[encounterStart].input[0].id = "patient"
* action[encounterStart].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[encounterStart].input[=].extension.valueString = "Patient/{{context.patientId}}"
* action[encounterStart].input[=].type = #Patient
* action[encounterStart].input[+].id = "encounter"
* action[encounterStart].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[encounterStart].input[=].extension.valueString = "Encounter/{{context.encounterId}}"
* action[encounterStart].input[=].type = #Encounter
* action[encounterStart].relatedAction.actionId = "check-suspected-disorder"
* action[encounterStart].relatedAction.relationship = #before-start
* action[encounterStart].relatedAction.offsetDuration = 1 'h'
* action[checkSuspectedDisorder].id = "check-suspected-disorder"
* action[checkSuspectedDisorder].description = "This action represents the start of the check suspected disorder reporting workflow in response to the encounter-start event."
* action[checkSuspectedDisorder].textEquivalent = "Check suspected disorders for immediate reportability and setup jobs for future reportability checks."
* action[checkSuspectedDisorder].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].id = "is-encounter-suspected-disorder"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].description = "This action represents the check for suspected disorder reportability to create the patients eICR."
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].textEquivalent = "Check Trigger Codes based on Suspected Reportable Value set."
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.kind = #applicability
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.expression.language = #text/fhirpath
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].condition.expression.expression = "%modifiedConditions.exists() or %modifiedLabResults.exists() or %modifiedMedicationOrders.exists()"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[0].id = "modifiedConditions"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].type = #Condition
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.path = "code"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-sdtc-example"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[+].id = "modifiedLabResults"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].type = #Observation
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.path = "value"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[+].id = "modifiedMedicationOrders"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].type = #MedicationRequest
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.path = "medication"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].relatedAction.actionId = "create-eicr"
* action[checkSuspectedDisorder].action[isEncounterSuspectedDisorder].relatedAction.relationship = #before-start
* action[checkSuspectedDisorder].action[continueCheckReportable].id = "continue-check-reportable"
* action[checkSuspectedDisorder].action[continueCheckReportable].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.kind = #applicability
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.expression.language = #text/fhirpath
* action[checkSuspectedDisorder].action[continueCheckReportable].condition.expression.expression = "%encounter.where((status = 'in-progress' and period.start + %normalReportingDuration < now()) or status = 'finished' and period.end <= now() - 72 hours)"
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.actionId = "check-reportable"
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.relationship = #before-start
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration.comparator = #<=
* action[checkSuspectedDisorder].action[continueCheckReportable].relatedAction.offsetDuration = 6 'h'
* action[checkReportable].id = "check-reportable"
* action[checkReportable].description = "This action represents the check for suspected reportability of the eICR."
* action[checkReportable].textEquivalent = "Check Reportability and setup jobs for future reportability checks."
* action[checkReportable].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[checkReportable].action[isEncounterReportable].id = "is-encounter-reportable"
* action[checkReportable].action[isEncounterReportable].description = "This action represents the check for reportability to create the patients eICR."
* action[checkReportable].action[isEncounterReportable].textEquivalent = "Check Trigger Codes based on RCTC Value sets."
* action[checkReportable].action[isEncounterReportable].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[checkReportable].action[isEncounterReportable].condition.kind = #applicability
* action[checkReportable].action[isEncounterReportable].condition.expression.language = #text/fhirpath
* action[checkReportable].action[isEncounterReportable].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration >= now()) and (%conditions.exists() or %encounters.exists() or %immunizations.exists() or %procedures.exists() or %procedureOrders.exists() or %labOrders.exists() or %labTests.exists() or %labResults.exists() or %medicationAdministrations.exists() or %medicationOrders.exists() or %medicationDispenses.exists())"
* action[checkReportable].action[isEncounterReportable].input[0].id = "conditions"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Condition
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "encounters"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "encounter"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Encounter
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "reasonCode"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "immunizations"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Immunization?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Immunization
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "vaccineCode"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "labOrders"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #ServiceRequest
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "labTests"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Observation
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "diagnosticOrders"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "DiagnosticReport?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #DiagnosticReport
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "procedureOrders"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #ServiceRequest
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "procedures"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "Procedure?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Procedure
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "medicationOrders"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationRequest
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "medicationDispenses"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationDispense?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationDispense
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "medicationAdministrations"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "MedicationAdministration?patient=Patient/{{context.patientId}}"
* action[checkReportable].action[isEncounterReportable].input[=].type = #MedicationAdministration
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "medication"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "labResults"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "labTests"
* action[checkReportable].action[isEncounterReportable].input[=].type = #Observation
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "value"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* action[checkReportable].action[isEncounterReportable].input[+].id = "diagnosticResults"
* action[checkReportable].action[isEncounterReportable].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[isEncounterReportable].input[=].extension.valueString = "diagnosticOrders"
* action[checkReportable].action[isEncounterReportable].input[=].type = #DiagnosticReport
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.path = "code"
* action[checkReportable].action[isEncounterReportable].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* action[checkReportable].action[isEncounterReportable].relatedAction.actionId = "create-eicr"
* action[checkReportable].action[isEncounterReportable].relatedAction.relationship = #before-start
* action[checkReportable].action[checkUpdateEicr].id = "check-update-eicr"
* action[checkReportable].action[checkUpdateEicr].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkReportable].action[checkUpdateEicr].condition.kind = #applicability
* action[checkReportable].action[checkUpdateEicr].condition.expression.language = #text/fhirpath
* action[checkReportable].action[checkUpdateEicr].condition.expression.expression = "%last-eicr.last().entry.first().resource.date < now() - 72 hours"
* action[checkReportable].action[checkUpdateEicr].input.id = "last-eicr"
* action[checkReportable].action[checkUpdateEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[checkUpdateEicr].input.extension.valueString = "eicr-report"
* action[checkReportable].action[checkUpdateEicr].input.type = #Bundle
* action[checkReportable].action[checkUpdateEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[checkReportable].action[checkUpdateEicr].relatedAction.actionId = "create-eicr"
* action[checkReportable].action[checkUpdateEicr].relatedAction.relationship = #before-start
* action[checkReportable].action[encounterInProgress].id = "is-encounter-in-progress"
* action[checkReportable].action[encounterInProgress].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[checkReportable].action[encounterInProgress].condition.kind = #applicability
* action[checkReportable].action[encounterInProgress].condition.expression.language = #text/fhirpath
* action[checkReportable].action[encounterInProgress].condition.expression.expression = "%`inprogress-encounter`.where(status = 'in-progress' and period.start + %normalReportingDuration >= now() and period.end <= now() - 72 hours)"
* action[checkReportable].action[encounterInProgress].input.id = "inprogress-encounter"
* action[checkReportable].action[encounterInProgress].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[encounterInProgress].input.extension.valueString = "encounter"
* action[checkReportable].action[encounterInProgress].input.type = #Encounter
* action[checkReportable].action[encounterInProgress].relatedAction.actionId = "check-reportable"
* action[checkReportable].action[encounterInProgress].relatedAction.relationship = #before-start
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration.comparator = #<=
* action[checkReportable].action[encounterInProgress].relatedAction.offsetDuration = 6 'h'
* action[checkReportable].action[+].id = "is-encounter-completed"
* action[checkReportable].action[=].code = USPublicHealthPlanDefinitionActions#complete-reporting
* action[checkReportable].action[=].condition.kind = #applicability
* action[checkReportable].action[=].condition.expression.language = #text/fhirpath
* action[checkReportable].action[=].condition.expression.expression = "%completedEncounter.exists(status = 'finished')"
* action[checkReportable].action[=].input.id = "completedEncounter"
* action[checkReportable].action[=].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[checkReportable].action[=].input.extension.valueString = "encounter"
* action[checkReportable].action[=].input.type = #Encounter
* action[createEicr].id = "create-eicr"
* action[createEicr].description = "This action represents the creation of the eICR. It subsequently calls validate."
* action[createEicr].textEquivalent = "Create eICR"
* action[createEicr].code = USPublicHealthPlanDefinitionActions#create-report
* action[createEicr].input[0].id = "patient-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "patient"
* action[createEicr].input[=].type = #Patient
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* action[createEicr].input[+].id = "condition-data"
* action[createEicr].input[=].extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[createEicr].input[=].extension.valueString = "conditions"
* action[createEicr].input[=].type = #Condition
* action[createEicr].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
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
* action[createEicr].output.id = "eicr-report"
* action[createEicr].output.type = #Bundle
* action[createEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[createEicr].relatedAction.actionId = "validate-eicr"
* action[createEicr].relatedAction.relationship = #before-start
* action[validateEicr].id = "validate-eicr"
* action[validateEicr].description = "This action represents the validation of the eICR. It subsequently calls route-and-send."
* action[validateEicr].textEquivalent = "Validate eICR"
* action[validateEicr].code = USPublicHealthPlanDefinitionActions#validate-report
* action[validateEicr].input.id = "generated-eicr-report"
* action[validateEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[validateEicr].input.extension.valueString = "eicr-report"
* action[validateEicr].input.type = #Bundle
* action[validateEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[validateEicr].output.id = "valid-eicr-report"
* action[validateEicr].output.type = #Bundle
* action[validateEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[validateEicr].relatedAction.actionId = "route-and-send-eicr"
* action[validateEicr].relatedAction.relationship = #before-start
* action[routeAndSendEicr].id = "route-and-send-eicr"
* action[routeAndSendEicr].description = "This action represents the routing and sending of the eICR."
* action[routeAndSendEicr].textEquivalent = "Route and send eICR"
* action[routeAndSendEicr].code = USPublicHealthPlanDefinitionActions#submit-report
* action[routeAndSendEicr].input.id = "validated-eicr-report"
* action[routeAndSendEicr].input.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-relateddata-extension"
* action[routeAndSendEicr].input.extension.valueString = "valid-eicr-report"
* action[routeAndSendEicr].input.type = #Bundle
* action[routeAndSendEicr].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[routeAndSendEicr].output.id = "submitted-eicr-report"
* action[routeAndSendEicr].output.type = #Bundle
* action[routeAndSendEicr].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[encounterModified].id = "encounter-modified"
* action[encounterModified].description = "This action represents the start of the reporting workflow in response to the encounter-modified event"
* action[encounterModified].textEquivalent = "Start the reporting workflow in response to an encounter-modified event"
* action[encounterModified].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[encounterModified].trigger.id = "encounter-modified-trigger"
* action[encounterModified].trigger.extension.url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension"
* action[encounterModified].trigger.extension.valueCodeableConcept = USPublicHealthTriggerDefinitionNamedEvents#encounter-modified "Indicates modifications to data elements of an encounter"
* action[encounterModified].trigger.type = #named-event
* action[encounterModified].trigger.name = "encounter-modified"
* action[encounterModified].condition.kind = #applicability
* action[encounterModified].condition.expression.language = #text/fhirpath
* action[encounterModified].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration < now())"
* action[encounterModified].relatedAction.actionId = "create-eicr"
* action[encounterModified].relatedAction.relationship = #before-start