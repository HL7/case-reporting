Profile: RR_Eicr_Processing_Status_Observation
Parent: Observation
Id: rr-eicr-processing-status-observation
Title: "eICR Processing Status Observation"
Description: "This Observation profile represents the  eICR processing status."





* . ^short = "eICR Processing Status"
* . ^definition = "Indicates the eICR processing status. If it was not processed or was processed with a warning, the reason and details will be contained in the related eICR Processing Status Reason resource."
* status = #final (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code MS
* code from RRVS_eICRProcessingStatus_eCR (extensible)
* code ^short = "eICR Processing Status"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.description = "Processing Status"
* hasMember only Reference(RR_Eicr_Processing_Status_Reason_Observation)