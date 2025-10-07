Instance: patient-ecr-eve-everywoman
InstanceOf: USPublicHealthPatient
Title: "US PH Patient Example: Eve Everywoman"
Description: "Example of US Public Health Patient profile (Eve Everywoman)"
Usage: #example
* extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "White"
* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[ethnicity].extension[ombCategory].url = "ombCategory"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[ethnicity].extension[text].url = "text"
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[ethnicity].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[birthsex].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[birthsex].valueCode = #F
* extension[tribalAffiliation].extension[tribalAffiliation].url = "tribalAffiliation"
* extension[tribalAffiliation].extension[tribalAffiliation].valueCodeableConcept = $v3-TribalEntityUS#91 "Fort Mojave Indian Tribe of Arizona, California & Nevada"
* extension[tribalAffiliation].extension[isEnrolled].url = "isEnrolled"
* extension[tribalAffiliation].extension[isEnrolled].valueBoolean = true
* extension[tribalAffiliation].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-tribal-affiliation"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.system = "http://example.org/hospital-smarthealthit"
* identifier.value = "1032702"
* active = true
* name.family = "Everywoman"
* name.given[0] = "Eve"
* name.given[+] = "L"
* telecom[0].system = #phone
* telecom[=].value = "1-(404)555-1212"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "eve.everywoman@example.org"
* gender = #female
* birthDate = "1974-11-24"
* deceasedBoolean = false
* address.line = "2222 Home Street"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en "English"