Instance: organization-rr-routing-entity-haw
InstanceOf: RR_Routing_Entity_Organization
Title: "RR Routing Entity Organization Example: Health Authority West Routing Entity"
Description: "Example of RR Routing Entity Organization Example profile (Health Authority West Routing Entity)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "43214321"
* active = true
* type = urn:oid:2.16.840.1.114222.4.5.232#RR7 "Routing Entity"
* name = "Health Authority West Routing Entity"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-3555"
* telecom[+].system = #email
* telecom[=].value = "mail@healthauthoritywest.gov"
* address.line = "7777 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"