Profile: USPublicHealthPractitionerRole
Parent: USCorePractitionerRoleProfile
Id: us-ph-practitionerrole
Title: "US Public Health PractitionerRole"
Description: """This PractitionerRole profile represents the roles and organizations of the practitioner.

It is based on the **US Core PractitionerRole** profile with a further restriction of mandatory **practitioner*, **identifier** and **telecom** data elements and US Public Health Location and US Public Health Organization references."""





* . ^short = "US Public Health PracitionerRole"
* identifier 1..1 MS
* practitioner 1..
* organization only Reference(USPublicHealthOrganization)
* organization MS
* location only Reference(USPublicHealthLocation)
* location MS
* telecom 1.. MS