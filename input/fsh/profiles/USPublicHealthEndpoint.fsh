Profile: USPublicHealthEndpoint
Parent: Endpoint
Id: us-ph-endpoint
Title: "US Public Health Endpoint"
Description: "This is the Endpoint Resource profile for the IG used to specify receivers addresses"
* ^version = "0.1.0"
* ^status = #active

* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "US Public Health Endpoint"
* . ^definition = "Sets expectations for supported capabilities for Endpoints used for reporting purposes in public health."
* . ^mustSupport = false
* status 1..1 MS
* connectionType 1..1 MS
* address 1..1 MS