Instance: organization-ecr-health-authority-west
InstanceOf: USPublicHealthOrganization
Title: "US PH Organization Example: Health Authority West"
Description: "Example of US Public Health Organization profile (Health Authority West)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221847"
* active = true
* name = "Health Authority West"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-3555"
* telecom[+].system = #email
* telecom[=].value = "mail@healthauthoritywest.gov"
* address.line = "7777 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"