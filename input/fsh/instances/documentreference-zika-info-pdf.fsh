Instance: documentreference-zika-info-pdf
InstanceOf: RRDocumentReference
Title: "RR DocumentReference example: Zika info"
Description: "Example of RR DocumentReference profile: Zika info"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-priority-extension"
* extension.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#RRVS17 "Immediate action required"
* status = #current
* type = $loinc#83910-0 "Public health Note"
* type.text = "Public health information"
* category = urn:oid:2.16.840.1.114222.4.5.274#RRVS13 "Outbreak- or Cluster Related"
* category.text = "Outbreak- or Cluster Related"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* description = "Local mosquito-borne Zika virus creation was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted."
* content.attachment.contentType = #application/pdf
* content.attachment.url = "http://statedepartmentofhealth.gov/epi/disease/zika/outbreakinfo.pdf"