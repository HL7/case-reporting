Instance: bundle-ecr-message-zika
InstanceOf: USPublicHealthReportingBundle
Title: "Bundle - eCR Message for Zika Case"
Description: "Example of a US Public Health Reporting Bundle (type=message) containing an electronic case report for a Zika virus infection case involving patient Eve Everywoman."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c3eec0b-145b-4694-a1b8-1ea4de5a0cb0"
* type = #message
* entry[0].fullUrl = "http://example.org/fhir/us/ecr/MessageHeader/messageheader-ecr-requested-eicr"
* entry[=].resource = messageheader-ecr-requested-eicr
* entry[+].fullUrl = "http://example.org/fhir/us/ecr/Bundle/bundle-eicr-document-zika"
* entry[=].resource = bundle-eicr-document-zika
* entry[+].fullUrl = "http://example.org/fhir/us/ecr/Device/device-ecr-software-ymca"
* entry[=].resource = device-ecr-software-ymca
* entry[+].fullUrl = "http://example.org/fhir/us/ecr/Organization/organization-ecr-salem-medical-center"
* entry[=].resource = organization-ecr-salem-medical-center