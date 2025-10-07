Instance: messageheader-ecr-requested-eicr
InstanceOf: Ecr_MessageHeader
Title: "eCR MessageHeader Example: Requested eICR"
Description: "Example of eCR MessageHeader profile (Requested eICR)"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-data-encrypted-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-message-processing-category-extension"
* extension[=].valueCode = #consequence
* eventCoding = USPublicHealthMessageTypesCodeSystem#eicr-case-report-message "Indicates a message containing electronic case report healthcare data sent from clinical care."
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
* reason = USPublicHealthTriggerDefinitionNamedEvents#encounter-close "Indicates the close of an encounter"
* focus.reference = "Bundle/bundle-eicr-document-zika"