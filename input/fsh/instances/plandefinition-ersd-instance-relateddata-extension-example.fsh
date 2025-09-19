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
* action[0].id = "start-workflow"
* action[=].description = "This action represents the start of the reporting workflow in response to the encounter-start event."
* action[=].textEquivalent = "Start the reporting workflow in response to an encounter-start event"
* action[=].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[=].trigger.id = "encounter-start"
* action[=].trigger.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-named-eventtype-extension"
* action[=].trigger.extension.valueCodeableConcept = USPublicHealthTriggerDefinitionNamedEvents#encounter-start "Indicates the start of an encounter"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "encounter-start"
* action[=].input[0].id = "patient"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].input[=].extension.valueString = "Patient/{{context.patientId}}"
* action[=].input[=].type = #Patient
* action[=].input[+].id = "encounter"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].input[=].extension.valueString = "Encounter/{{context.encounterId}}"
* action[=].input[=].type = #Encounter
* action[=].relatedAction.actionId = "check-suspected-disorder"
* action[=].relatedAction.relationship = #before-start
* action[=].relatedAction.offsetDuration = 1 'h'
* action[+].id = "check-suspected-disorder"
* action[=].description = "This action represents the start of the check suspected disorder reporting workflow in response to the encounter-start event."
* action[=].textEquivalent = "Check suspected disorders for immediate reportability and setup jobs for future reportability checks."
* action[=].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[=].action[0].id = "is-encounter-suspected-disorder"
* action[=].action[=].description = "This action represents the check for suspected disorder reportability to create the patients eICR."
* action[=].action[=].textEquivalent = "Check Trigger Codes based on Suspected Reportable Value set."
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%modifiedConditions.exists() or %modifiedLabResults.exists() or %modifiedMedicationOrders.exists()"
* action[=].action[=].input[0].id = "modifiedConditions"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Condition
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-sdtc-example"
* action[=].action[=].input[+].id = "modifiedLabResults"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Observation
* action[=].action[=].input[=].codeFilter.path = "value"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[=].action[=].input[+].id = "modifiedMedicationOrders"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #MedicationRequest
* action[=].action[=].input[=].codeFilter.path = "medication"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[=].action[=].relatedAction.actionId = "create-eicr"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[+].id = "continue-check-reportable"
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%encounter.where((status = 'in-progress' and period.start + %normalReportingDuration < now()) or status = 'finished' and period.end <= now() - 72 hours)"
* action[=].action[=].relatedAction.actionId = "check-reportable"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].relatedAction.offsetDuration.comparator = #<=
* action[=].action[=].relatedAction.offsetDuration = 6 'h'
* action[+].id = "check-reportable"
* action[=].description = "This action represents the check for suspected reportability of the eICR."
* action[=].textEquivalent = "Check Reportability and setup jobs for future reportability checks."
* action[=].code = USPublicHealthPlanDefinitionActions#execute-reporting-workflow
* action[=].action[0].id = "is-encounter-reportable"
* action[=].action[=].description = "This action represents the check for reportability to create the patients eICR."
* action[=].action[=].textEquivalent = "Check Trigger Codes based on RCTC Value sets."
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#check-trigger-codes
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration >= now()) and (%conditions.exists() or %encounters.exists() or %immunizations.exists() or %procedures.exists() or %procedureOrders.exists() or %labOrders.exists() or %labTests.exists() or %labResults.exists() or %medicationAdministrations.exists() or %medicationOrders.exists() or %medicationDispenses.exists())"
* action[=].action[=].input[0].id = "conditions"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Condition?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Condition
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* action[=].action[=].input[+].id = "encounters"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input[=].extension.valueString = "encounter"
* action[=].action[=].input[=].type = #Encounter
* action[=].action[=].input[=].codeFilter.path = "reasonCode"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* action[=].action[=].input[+].id = "immunizations"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Immunization?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Immunization
* action[=].action[=].input[=].codeFilter.path = "vaccineCode"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[=].action[=].input[+].id = "labOrders"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #ServiceRequest
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[=].action[=].input[+].id = "labTests"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Observation?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Observation
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[=].action[=].input[+].id = "diagnosticOrders"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "DiagnosticReport?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #DiagnosticReport
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* action[=].action[=].input[+].id = "procedureOrders"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "ServiceRequest?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #ServiceRequest
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example"
* action[=].action[=].input[+].id = "procedures"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "Procedure?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #Procedure
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-pctc-example"
* action[=].action[=].input[+].id = "medicationOrders"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "MedicationRequest?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #MedicationRequest
* action[=].action[=].input[=].codeFilter.path = "medication"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[=].action[=].input[+].id = "medicationDispenses"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "MedicationDispense?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #MedicationDispense
* action[=].action[=].input[=].codeFilter.path = "medication"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[=].action[=].input[+].id = "medicationAdministrations"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-fhirquerypattern-extension"
* action[=].action[=].input[=].extension.valueString = "MedicationAdministration?patient=Patient/{{context.patientId}}"
* action[=].action[=].input[=].type = #MedicationAdministration
* action[=].action[=].input[=].codeFilter.path = "medication"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* action[=].action[=].input[+].id = "labResults"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input[=].extension.valueString = "labTests"
* action[=].action[=].input[=].type = #Observation
* action[=].action[=].input[=].codeFilter.path = "value"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* action[=].action[=].input[+].id = "diagnosticResults"
* action[=].action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input[=].extension.valueString = "diagnosticOrders"
* action[=].action[=].input[=].type = #DiagnosticReport
* action[=].action[=].input[=].codeFilter.path = "code"
* action[=].action[=].input[=].codeFilter.valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* action[=].action[=].relatedAction.actionId = "create-eicr"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[+].id = "check-update-eicr"
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%last-eicr.last().entry.first().resource.date < now() - 72 hours"
* action[=].action[=].input.id = "last-eicr"
* action[=].action[=].input.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input.extension.valueString = "eicr-report"
* action[=].action[=].input.type = #Bundle
* action[=].action[=].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[=].action[=].relatedAction.actionId = "create-eicr"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[+].id = "is-encounter-in-progress"
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#evaluate-condition
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%`inprogress-encounter`.where(status = 'in-progress' and period.start + %normalReportingDuration >= now() and period.end <= now() - 72 hours)"
* action[=].action[=].input.id = "inprogress-encounter"
* action[=].action[=].input.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input.extension.valueString = "encounter"
* action[=].action[=].input.type = #Encounter
* action[=].action[=].relatedAction.actionId = "check-reportable"
* action[=].action[=].relatedAction.relationship = #before-start
* action[=].action[=].relatedAction.offsetDuration.comparator = #<=
* action[=].action[=].relatedAction.offsetDuration = 6 'h'
* action[=].action[+].id = "is-encounter-completed"
* action[=].action[=].code = USPublicHealthPlanDefinitionActions#complete-reporting
* action[=].action[=].condition.kind = #applicability
* action[=].action[=].condition.expression.language = #text/fhirpath
* action[=].action[=].condition.expression.expression = "%completedEncounter.exists(status = 'finished')"
* action[=].action[=].input.id = "completedEncounter"
* action[=].action[=].input.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].action[=].input.extension.valueString = "encounter"
* action[=].action[=].input.type = #Encounter
* action[+].id = "create-eicr"
* action[=].description = "This action represents the creation of the eICR. It subsequently calls validate."
* action[=].textEquivalent = "Create eICR"
* action[=].code = USPublicHealthPlanDefinitionActions#create-report
* action[=].input[0].id = "patient-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "patient"
* action[=].input[=].type = #Patient
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* action[=].input[+].id = "condition-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "conditions"
* action[=].input[=].type = #Condition
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* action[=].input[+].id = "encounter-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "encounters"
* action[=].input[=].type = #Encounter
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
* action[=].input[+].id = "mr-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "medicationOrders"
* action[=].input[=].type = #MedicationRequest
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
* action[=].input[+].id = "immz-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "immunizations"
* action[=].input[=].type = #Immunization
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
* action[=].input[+].id = "proc-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "procedures"
* action[=].input[=].type = #Procedure
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* action[=].input[+].id = "labResult-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "labResults"
* action[=].input[=].type = #Observation
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* action[=].input[+].id = "labOrder-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "labOrders"
* action[=].input[=].type = #ServiceRequest
* action[=].input[=].profile = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
* action[=].input[+].id = "diagnosticResult-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "diagnosticResults"
* action[=].input[=].type = #DiagnosticReport
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* action[=].input[+].id = "diagnosticOrder-data"
* action[=].input[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input[=].extension.valueString = "diagnosticOrders"
* action[=].input[=].type = #DiagnosticReport
* action[=].input[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* action[=].output.id = "eicr-report"
* action[=].output.type = #Bundle
* action[=].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[=].relatedAction.actionId = "validate-eicr"
* action[=].relatedAction.relationship = #before-start
* action[+].id = "validate-eicr"
* action[=].description = "This action represents the validation of the eICR. It subsequently calls route-and-send."
* action[=].textEquivalent = "Validate eICR"
* action[=].code = USPublicHealthPlanDefinitionActions#validate-report
* action[=].input.id = "generated-eicr-report"
* action[=].input.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input.extension.valueString = "eicr-report"
* action[=].input.type = #Bundle
* action[=].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[=].output.id = "valid-eicr-report"
* action[=].output.type = #Bundle
* action[=].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[=].relatedAction.actionId = "route-and-send-eicr"
* action[=].relatedAction.relationship = #before-start
* action[+].id = "route-and-send-eicr"
* action[=].description = "This action represents the routing and sending of the eICR."
* action[=].textEquivalent = "Route and send eICR"
* action[=].code = USPublicHealthPlanDefinitionActions#submit-report
* action[=].input.id = "validated-eicr-report"
* action[=].input.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-relateddata-extension"
* action[=].input.extension.valueString = "valid-eicr-report"
* action[=].input.type = #Bundle
* action[=].input.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[=].output.id = "submitted-eicr-report"
* action[=].output.type = #Bundle
* action[=].output.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* action[+].id = "encounter-modified"
* action[=].description = "This action represents the start of the reporting workflow in response to the encounter-modified event"
* action[=].textEquivalent = "Start the reporting workflow in response to an encounter-modified event"
* action[=].code = USPublicHealthPlanDefinitionActions#initiate-reporting-workflow "Initiate a reporting workflow"
* action[=].trigger.id = "encounter-modified-trigger"
* action[=].trigger.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-named-eventtype-extension"
* action[=].trigger.extension.valueCodeableConcept = USPublicHealthTriggerDefinitionNamedEvents#encounter-modified "Indicates modifications to data elements of an encounter"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "encounter-modified"
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/fhirpath
* action[=].condition.expression.expression = "%encounter.where(period.start + %normalReportingDuration < now())"
* action[=].relatedAction.actionId = "create-eicr"
* action[=].relatedAction.relationship = #before-start