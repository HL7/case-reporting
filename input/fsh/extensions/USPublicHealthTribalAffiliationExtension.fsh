Extension: USPublicHealthTribalAffiliationExtension
Id: us-ph-tribal-affiliation-extension
Title: "US Public Health Tribal Affiliation Extension"
Description: "This Extension profile represents an affiliated tribe name and whether or not the patient is an enrolled member"
Context: Patient
* ^version = "1.0.0"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* ^purpose = "Tribal affiliation of the patient"
* . 0..*
* . ^short = "Tribal Affiliation Extension"
* . ^definition = "Affiliated tribe name and whether or not the patient is an enrolled member"
* extension contains
    TribeName 1..1 MS and
    EnrolledTribeMember 0..1 MS
* extension[TribeName] only Extension
* extension[TribeName] ^short = "Affiliated tribe name"
* extension[TribeName] ^definition = "Affiliated tribe name"
* extension[TribeName].url 1..1
* extension[TribeName].url only uri
* extension[TribeName].value[x] 1..1
* extension[TribeName].value[x] only Coding
* extension[TribeName].value[x] from $v3-TribalEntityUS_1 (extensible)
* extension[TribeName].value[x] ^short = "Tribal Entity US"
* extension[TribeName].value[x] ^binding.description = "Tribal Entity US"
* extension[EnrolledTribeMember] only Extension
* extension[EnrolledTribeMember] ^short = "Enrolled tribe member"
* extension[EnrolledTribeMember] ^definition = "Enrolled tribe member"
* extension[EnrolledTribeMember].url 1..1
* extension[EnrolledTribeMember].url only uri
* extension[EnrolledTribeMember].value[x] 1..1
* extension[EnrolledTribeMember].value[x] only boolean
* url 1..1