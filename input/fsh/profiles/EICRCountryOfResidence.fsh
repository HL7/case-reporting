Profile: EICRCountryOfResidence
Parent: Observation
Id: eicr-country-of-residence
Title: "eICR Country of Residence"
Description: "This Observation profile represents the patient's country of usual residence."
* . ^short = "eICR Country of Residence"

* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code = $loinc#77983-5
* code MS
* code ^short = "Country of usual residence"
* effective[x] only dateTime
* effective[x] MS
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $iso3166-1-2 (required)
* value[x] ^short = "Patient's country of residence"
* value[x] ^binding.description = "Iso 3166 Part 1: 2 Letter Codes"