Extension: USPublicHealthDateRecordedExtension
Id: us-ph-date-recorded-extension
Title: "US Public Health Date Recorded Extension"
Description: "The date a status or observation was recorded (recorded date)."
Context: Observation, Observation.component
* ^version = "1.0.0"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* . ^short = "US Public Health Date Recorded Extension"
* value[x] 1..
* value[x] only dateTime
* value[x] ^short = "Recorded date"
* value[x] ^definition = "Represents the recorded date of a status or observation"