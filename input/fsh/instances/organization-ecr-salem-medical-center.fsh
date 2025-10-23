Instance: organization-ecr-salem-medical-center
InstanceOf: USPublicHealthOrganization
Title: "US PH Organization Example: Salem Medical Center"
Description: "Example of US Public Health Organization profile (Salem Medical Center)"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1144221847"
* active = true
* type = $v3-RoleCode#OF "Outpatient facility"
* name = "Salem Medical Center"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-1111"
* telecom[+].system = #email
* telecom[=].value = "mail@salemmedicalcenter.com"
* address.line = "22222 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"