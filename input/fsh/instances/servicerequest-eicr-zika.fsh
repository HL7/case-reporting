Instance: servicerequest-eicr-zika
InstanceOf: EICRServiceRequest
Title: "ServiceRequest - Zika Virus Test for Eve Everywoman"
Description: "Example of an eICR ServiceRequest for Zika virus envelope E gene testing via NAA with probe detection for patient Eve Everywoman."
Usage: #example
* identifier.system = "http://example.org/lab.smarthealthit.org"
* identifier.value = "061ef612-344f-4e7b-81a8-1059ae7bbe11"
* status = #completed
* intent = #order
* category = $sct#386053000 "Evaluation procedure (procedure)"
* category.text = "Evaluation Procedure"
* code = $loinc#80825-3 "Zika virus envelope E gene [Presence] in Serum by NAA with probe detection"
* code.text = "Zika RT-PCR"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* performer.display = "Acme Labs"