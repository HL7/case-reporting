Extension: USPublicHealthAlternativeExpressionExtension
Id: us-ph-alternative-expression-extension
Title: "US Public Health Alternative Expression Extension"
Description: "This extension represents an US Public Health Alternative Expression"
Context: "PlanDefinition.repeat(action).condition.expression"
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 International - Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . ^short = "US Public Health Alternative Expression Extension"
* . ^definition = "This extension represents a US Public Health Alternative Expression"
* . ^isModifier = false
* valueExpression only Expression