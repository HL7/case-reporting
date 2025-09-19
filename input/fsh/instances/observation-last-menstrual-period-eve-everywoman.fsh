Instance: observation-last-menstrual-period-eve-everywoman
InstanceOf: ObservationLastMenstrualPeriod
Title: "Last Menstrual Period Example: observation-last-menstrual-period-eve-everywoman"
Description: "Example of Last Menstrual Period (Eve Everywoman)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5ffea0ae-9ae5-4313-956a-30219b4a6afa"
* status = #final
* code = $loinc#8665-2 "Last menstrual period start date"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectiveDateTime = "2018-01-05T10:15:00+10:00"
* valueDateTime = "2017-08-01"