Profile: RRDocumentReference
Parent: USCoreDocumentReferenceProfile
Id: rr-documentreference
Title: "RR DocumentReference"
Description: "This profile represents external resources such as a text guidance, link to access forms for additional reporting needs, additional testing and/or laboratory testing needs, treatment and/or prevention resources, Public Health Agency contact information and general additional resources."
* . ^short = "RR Document Reference"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains RR_Priority_Extension named priority 1..* MS
* category 1..* MS
* category from RRVS_ExternalResourceType_eCR (extensible)
* category ^short = "External Resource Type"
* category ^binding.description = "External Resource Type"
* subject 1..1 MS
* subject only Reference(USPublicHealthPatient)
* description 1.. MS
* description ^short = "External resource description"
* description ^definition = "Text description of the external resource."