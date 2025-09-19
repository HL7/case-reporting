Profile: USPublicHealthComposition
Parent: Composition
Id: us-ph-composition
Title: "US Public Health Composition"
Description: "This Composition profile represents a public health composition."

* ^status = #active




* . MS
* . ^short = "US Public Health Composition Profile"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $composition-clinicaldocument-versionNumber named sliceExtensionVersionNumber 1..1 MS and
    USPublicHealthInformationRecipientExtension named sliceExtensionInformationRecipient 0..* MS
* extension[sliceExtensionVersionNumber] ^short = "Public Health Composition versionNumber"
* extension[sliceExtensionVersionNumber] ^definition = "Public Health Composition versionNumber. This is equivalent to ClinicalDocument.versionNumber in CDA. The identifier of the containing Bundle is equivalent to ClinicalDocument.id in CDA and Composition.identifier is equivalent to ClinicalDocument.setId in CDA. This is a version specific identifier for the composition, assigned when each version is created/updated.\n\nWhile each resource, including the composition itself, has its own version identifier, this is a formal identifier for the logical version of the composition as a whole. It would remain constant if the resources were moved to a new server, and all got new individual resource versions, for example."
* extension[sliceExtensionInformationRecipient] ^short = "Information Recipient"
* identifier 1..1 MS
* identifier ^short = "Public Health Composition identifier"
* identifier ^definition = "Public Health Composition identifier. This is equivalent to ClinicalDocument.setId in CDA. The identifier of the containing Bundle is equivalent to ClinicalDocument.id in CDA and Composition.sliceExtensionVersionNumber is equivalent to ClinicalDocument.versionNumber in CDA."
* status MS
* type MS
* type ^short = "Type of this public health report"
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* subject ^short = "Patient"
* subject ^definition = "The subject of this Composition is the patient."
* subject ^isModifier = false
* encounter 1.. MS
* encounter only Reference(USPublicHealthEncounter)
* encounter ^short = "Encounter related to the public health event"
* encounter ^definition = "This Encounter profile represents the encounter related to the public health event."
* encounter ^isModifier = false
* date MS
* date ^isModifier = false
* author ..* MS
* author only Reference(USPublicHealthPractitionerRole or USCorePractitionerProfile or USPublicHealthOrganization or Device)
* author ^short = "The author(s) of the document"
* author ^definition = "It is possible to have multiple authors - especially in the case where the default author is the organization. For public health reporting this could contain the contact details for the Infection Control Professional (ICP) specific to the condition being reported on. If the main author of the document is not a person, it is recommended to have an additional person author contact who is specific for a disease for follow-up requirements. This person could be the ICP. Where a trigger occurs outside of an encounter the author will represent the Provider and Facility for reporting purposes."
* author ^isModifier = false
* title MS
* custodian only Reference(USPublicHealthOrganization)
* custodian MS
* relatesTo MS
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "code"
* relatesTo ^slicing.rules = #open
* relatesTo contains
    sliceTransformed 0..1 MS and
    sliceReplaced 0..1 MS
* relatesTo[sliceTransformed] ^short = "Document or Composition that this Composition is transformed from"
* relatesTo[sliceTransformed] ^definition = "Document of Composition that this Composition is transformed from"
* relatesTo[sliceTransformed].code = #transforms (exactly)
* relatesTo[sliceTransformed].code MS
* relatesTo[sliceTransformed].target[x] only Identifier
* relatesTo[sliceTransformed].target[x] MS
* relatesTo[sliceTransformed].target[x] ^short = "Identifier of the Document or Composition transformed"
* relatesTo[sliceTransformed].target[x] ^definition = "Identifier of the Document or Composition transformed"
* relatesTo[sliceReplaced] ^short = "Document or Composition that this Composition replaces"
* relatesTo[sliceReplaced] ^definition = "Document or Composition that this Composition replaces"
* relatesTo[sliceReplaced].code = #replaces (exactly)
* relatesTo[sliceReplaced].code MS
* relatesTo[sliceReplaced].target[x] MS
* relatesTo[sliceReplaced].target[x] ^short = "Identifier/Reference to the Document or Composition transformed"
* relatesTo[sliceReplaced].target[x] ^definition = "Identifier/Reference to the Document or Composition transformed"