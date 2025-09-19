Profile: USPublicHealthDocumentBundle
Parent: Bundle
Id: us-ph-document-bundle
Title: "US Public Health Document Bundle"
Description: "This Bundle profile represents a Public Health Document Bundle. It contains a US Public Health Composition."





* . ^short = "US Public Health Document Bundle"
* identifier 1.. MS
* identifier ^short = "Document Bundle identifier (equivalent to ClinicalDocument.id in CDA)"
* identifier ^definition = "Document Bundle identifier. This is equivalent to ClinicalDocument.id in CDA. The identifier of the contained Composition is equivalent to ClinicalDocument.setID in CDA and Composition.sliceExtensionVersionNumber is equivalent to ClinicalDocument.versionNumber in CDA."
* type = #document (exactly)
* type MS
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains sliceUSPublicHealthComposition 1..1 MS
* entry[sliceUSPublicHealthComposition].resource 1.. MS
* entry[sliceUSPublicHealthComposition].resource only USPublicHealthComposition
* entry[sliceUSPublicHealthComposition].resource ^short = "US Public Health Composition"