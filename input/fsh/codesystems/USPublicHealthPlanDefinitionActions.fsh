CodeSystem: USPublicHealthPlanDefinitionActions
Id: us-ph-plandefinition-actions
Title: "US Public Health PlanDefinition Action Codes"
Description: "The US Public Health PlanDefinition Actions CodeSystem is a 'starter set' of codes supported for identifying actions in PlanDefinition."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-09-06"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/us-ph-plandefinition-action"
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^count = 18
* #initiate-reporting-workflow "Initiate a reporting workflow" "Request the initiation of a reporting workflow for a patient for a specific context (e.g., encounter)."
* #execute-reporting-workflow "Execute a series of actions to accomplish reporting" "This is top level action that uses other defined actions to accomplish reporting for a specific context (e.g., encounter)."
* #execute-reporting-workflow #check-trigger-codes "Evaluate candidate patient's data against trigger codes to determine reportability" "Evaluate candidate patient's data against trigger codes to determine reportability."
* #execute-reporting-workflow #evaluate-condition "Evaluate condition to determine reportability" "Evaluate condition to determine reportability."
* #execute-reporting-workflow #check-participant-registration "Evaluate participants in encounter for reportability" "Evaluate encounter participants such as patient, practitioner, organization on whether they have been selected for reportability."
* #execute-reporting-workflow #create-report "Create a Report containing Patient's data for patients who passed the check-reportability test" "Create a Report containing Patient's data for patients who passed the check-reportability test."
* #execute-reporting-workflow #validate-report "Validate Report against specified profiles and terminologies." "Validate Report against specified profiles and terminologies."
* #execute-reporting-workflow #submit-report "Submit the report to specified endpoint" "Submit the report to specified endpoint."
* #execute-reporting-workflow #deidentify-report "Deidentify the report before submitting the report" "Deidentify the report before submitting the report."
* #execute-reporting-workflow #anonymize-report "Anonymize the report before submitting the report" "Anonymize the report before submitting the report."
* #execute-reporting-workflow #pseudonymize-report "Pseudonymize the report before submitting the report" "Pseudonymize the report before submitting the report."
* #execute-reporting-workflow #encrypt-report "Encrypt the report before submitting the report" "Encrypt the report before submitting the report."
* #execute-reporting-workflow #complete-reporting "Complete reporting for the patient" "Complete the reporting for the patient, after which no further reports will be sent for a specific context (e.g., Encounter)."
* #execute-reporting-workflow #extract-research-data "Extract data from an EHR for one or more patients." "Extract data from an EHR for one or more patients for research purposes."
* #execute-reporting-workflow #execute-research-query "Execute a research query on the data mart." "Execute a research query on the data mart based on the PlanDefinition and create a result to be submitted."
* #terminate-reporting-workflow "Terminate a reporting workflow" "Request the initiation of terminating a reporting workflow."
* #terminate-reporting-workflow #cancel-report "Cancel an already submitted report" "Cancel an already submitted report."
* #report-chronic-disease-surveillance "Report Chronic Disease Surveillance" "This action represents the reporting of a Chronic Disease Surveillance report."