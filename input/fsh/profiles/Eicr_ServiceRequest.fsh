Profile: Eicr_ServiceRequest
Parent: ServiceRequest
Id: eicr-servicerequest
Title: "eICR ServiceRequest"
Description: "This ServiceRequest profile represents eICR laboratory orders and other diagnostics for the eICR event."
* . MS
* . ^short = "eICR ServiceRequest"
* . ^definition = "Ordered tests for the patient during the encounter."
* . ^base.path = "ServiceRequest"
* . ^base.min = 0
* . ^base.max = "*"
* . ^isModifier = false
* identifier 1.. MS
* identifier ^isModifier = false
* code 1..1 MS
* code from LOINCDiagnosticReportCodes (extensible)
* code ^isModifier = false
* code ^binding.description = "LOINC Diagnostic Report Codes"
* subject only Reference(Patient)
* occurrence[x] MS
* authoredOn MS
* authoredOn ^isModifier = false
* requester MS
* requester ^isModifier = false
* performer MS
* bodySite MS