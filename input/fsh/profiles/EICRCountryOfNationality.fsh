Profile: EICRCountryOfNationality
Parent: Observation
Id: eicr-country-of-nationality
Title: "eICR Country of Nationality"
Description: "This Observation profile represents the patient's country of nationality."
* . ^short = "eICR Country of Nationality"

* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code = $sct#186034007
* code MS
* code ^short = "Ethnicity / related nationality data (observable entity)"
* effective[x] only dateTime
* effective[x] MS
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $iso3166-1-2 (required)
* value[x] ^short = "Patient's country of nationaltiy"
* value[x] ^binding.description = "Iso 3166 Part 1: 2 Letter Codes"