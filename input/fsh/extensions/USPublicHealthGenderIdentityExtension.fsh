Extension: USPublicHealthGenderIdentityExtension
Id: us-ph-genderidentity-extension
Title: "US Public Health Gender Identity Extension"
Description: "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This represents an individual’s identity, ascertained by asking them what that identity is. This is a copy of the draft FHIR individual-genderIdentity extension (http://hl7.org/fhir/StructureDefinition/individual-genderIdentity)."
Context: Patient, RelatedPerson, Person, Practitioner
* ^version = "0.1.0"
* ^date = "2022-05-24"
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "The individual's gender identity"
* . ^definition = "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else."
* . ^comment = "This represents an individual’s identity, ascertained by asking them what that identity is."
* . ^min = 0
* extension contains
    value 1..1 and
    period 0..1 and
    comment 0..1
* extension[value] only Extension
* extension[value] ^short = "The individual's gender identity"
* extension[value] ^definition = "An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. "
* extension[value] ^comment = "This represents an individual’s identity, ascertained by asking them what that identity is."
* extension[value].url only uri
* extension[value].value[x] 1..
* extension[value].value[x] only CodeableConcept
* extension[value].value[x] from $2.16.840.1.113762.1.4.1021.32 (preferred)
* extension[value].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[value].value[x] ^binding.extension.valueString = "GenderIdentity"
* extension[period] only Extension
* extension[period] ^short = "The time period during which the gender identity applies to the individual"
* extension[period] ^definition = "The time period during which the gender identity applies to the individual"
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period
* extension[comment] only Extension
* extension[comment] ^short = "Text to further explain the use of the specified gender identity"
* extension[comment] ^definition = "Text to further explain the use of the specified gender identity"
* extension[comment].url only uri
* extension[comment].value[x] 1..
* extension[comment].value[x] only string