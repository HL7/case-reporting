Instance: bundle-ecr-message-zika
InstanceOf: USPublicHealthReportingBundle
Title: "US Public Health Reporting Bundle Example: bundle-ecr-message-zika"
Description: "Example of eCR Message Bundle profile (Eve Everywoman, Zika)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c3eec0b-145b-4694-a1b8-1ea4de5a0cb0"
* type = #message
* entry[0].fullUrl = "http://example.org/fhir/MessageHeader/messageheader-ecr-requested-eicr"
* entry[=].resource = messageheader-ecr-requested-eicr
* entry[+].fullUrl = "http://example.org/fhir/Bundle/bundle-eicr-document-zika"
* entry[=].resource = Inline-Instance-for-bundle-ecr-message-zika-2
* entry[+].fullUrl = "http://example.org/fhir/Device/device-ecr-software-ymca"
* entry[=].resource = device-ecr-software-ymca
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-ecr-salem-medical-center"
* entry[=].resource = Inline-Instance-for-bundle-ecr-message-zika-4