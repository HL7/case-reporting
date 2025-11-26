Profile: EICRCountryOfResidence
Parent: USCoreSimpleObservationProfile
Id: eicr-country-of-residence
Title: "eICR Country of Residence"
Description: "This Observation profile represents the patient's country of usual residence."
* . ^short = "eICR Country of Residence"

* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#77983-5
* code MS
* code ^short = "Country of usual residence"
* subject only Reference(USPublicHealthPatient)
* effective[x] only dateTime
* effective[x] MS
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $iso3166-1-2 (preferred)
* value[x] ^short = "Patient's country of residence"
* value[x] ^binding.description = "Iso 3166 Part 1: 2 Letter Codes"