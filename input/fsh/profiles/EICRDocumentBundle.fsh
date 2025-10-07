Profile: EICRDocumentBundle
Parent: USPublicHealthDocumentBundle
Id: eicr-document-bundle
Title: "eICR Document Bundle"
Description: "This Bundle profile represents an eCR Document Bundle. It contains an eICR Composition."
// * entry MS
// * entry ^slicing.discriminator.type = #profile
// * entry ^slicing.discriminator.path = "resource"
// * entry ^slicing.rules = #open
// * entry contains
//     sliceUSPublicHealthComposition 1..1 MS
// * entry[sliceUSPublicHealthComposition] 1..1 MS
* entry[USPublicHealthComposition].resource 1.. MS
* entry[USPublicHealthComposition].resource only EICRComposition
* entry[USPublicHealthComposition].resource ^short = "eICR Composition"