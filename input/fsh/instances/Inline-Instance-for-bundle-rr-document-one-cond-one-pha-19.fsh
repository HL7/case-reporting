Instance: Inline-Instance-for-bundle-rr-document-one-cond-one-pha-19
InstanceOf: RRDocumentReference
Usage: #inline
* id = "documentreference-add-reporting-needs-pdf"
* meta.versionId = "2"
* meta.lastUpdated = "2021-08-13T03:54:37.580+00:00"
* meta.source = "#CKG4Ip9hcAYHwI5b"
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
* content.attachment.url = "http://statedepartmentofhealth.gov/epi/disease/zika/Supplemental_data_form.pdf"