Extension: Eicr_Initiation_Type_Extension
Id: eicr-initiation-type-extension
Title: "eICR Initiation Type Extension"
Description: "This Extension profile represents that the eICR, was either manually or alternately initiated by the provider."
Context: Composition.section, Composition
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . 1..1
* . ^isModifier = false
* value[x] only CodeableConcept
* value[x] from RRVS_eICRInitiation_eCR (extensible)
* value[x] ^binding.description = "Initiation Types"