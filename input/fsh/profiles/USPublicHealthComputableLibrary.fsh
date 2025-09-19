Profile: USPublicHealthComputableLibrary
Parent: $shareablelibrary
Id: us-ph-computable-library
Title: "US Public Health Computable Library"
Description: "The computable library profile sets the minimum expectations for a computable CQL library."
* ^version = "0.1.0"
* ^status = #active

* ^date = "2020-10-23T00:00:00.000Z"



* . ^short = "US Public Health Computable Library"
* subject[x] MS
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
* content contains cqlContent 1..1
* content[cqlContent] ^short = "CQL Content"
* content[cqlContent] ^definition = "The CQL content represented as base-64 encoded data."
* content[cqlContent] ^mustSupport = false
* content[cqlContent].contentType 1..1 MS
* content[cqlContent].contentType only code
* content[cqlContent].contentType = #text/cql (exactly)
* content[cqlContent].data 1..1
* content[cqlContent].data ^mustSupport = false