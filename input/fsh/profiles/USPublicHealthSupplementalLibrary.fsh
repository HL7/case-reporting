Profile: USPublicHealthSupplementalLibrary
Parent: $shareablelibrary
Id: us-ph-supplemental-library
Title: "US Public Health Supplemental Library"
Description: "Defines the asset-collection library containing the US Public Health supplemental assets."

* ^status = #active
* ^date = "2021-07-13T00:00:00.000Z"



* . ^short = "US Public Health Supplemental Library"
* type = $library-type#asset-collection
* type MS
* type ^short = "asset-collection"
* type ^definition = "Constrains the Library's Type to asset-collection."
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
* useContext[reportingContext].value[x] = $USPublicHealthUsageContext#supplemental
* useContext[reportingContext].value[x] ^short = "Library useContext"
* useContext[reportingContext].value[x] ^definition = "The US Public Health use context of the Library."
* useContext[specificationTypeContext].code 1..1
* useContext[specificationTypeContext].code = $USPublicHealthUsageContextType#specification-type
* useContext[specificationTypeContext].value[x] 1..1
* useContext[specificationTypeContext].value[x] only CodeableConcept
* useContext[specificationTypeContext].value[x] = $USPublicHealthUsageContext#program
* useContext[specificationTypeContext].value[x] ^short = "Library useContext"
* useContext[specificationTypeContext].value[x] ^definition = "The US Public Health use context of the Library."
* relatedArtifact MS
* relatedArtifact ^slicing.discriminator.type = #profile
* relatedArtifact ^slicing.discriminator.path = "resource.resolve()"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains
    sliceComputableLibrary 1..1 MS and
    sliceSupplementalValueSetLibrary 1..* MS
* relatedArtifact[sliceComputableLibrary] ^short = "US Public Health Computable Library"
* relatedArtifact[sliceComputableLibrary] ^definition = "Reference to a US Public Health Computable Library"
* relatedArtifact[sliceComputableLibrary].type = #composed-of
* relatedArtifact[sliceComputableLibrary].type ^short = "composed-of"
* relatedArtifact[sliceComputableLibrary].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[sliceComputableLibrary].resource 1.. MS
* relatedArtifact[sliceComputableLibrary].resource only Canonical(USPublicHealthComputableLibrary)
* relatedArtifact[sliceSupplementalValueSetLibrary] ^short = "US Public Health Triggering ValueSet Library"
* relatedArtifact[sliceSupplementalValueSetLibrary] ^definition = "Reference to a US Public Health Triggering ValueSet Library"
* relatedArtifact[sliceSupplementalValueSetLibrary].type = #composed-of
* relatedArtifact[sliceSupplementalValueSetLibrary].type ^short = "composed-of"
* relatedArtifact[sliceSupplementalValueSetLibrary].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[sliceSupplementalValueSetLibrary].resource 1.. MS
* relatedArtifact[sliceSupplementalValueSetLibrary].resource only Canonical(USPublicHealthSupplementalValuesetLibrary)