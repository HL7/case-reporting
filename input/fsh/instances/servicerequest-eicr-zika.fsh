Instance: servicerequest-eicr-zika
InstanceOf: EICRServiceRequest
Title: "eICR ServiceRequest Example"
Description: "Example of eICR ServiceRequest profile"
Usage: #example
* identifier.system = "http://lab.smarthealthit.org"
* identifier.value = "061ef612-344f-4e7b-81a8-1059ae7bbe11"
* status = #completed
* intent = #order
* category = $sct#103693007 "Diagnostic procedure (procedure)"
* category.text = "Diagnostics Procedure"
* code = $loinc#80825-3 "Zika virus envelope E gene [Presence] in Serum by NAA with probe detection"
* code.text = "Zika RT-PCR"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* performer.display = "Acme Labs"