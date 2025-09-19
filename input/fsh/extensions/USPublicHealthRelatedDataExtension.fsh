Extension: USPublicHealthRelatedDataExtension
Id: us-ph-relateddata-extension
Title: "US Public Health Related Data Extension"
Description: "The relatedData extension allows indicating that an input to a parent action is an input to specific child actions. It also allows the output of one action to be identified as the input to a different action."
Context: PlanDefinition.action.input, PlanDefinition.action.action.input, PlanDefinition.action.output, PlanDefinition.action.action.output
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2022-03-30T00:00:00.000Z"
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* . ..1
* . ^short = "US Public Health Related Data Extension"
* . ^definition = "Points to an existing input or output element that provides data to this input or results as output for the action."
* url only uri
* value[x] 1..1
* value[x] only string
* value[x] ^short = "The ID of the input or output element that provides data to this input or results as output."