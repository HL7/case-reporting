Extension: Eicr_Initiation_Type_Extension
Id: eicr-initiation-type-extension
Title: "eICR Initiation Type Extension"
Description: "This Extension profile represents that the eICR, was either manually or alternately initiated by the provider."
Context: Composition.section, Composition

* value[x] only CodeableConcept
* value[x] from RRVS_eICRInitiation_eCR (extensible)
* value[x] ^binding.description = "Initiation Types"