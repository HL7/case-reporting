Extension: USPublicHealthDeterminationOfReportabilityReasonExtension
Id: us-ph-determination-of-reportability-reason-extension
Title: "US Public Health Determination of Reportability Reason Extension"
Description: "This Extension profile represents the reason for the determination of reportability."
Context: Observation
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ^short = "US Public Health Determination of Reportability Reason"
* . ^definition = "The reason for the determination of reportability."
* value[x] 1..
* value[x] only string or CodeableConcept