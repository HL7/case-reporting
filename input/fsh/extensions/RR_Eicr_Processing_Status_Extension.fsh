Extension: RR_Eicr_Processing_Status_Extension
Id: rr-eicr-processing-status-extension
Title: "eICR Processing Status Extension"
Description: "This Extension profile represents the eICR processing status."
Context: Composition.section
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . ..1
* . ^short = "eICR Processing Status"
* . ^definition = "This extension indicates the eICR processing status. If the eICR was not processed or was processed with a warning, the reason will be contained in the eICR Processing Status Reason. If there is any output from a validator, that output will be contained in the eICR Validation Output.\n\nIf any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and and the eICR Processing Status Reason Detail will hold the details of the outdated and expected versions of the RCTC."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    eICRProcessingStatus 1..1 and
    eICRValidationOutput 0..*
* extension[eICRProcessingStatus].value[x] 1..
* extension[eICRProcessingStatus].value[x] only Reference(RR_Eicr_Processing_Status_Observation)
* extension[eICRValidationOutput] ^definition = "Contains eICR validation output - this could be the actual output from a validator, or a link to a validation output file"
* extension[eICRValidationOutput].value[x] 1..
* extension[eICRValidationOutput].value[x] only markdown or string or Attachment