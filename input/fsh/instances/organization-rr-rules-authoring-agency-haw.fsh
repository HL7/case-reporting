Instance: organization-rr-rules-authoring-agency-haw
InstanceOf: RR_Rules_Authoring_Agency_Organization
Title: "RR Rules Authoring Agency Organization Example: Health Authority West Rules Authoring Agency"
Description: "Example of RR Rules Authoring Agency profile (Health Authority West Rules Authoring Agency)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "12341234"
* active = true
* type = urn:oid:2.16.840.1.114222.4.5.232#RR12 "Rules Authoring Agency"
* name = "Health Authority West Rules Authoring Agency"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-3555"
* telecom[+].system = #email
* telecom[=].value = "mail@healthauthoritywest.gov"
* address.line = "7777 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"