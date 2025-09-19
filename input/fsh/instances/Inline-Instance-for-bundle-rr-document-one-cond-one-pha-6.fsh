Instance: Inline-Instance-for-bundle-rr-document-one-cond-one-pha-6
InstanceOf: USPublicHealthPatient
Usage: #inline
* id = "patient-ecr-eve-everywoman"
* meta.versionId = "10"
* meta.lastUpdated = "2021-08-17T08:00:32.356+00:00"
* meta.source = "#zjFlzHDvZIYVyMAB"
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
* extension[genderIdentity].extension.url = "value"
* extension[genderIdentity].extension.valueCodeableConcept = $v3-NullFlavor#ASKU "asked but unknown"
* extension[genderIdentity].extension.valueCodeableConcept.text = "asked but unknown"
* extension[genderIdentity].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-genderidentity-extension"
* extension[tribalAffiliation].extension[0].url = "TribeName"
* extension[tribalAffiliation].extension[=].valueCoding = $v3-TribalEntityUS#91 "Fort Mojave Indian Tribe of Arizona, California & Nevada"
* extension[tribalAffiliation].extension[+].url = "EnrolledTribeMember"
* extension[tribalAffiliation].extension[=].valueBoolean = true
* extension[tribalAffiliation].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-tribal-affiliation-extension"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"
* active = true
* name.family = "Everywoman"
* name.given[0] = "Eve"
* name.given[+] = "L"
* telecom[0].system = #phone
* telecom[=].value = "1-(404)555-1212"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "eve.everywoman@example.com"
* gender = #female
* birthDate = "1974-11-24"
* deceasedBoolean = false
* address.line = "5101 Peachtree St NE"
* address.city = "Atlanta"
* address.state = "GA"
* address.postalCode = "30302"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en "English"