Profile: USPublicHealthTriggeringValueSetLibrary
Parent: USPublicHealthValueSetLibrary
Id: us-ph-triggering-valueset-library
Title: "US Public Health Triggering ValueSet Library"
Description: "Defines the library containing the US Public Health triggering value sets."
* ^date = "2020-11-11T00:00:00.000Z"



* . ^short = "US Public Health Triggering ValueSet Library"
* useContext ..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains
    reportingContext 1..1 and
    specificationTypeContext 1..1
* useContext[reportingContext].code 1..1
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].value[x] 1..1
* useContext[reportingContext].value[x] only CodeableConcept
* useContext[reportingContext].value[x] = $USPublicHealthUsageContext#triggering
* useContext[reportingContext].value[x] ^short = "Library useContext"
* useContext[reportingContext].value[x] ^definition = "The US Public Health use context of the Library."
* useContext[specificationTypeContext].code 1..1
* useContext[specificationTypeContext].code = $USPublicHealthUsageContextType#specification-type
* useContext[specificationTypeContext].value[x] 1..1
* useContext[specificationTypeContext].value[x] only CodeableConcept
* useContext[specificationTypeContext].value[x] = $USPublicHealthUsageContext#value-set-library
* useContext[specificationTypeContext].value[x] ^short = "Library useContext"
* useContext[specificationTypeContext].value[x] ^definition = "The US Public Health use context of the Library."
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact[sliceUSPHValueSet] 1.. MS
* relatedArtifact[sliceUSPHValueSet] ^short = "US Public Health Triggering Value Set"
* relatedArtifact[sliceUSPHValueSet] ^definition = "Reference to one of the US Public Health Triggering value sets"
* relatedArtifact[sliceUSPHValueSet].type = #composed-of
* relatedArtifact[sliceUSPHValueSet].type ^short = "composed-of"
* relatedArtifact[sliceUSPHValueSet].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[sliceUSPHValueSet].resource 1.. MS
* relatedArtifact[sliceUSPHValueSet].resource only Canonical(USPublicHealthTriggeringValueSet)