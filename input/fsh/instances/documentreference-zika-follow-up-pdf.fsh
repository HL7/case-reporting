Instance: documentreference-zika-follow-up-pdf
InstanceOf: RRDocumentReference
Title: "RR DocumentReference example: Zika follow-up"
Description: "Example of RR DocumentReference profile: Zika follow-up"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-priority-extension"
* extension.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#RRVS18 "Immediate action requested"
* status = #current
* type = $loinc#83910-0 "Public health Note"
* type.text = "Public health information"
* category = urn:oid:2.16.840.1.114222.4.5.274#RRVS10 "Treatment and/or prevention"
* category.text = "Treatment and/or prevention"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* description = "Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy."
* content.attachment.contentType = #application/pdf
* content.attachment.url = "http://statedepartmentofhealth.gov/epi/diseases/zika/Zika_Virus_Testing_Guidance.pdf"