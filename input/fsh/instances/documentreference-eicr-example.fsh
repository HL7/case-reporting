Instance: documentreference-eicr-example
InstanceOf: $us-core-documentreference
Usage: #example
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:db734647-fc99-424c-a864-7e3cda82e703"
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.99999.19"
* identifier.value = "sTT988#1"
* status = #current
* type = $loinc#55751-2 "Public health Case report"
* category = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject = Reference(Patient/patient-ecr-eve-everywoman)
* content.attachment.contentType = #text/plain
* content.attachment.url = "urn:hl7ii:2.16.840.1.113883.19.5.99999.19:1"