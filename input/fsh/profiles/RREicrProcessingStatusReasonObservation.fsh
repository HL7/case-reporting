Profile: RREicrProcessingStatusReasonObservation
Parent: Observation
Id: rr-eicr-processing-status-reason-observation
Title: "eICR Processing Status Reason Observation"
Description: "This Observation profile represents, if the incoming eICR was not successfully processed for a determination of reportability, the reason it was not processed."
* . ^short = "eICR Processing Status Reason"
* . ^definition = "If the incoming eICR was not successfully processed for a determination of reportability, contains the reason it was not processed.  If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version fo the RCTC, these are flagged and compoent observations will hold the details of the outdated and expected versions of the RCTC."

* status = #final (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code = urn:oid:2.16.840.1.114222.4.5.232#RR6 "eICR Processing Status Reason"
* value[x] only CodeableConcept
* value[x] from RRVS_eICRProcessingStatusReason_eCR (extensible)
* value[x] ^short = "Processing status reason"
* value[x] ^definition = "If the incoming eICR was not successfully processed for a determination of reportability, contains the reason it was not processed."
* value[x] ^binding.description = "Processing Status Reason"
* component MS
* component ^short = "eICR Processing Status Reason Detail"
* component ^definition = "Further details about eICR processing status warnings or errors. If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, will contain the details of the outdated and expected versions of the RCTC."
* component.code MS
* component.code from RRVS_ProcessingStatusReasonDetailType_eCR (extensible)
* component.code ^short = "Type of processing status reason detail"
* component.code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.code ^binding.extension.valueString = "ObservationCode"
* component.code ^binding.description = "Processing Status Reason Detail Type"
* component.value[x] 1.. MS
* component.value[x] only CodeableConcept or string
* component.value[x] ^short = "Processing status reason detail"