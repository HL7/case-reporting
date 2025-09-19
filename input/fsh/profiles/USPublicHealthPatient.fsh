Profile: USPublicHealthPatient
Parent: USCorePatientProfile
Id: us-ph-patient
Title: "US Public Health Patient"
Description: """This Patient profile represents a US Public Health Patient.

It is based on the **US Core Patient** profile with further constraints to require and/or allow masking of some data elements,  and the addition of the US Public Health Gender Identity extension.

For ONC’s USCDI requirements, it also adds Must Support constraints to the following:

* contact detail (e.g. a telephone number or an email address)
* a communication language
* a race
* an ethnicity
* a birth sex"""

* . ^short = "US Public Health Patient"
* extension[race] 1.. MS
* extension[race].extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* extension[race].extension[dataAbsentReason] ^short = "For masking purposes, use the data-absent-reason extension and set the required us-core-race extension text to \"masked\""
* extension[race].extension[dataAbsentReason].value[x] 1.. MS
* extension[race].extension[dataAbsentReason].value[x] only code
* extension[race].extension[dataAbsentReason].value[x] = #masked (exactly)
* extension[ethnicity] 1.. MS
* extension[ethnicity].extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* extension[ethnicity].extension[dataAbsentReason] ^short = "For masking purposes, use the data-absent-reason extension and set the required us-core-ethnicity extension text to \"masked\""
* extension[ethnicity].extension[dataAbsentReason].value[x] 1.. MS
* extension[ethnicity].extension[dataAbsentReason].value[x] only code
* extension[ethnicity].extension[dataAbsentReason].value[x] = #masked (exactly)
* extension[birthsex] MS
* extension contains
    $patient-birthPlace named birthPlace 0..1 MS and
    USPublicHealthGenderIdentityExtension named genderIdentity 0..* MS and
    USPublicHealthTribalAffiliationExtension named tribalAffiliation 0..* MS
* extension[birthPlace] ^isModifier = false
* extension[genderIdentity] ^isModifier = false
* extension[tribalAffiliation] ^short = "Tribal affiliation and membership of the patient"
* extension[tribalAffiliation] ^isModifier = false
* identifier 1.. MS
* identifier.extension contains $data-absent-reason named dataAbsentReason 0..1
* identifier.extension[dataAbsentReason].value[x] 1.. MS
* identifier.extension[dataAbsentReason].value[x] only code
* identifier.extension[dataAbsentReason].value[x] = #masked (exactly)
* name 1..
* name.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* name.extension[dataAbsentReason].value[x] 1.. MS
* name.extension[dataAbsentReason].value[x] only code
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom 1.. MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* telecom.extension[dataAbsentReason].value[x] 1.. MS
* telecom.extension[dataAbsentReason].value[x] only code
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom contains
    phone 0..* MS and
    email 0..* MS
* telecom[phone].system 1.. MS
* telecom[phone].system = #phone (exactly)
* telecom[email].system 1.. MS
* telecom[email].system = #email (exactly)
* gender MS
* gender.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* gender.extension[dataAbsentReason].value[x] 1.. MS
* gender.extension[dataAbsentReason].value[x] only code
* gender.extension[dataAbsentReason].value[x] = #masked (exactly)
* birthDate 1.. MS
* birthDate.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* birthDate.extension[dataAbsentReason].value[x] 1.. MS
* birthDate.extension[dataAbsentReason].value[x] only code
* birthDate.extension[dataAbsentReason].value[x] = #masked (exactly)
* deceased[x] 1.. MS
* deceased[x] ^short = "If patient is deceased, use type dateTime and set to deceased date."
* address 1.. MS
* address ^definition = "If the patient is homeless, complete as much address information as possible (city, zip, county, etc.) and use the Characteristics of Home Environment profile in the Social History Section of the eICR Composition to indicate that the patient is homeless."
* address.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* address.extension[dataAbsentReason].value[x] 1.. MS
* address.extension[dataAbsentReason].value[x] only code
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address.district MS
* address.district ^short = "County"
* contact MS
* contact.relationship 1..1 MS
* contact.name 1.. MS
* contact.name.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* contact.name.extension[dataAbsentReason].value[x] 1.. MS
* contact.name.extension[dataAbsentReason].value[x] only code
* contact.name.extension[dataAbsentReason].value[x] = #masked (exactly)
* contact.telecom 1.. MS
* contact.telecom.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* contact.telecom.extension[dataAbsentReason].value[x] 1.. MS
* contact.telecom.extension[dataAbsentReason].value[x] only code
* contact.telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* contact.address 1.. MS
* contact.address.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* contact.address.extension[dataAbsentReason].value[x] 1.. MS
* contact.address.extension[dataAbsentReason].value[x] only code
* contact.address.extension[dataAbsentReason].value[x] = #masked (exactly)
* communication 1.. MS
* communication.language MS
* communication.language.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* communication.language.extension[dataAbsentReason].value[x] 1.. MS
* communication.language.extension[dataAbsentReason].value[x] only code
* communication.language.extension[dataAbsentReason].value[x] = #masked (exactly)