Profile: USPublicHealthSpecificationLibrary
Parent: $shareablelibrary
Id: us-ph-specification-library
Title: "US Public Health Specification Library"
Description: "Defines the asset-collection library containing the US Public Health specification assets."

* ^status = #active
* ^date = "2020-11-11T00:00:00.000Z"



* . ^short = "US Public Health Specification Library"
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
* useContext[reportingContext].value[x] = $USPublicHealthUsageContext#triggering
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
    slicePlanDefinition 1..1 MS and
    sliceTriggeringValueSetLibrary 1..* MS
* relatedArtifact[slicePlanDefinition] ^short = "US Public Health PlanDefinition"
* relatedArtifact[slicePlanDefinition] ^definition = "Reference to a US Public Health PlanDefinition"
* relatedArtifact[slicePlanDefinition].type = #composed-of
* relatedArtifact[slicePlanDefinition].type ^short = "composed-of"
* relatedArtifact[slicePlanDefinition].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[slicePlanDefinition].resource 1.. MS
* relatedArtifact[slicePlanDefinition].resource only Canonical(USPublicHealthPlanDefinition)
* relatedArtifact[sliceTriggeringValueSetLibrary] ^short = "US Public Health Triggering ValueSet Library"
* relatedArtifact[sliceTriggeringValueSetLibrary] ^definition = "Reference to a US Public Health Triggering ValueSet Library"
* relatedArtifact[sliceTriggeringValueSetLibrary].type = #composed-of
* relatedArtifact[sliceTriggeringValueSetLibrary].type ^short = "composed-of"
* relatedArtifact[sliceTriggeringValueSetLibrary].type ^definition = "The type of relationship to the related artifact. Fixed to composed-of."
* relatedArtifact[sliceTriggeringValueSetLibrary].resource 1.. MS
* relatedArtifact[sliceTriggeringValueSetLibrary].resource only Canonical(USPublicHealthTriggeringValueSetLibrary)