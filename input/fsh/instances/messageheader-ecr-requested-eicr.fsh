Instance: messageheader-ecr-requested-eicr
InstanceOf: ECRMessageHeader
Title: "MessageHeader - Requested eICR"
Description: "Example of an eCR MessageHeader for a requested electronic initial case report indicating the source EHR software and destination public health agency."
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-data-encrypted-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-message-processing-category-extension"
* extension[=].valueCode = #consequence
* eventCoding = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-message-types#eicr-case-report-message "Indicates a message containing electronic case report healthcare data sent from clinical care."
* destination.name = "YMCA Acme Message Gateway"
* destination.target.reference = "Device/device-ecr-software-ymca"
* destination.endpoint = "http://example.org/ymca/fhir"
* sender.reference = "Organization/organization-ecr-salem-medical-center"
* source.name = "Acme Central Patient Registry"
* source.software = "FooBar Patient Manager"
* source.version = "3.1.45.AABB"
* source.contact.system = #phone
* source.contact.value = "+1 (555) 123 4567"
* source.endpoint = "http://example.org/salem-medical-center/fhir"
* reason = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-triggerdefinition-namedevents#encounter-close "Indicates the close of an encounter"
* focus.reference = "Bundle/bundle-eicr-document-zika"