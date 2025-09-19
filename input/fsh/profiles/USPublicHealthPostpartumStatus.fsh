Profile: USPublicHealthPostpartumStatus
Parent: Observation
Id: us-ph-postpartum-status
Title: "US Public Health Postpartum Status"
Description: """This profile represents the postpartum status of a patient.

If the profile is present, the patient is in the postpartum period and further information about the postpartum status is communicated by the code chosen.

The postpartum period, also known as the puerperium, refers to the time after delivery when maternal physiological changes related to pregnancy return to the nonpregnant state. There is consensus that the postpartum period begins upon delivery of the infant. The end is less well defined but is often considered the six to eight weeks after delivery because the effects of pregnancy on many systems have largely returned to the pre-pregnancy state."""





* . ^short = "US Public Health Postpartum Status"
* code 1..1 MS
* code = $sct#249197004 "Maternal condition during puerperium (observable entity)"
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* effective[x] 1..1 MS
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from PostpartumStatus (extensible)
* value[x] ^short = "Postpartum status: the point within the postpartum period for which a postpartum status is observed."
* value[x] ^binding.description = "Postpartum Status"