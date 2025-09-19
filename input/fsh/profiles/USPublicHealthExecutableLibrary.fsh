Profile: USPublicHealthExecutableLibrary
Parent: $shareablelibrary
Id: us-ph-executable-library
Title: "US Public Health Executable Library"
Description: "This profile sets the minimum expectations for an executable CQL library. Specifically, the profile requires that the library contain one of ELM XML or JSON content, the compiled representation of the CQL logic."
* ^version = "0.1.0"
* ^status = #active

* ^date = "2021-10-23T00:00:00.000Z"



* . ^short = "US Public Health Executable Library"
* relatedArtifact ..* MS
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains dependency 0..*
* relatedArtifact[dependency] ^mustSupport = false
* relatedArtifact[dependency].type 1..1 MS
* relatedArtifact[dependency].type only code
* relatedArtifact[dependency].type = #depends-on (exactly)
* relatedArtifact[dependency].type ^short = "Required dependency"
* relatedArtifact[dependency].type ^definition = "A required dependency of the measure, an included Library (other than the primary library), or a referenced CodeSystem or ValueSet."
* relatedArtifact[dependency].display 0..1 MS
* relatedArtifact[dependency].resource 1..1 MS
* relatedArtifact[dependency].resource only Canonical($shareablecodesystem or $shareablelibrary or $shareablevalueset)
* parameter MS
* dataRequirement MS
* content MS
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "contentType"
* content ^slicing.rules = #open
* content contains
    elmXmlContent 0..* and
    elmJsonContent 0..*
* content[elmXmlContent] ^short = "ELM XML Content"
* content[elmXmlContent] ^definition = "The ELM XML translation of the CQL content represented as  base-64 encoded data."
* content[elmXmlContent] ^mustSupport = false
* content[elmXmlContent].contentType 0..1 MS
* content[elmXmlContent].contentType only code
* content[elmXmlContent].contentType = #application/elm+xml (exactly)
* content[elmXmlContent].data 1..1
* content[elmXmlContent].data ^mustSupport = false
* content[elmJsonContent] ^short = "ELM JSON Content"
* content[elmJsonContent] ^definition = "The ELM JSON translation of the CQL content represented as base-64 encoded data."
* content[elmJsonContent] ^mustSupport = false
* content[elmJsonContent].contentType 0..1 MS
* content[elmJsonContent].contentType only code
* content[elmJsonContent].contentType = #application/elm+json (exactly)
* content[elmJsonContent].data 1..1
* content[elmJsonContent].data ^mustSupport = false