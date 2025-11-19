Instance: procedure-ecmo
InstanceOf: EICRProcedure
Title: "Procedure - Extracorporeal Membrane Oxygenation (ECMO)"
Description: "Example of an eICR Procedure instance representing an extracorporeal membrane oxygenation (ECMO) procedure performed on patient Eve Everywoman."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07afd"
* status = #completed
* code = $sct#233573008 "Extracorporeal membrane oxygenation (procedure)"
* code.text = "Extracorporeal membrane oxygenation (procedure)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* performedPeriod.start = "2020-11-01T12:55:26-07:00"
* performedPeriod.end = "2020-11-01T13:25:26-07:00"
* focalDevice.manipulated.reference = "Device/device-ecmo"