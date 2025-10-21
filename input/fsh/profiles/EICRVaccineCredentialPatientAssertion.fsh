Profile: EICRVaccineCredentialPatientAssertion
Parent: Observation
Id: eicr-vaccine-credential-patient-assertion
Title: "eICR Vaccine Credential Patient Assertion"
Description: "This Observation profile represents whether or not the patient has asserted that they have verifiable vaccine credentials."
* . ^short = "eICR Digital Health Certificate Patient Assertion Observation"

* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code = $loinc#11370-4
* code MS
* code ^short = "Immunization status - Reported"
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "The date of assertion"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from PHVS_YesNoUnknown_CDC (required)
* value[x] ^short = "Patient assertion (yes, no, unkown) as to whether or not they have verifiable vaccine credentials"
* value[x] ^binding.description = "Yes No Unknown (YNU)"