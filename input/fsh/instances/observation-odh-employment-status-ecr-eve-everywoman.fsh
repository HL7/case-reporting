Instance: observation-odh-employment-status-ecr-eve-everywoman
InstanceOf: EmploymentStatus
Title: "ODH Employment Status Example: observation-odh-employment-status-ecr-eve-everywoman"
Description: "Example of ODH Employment Status profile (Eve Everywoman)"
Usage: #example
* status = #final
* code = $loinc#74165-2 "History of employment status NIOSH"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectivePeriod.start = "2015-04-24"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#Employed "Employed"