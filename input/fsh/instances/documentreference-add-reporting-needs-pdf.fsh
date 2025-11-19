Instance: documentreference-add-reporting-needs-pdf
InstanceOf: RRDocumentReference
Title: "RR DocumentReference example: Additional reporting needs"
Description: "Example of RR DocumentReference profile: Additional reporting needs"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-priority-extension"
* extension.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#RRVS16 "Action requested"
* status = #current
* type = $loinc#83910-0 "Public health Note"
* type.text = "Public health information"
* category = urn:oid:2.16.840.1.114222.4.5.274#RRVS8 "Additional reporting needs"
* category.text = "Additional reporting needs"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* description = "Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here."
* content.attachment.contentType = #application/pdf
* content.attachment.url = "http://example.org/epi/disease/zika/Supplemental_data_form.pdf"