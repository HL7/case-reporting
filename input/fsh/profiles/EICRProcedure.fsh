Profile: EICRProcedure
Parent: USCoreProcedureProfile
Id: eicr-procedure
Title: "eICR Procedure"
Description: "This Procedure profile defines constraints on the US Core Procedure profile for the eICR use case."
* . ^short = "Defines constraints on the US Core Procedure profile for the case reporting use case."

* focalDevice MS
* focalDevice ^short = "Device such as a ventilator as the focus of the procedure"
* focalDevice ^definition = "A device that is implanted, removed or otherwise manipulated such as a ventilator as a focal portion of the Procedure."
* focalDevice.manipulated only Reference(Device)
* focalDevice.manipulated MS