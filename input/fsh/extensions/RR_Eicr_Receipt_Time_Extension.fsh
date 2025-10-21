Extension: RR_Eicr_Receipt_Time_Extension
Id: rr-eicr-receipt-time-extension
Title: "eICR Receipt Time Extension"
Description: "This Extension profile represents the date and time of eICR receipt"
Context: Composition.section
* . ^short = "Date and time of eICR receipt"
* . ^definition = "Date and time of eICR receipt"

* value[x] 1..
* value[x] only dateTime