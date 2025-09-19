Profile: RRDocumentBundle
Parent: USPublicHealthDocumentBundle
Id: rr-document-bundle
Title: "RR Document Bundle"
Description: "This Bundle profile represents an RR Document Bundle. It contains either an RR Composition."




* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[sliceUSPublicHealthComposition] 1..1 MS
* entry[sliceUSPublicHealthComposition].resource 1.. MS
* entry[sliceUSPublicHealthComposition].resource only RRComposition
* entry[sliceUSPublicHealthComposition].resource ^short = "RR Composition"