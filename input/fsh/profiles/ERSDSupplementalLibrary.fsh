Profile: ERSDSupplementalLibrary
Parent: USPublicHealthSupplementalLibrary
Id: ersd-supplemental-library
Title: "eRSD Supplemental Library"
Description: "Defines the asset-collection library containing the eRSD supplemental assets."
* ^date = "2021-07-13T00:00:00.000Z"



* . ^short = "eRSD Supplemental Library"
* relatedArtifact MS
* relatedArtifact ^slicing.discriminator.type = #profile
* relatedArtifact ^slicing.discriminator.path = "resource.resolve()"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains sliceJurisdictionsCodeSystem 1..1 MS
* relatedArtifact[sliceJurisdictionsCodeSystem] ^short = "Jurisdiction CodeSystem"
* relatedArtifact[sliceJurisdictionsCodeSystem] ^definition = "Jurisdictions CodeSystem"
* relatedArtifact[sliceJurisdictionsCodeSystem].type = #composed-of
* relatedArtifact[sliceJurisdictionsCodeSystem].type ^short = "composed-of"
* relatedArtifact[sliceJurisdictionsCodeSystem].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[sliceJurisdictionsCodeSystem].resource 1.. MS
* relatedArtifact[sliceJurisdictionsCodeSystem].resource only Canonical(USPublicHealthCodeSystem)