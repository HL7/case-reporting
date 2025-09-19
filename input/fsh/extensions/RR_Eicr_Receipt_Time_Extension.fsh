Extension: RR_Eicr_Receipt_Time_Extension
Id: rr-eicr-receipt-time-extension
Title: "eICR Receipt Time Extension"
Description: "This Extension profile represents the date and time of eICR receipt"
Context: Composition.section
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ..1
* . ^short = "Date and time of eICR receipt"
* . ^definition = "Date and time of eICR receipt"
* . ^isModifier = false
* value[x] 1..
* value[x] only dateTime