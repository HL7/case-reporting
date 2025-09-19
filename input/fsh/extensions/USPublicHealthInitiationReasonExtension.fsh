Extension: USPublicHealthInitiationReasonExtension
Id: us-ph-initiation-reason-extension
Title: "US Public Health Initiation Reason Extension"
Description: """This extension contains an explanation for the manual or alternate initiation of the public health report.

If there are multiple distinct reasons for manual or alternate initiation then each reason should be contained in a separate US Public Health Initiation Reason Extension. 

The reason may be entered either as:
* free text (string) 
* coded value (valueCodeableConcept) (not necessarily initiated by a provider of care but might be "programmed-in" by the EHR implementer for some purpose)"""
Context: Composition
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ..*
* . ^short = "Initial Case Report Initiation Reason"
* . ^definition = "Reason for manual or alternate initiation of the public health report."
* . ^isModifier = false
* value[x] 1..1 MS
* value[x] only string or CodeableConcept
* value[x] ^example[0].label = "valueString"
* value[x] ^example[=].valueString = "Free text containing the reason for the initiation"
* value[x] ^example[+].label = "valueCodeableConcept"
* value[x] ^example[=].valueCodeableConcept = $sct#772146005 "Pertussis suspected (situation)"