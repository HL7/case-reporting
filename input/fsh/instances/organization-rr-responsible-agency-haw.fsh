Instance: organization-rr-responsible-agency-haw
InstanceOf: RR_Responsible_Agency_Organization
Title: "RR Responsible Agency Organization Example: Health Authority West Responsible Agency"
Description: "Example of RR Responsible Agency Organization profile (Health Authority West Responsible Agency)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "99996666"
* active = true
* type = urn:oid:2.16.840.1.114222.4.5.232#RR8 "Responsible Agency"
* name = "Health Authority West Responsible Agency"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-3555"
* telecom[+].system = #email
* telecom[=].value = "mail@healthauthoritywest.gov"
* address.line = "7777 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"