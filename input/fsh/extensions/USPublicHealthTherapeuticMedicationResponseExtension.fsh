Extension: USPublicHealthTherapeuticMedicationResponseExtension
Id: us-ph-therapeutic-medication-response-extension
Title: "US Public Health Therapeutic Medication Response Extension"
Description: "This Extension profile represents represents a therapeutic response (as opposed to an undesired reaction) to the administration of a medication."
Context: MedicationAdministration
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2021-08-01T00:00:00.000Z"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* url 1..1
* value[x] only CodeableConcept
* value[x] from TherapeuticResponseToMedication (extensible)
* value[x] ^binding.description = "Therapeutic Response to Medication"