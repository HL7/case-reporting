Profile: EICRServiceRequest
Parent: USCoreServiceRequestProfile
Id: eicr-servicerequest
Title: "eICR ServiceRequest"
Description: "This ServiceRequest profile represents eICR laboratory orders and other diagnostics for the eICR event."

* . ^short = "eICR ServiceRequest"
* . ^definition = "Ordered tests for the patient during the encounter."

* identifier 1.. MS
* identifier ^isModifier = false
* subject only Reference(USPublicHealthPatient)

* performer MS
* bodySite MS