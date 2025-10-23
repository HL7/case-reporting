Instance: organization-ecr-ymca-center
InstanceOf: USPublicHealthOrganization
Title: "US PH Organization Example: YMCA"
Description: "Example of US Public Health Organization profile"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "7777788"
* active = true
* name = "YMCA"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-7777"
* telecom[+].system = #email
* telecom[=].value = "mail@ymca.com"
* address.line = "22222 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"
* endpoint.reference = "Endpoint/endpoint-ecr-ymca"