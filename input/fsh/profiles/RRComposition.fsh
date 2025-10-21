Profile: RRComposition
Parent: USPublicHealthComposition
Id: rr-composition
Title: "RR Composition"
Description: "This Composition profile represents the Reportability Response that is created in response to an electronic Initial Case Report Composition."
* . ^short = "Reportability Response Composition"
* . ^definition = "This Composition profile represents the Reportability Response that will be created in response to an electronic Initial Case Report Composition."

// * extension contains 
//     USPublicHealthInformationRecipientExtension named extensionInformationRecipient 1..* MS
* extension[extensionInformationRecipient] 1..
// * extension[extensionInformationRecipient] only USPublicHealthInformationRecipientExtension
* extension[extensionInformationRecipient] ^short = "Reportability Response recipient(s)"
* extension[extensionInformationRecipient] ^definition = "Reporting may be identified for multiple PHAs by the PHA system (or its intermediary) (because the patient's residence and the provider location are in separate jurisdictions) including other identified organization (such as an HIE) to which the eICR (if deemed reportable) and/or the Reportability Response will be routed."
* type = $loinc#88085-6
* type MS
* type ^short = "Public Health Reportability Response Document"
* type ^definition = "The type of this Composition is a Public Health Reportability Response Document"
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* subject ^short = "Patient"
* encounter only Reference(EICREncounter)
* encounter MS
* encounter ^short = "eICR Encounter"
* encounter ^definition = "The encounter during which the eICR was triggered."
* author 1.. MS
* author only Reference(Device or USPublicHealthOrganization or USCorePractitionerProfile or USPublicHealthPractitionerRole)
* author ^short = "Author"
* author ^definition = "For the Reportability Response Composition, this will most likely be the software that is generating the response, though this will not always the be case."
* custodian 1..
* relatesTo MS
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "code"
* relatesTo ^slicing.rules = #open
// * relatesTo contains
//     sliceTransformed 0..1 MS and
//     replaced 0..1 MS
// * relatesTo[sliceTransformed] 0..1
// * relatesTo[transformed] ^short = "Document or Composition that this Composition is transformed from"
// * relatesTo[transformed] ^definition = "Document of Composition that this Composition is transformed from"
// * relatesTo[transformed].code = #transforms (exactly)
// * relatesTo[sliceTransformed].target[x] only Identifier
// * relatesTo[sliceTransformed].target[x] ^short = "Identifier of the Document or Composition transformed"
// * relatesTo[sliceTransformed].target[x] ^definition = "Identifier of the Document or Composition transformed"
// * relatesTo[replaced] 0..1
// * relatesTo[replaced] ^short = "Document or Composition that this Composition replaces"
// * relatesTo[replaced] ^definition = "Document or Composition that this Composition replaces"
// * relatesTo[replaced].code = #replaces (exactly)
// * relatesTo[replaced].target[x] ^short = "Identifier/Reference to the Document or Composition transformed"
// * relatesTo[replaced].target[x] ^definition = "Identifier/Reference to the Document or Composition transformed"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    sliceRRSubjectSection 0..1 MS and
    sliceEICRSection 1..1 MS and
    sliceRRSummarySection 0..1 MS
* section[sliceRRSubjectSection] ^short = "Reportability Response Subject Section"
* section[sliceRRSubjectSection] ^definition = "This section contains the subject (short description) of the Reportability Response Document. This information can be used in a work queue or an email subject and gives a concise description of the determination of reportability. This section is present in the Reportability Response Document if the eICR Document was processed and is not present if the eICR Document was not processed. The narrative in this section is displayed first in the Reportability Response Document and consists of paragraphs containing the 'Subject:' heading and the subject text."
* section[sliceRRSubjectSection] ^isModifier = false
* section[sliceRRSubjectSection].code 1.. MS
* section[sliceRRSubjectSection].code = $loinc#88084-9
* section[sliceRRSubjectSection].code ^short = "Reportable condition response information and summary Document"
* section[sliceRRSubjectSection].code ^isModifier = false
* section[sliceRRSubjectSection].text 1.. MS
* section[sliceRRSubjectSection].text ^short = "Reportability Response Subject Section"
* section[sliceRRSubjectSection].text ^definition = "Contains the subject (short description) of the Reportability Response Document. This information can be used in a work queue or an email subject and gives a concise description of the determination of reportability."
* section[sliceEICRSection] ^short = "Electronic Initial Case Report Section"
* section[sliceEICRSection] ^definition = "This section contains information about the eICR Document to which this document is a response."
* section[sliceEICRSection] ^isModifier = false
* section[sliceEICRSection].extension 1..
* section[sliceEICRSection].extension ^slicing.discriminator.type = #value
* section[sliceEICRSection].extension ^slicing.discriminator.path = "url"
* section[sliceEICRSection].extension ^slicing.rules = #open
* section[sliceEICRSection].extension contains
    RR_Eicr_Processing_Status_Extension named extensionEICRProcessingStatus 1..1 MS and
    Eicr_Initiation_Type_Extension named extensionAlternatelyManuallyInitiatedEICR 0..1 MS and
    RR_Eicr_Receipt_Time_Extension named extensionEICRReceiptTime 0..1 MS
* section[sliceEICRSection].extension[extensionEICRProcessingStatus] ^short = "eICR Processing Status"
* section[sliceEICRSection].extension[extensionEICRProcessingStatus] ^definition = "This extension constains processing status information about the eICR."
* section[sliceEICRSection].extension[extensionAlternatelyManuallyInitiatedEICR] ^short = "Alternately or Manually Initiated eICR"
* section[sliceEICRSection].extension[extensionAlternatelyManuallyInitiatedEICR] ^definition = "The presence of this extension indicates whether or not the eICR Document for which this Reportability Response is a response, was either alternately or manually initiated. The eICR could also contain trigger codes (automatic trigger code initiation)."
* section[sliceEICRSection].extension[extensionEICRReceiptTime] ^short = "Date and time of eICR receipt"
* section[sliceEICRSection].extension[extensionEICRReceiptTime] ^definition = "This extension contains the date and time of eICR receipt."
* section[sliceEICRSection].code 1.. MS
* section[sliceEICRSection].code = $loinc#88082-3
* section[sliceEICRSection].code ^short = "Initial case report processing information Document"
* section[sliceEICRSection].code ^isModifier = false
* section[sliceEICRSection].entry MS
* section[sliceEICRSection].entry ^slicing.discriminator.type = #profile
* section[sliceEICRSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceEICRSection].entry ^slicing.rules = #open
* section[sliceEICRSection].entry contains
    sliceEICRDocument 0..* MS
* section[sliceEICRSection].entry[sliceEICRDocument] only Reference(EICRDocumentBundle or USCoreDocumentReferenceProfile)
* section[sliceEICRSection].entry[sliceEICRDocument] ^sliceName = "sliceEICRDocument"
* section[sliceEICRSection].entry[sliceEICRDocument] ^short = "Reference to eICR Document Bundle or eICR CDA document"
* section[sliceEICRSection].entry[sliceEICRDocument] ^definition = "Reference to eICR Document Bundle or eICR CDA document. Use identifier for eICR Document Bundle identifier 2. Use display for eICR file name (or other identifying string): recommended primarily for dealing with eICR error cases. In the case where an eICR document is unreadable for some reason, it is possible that the only identifying information is the eICR filename (or other identifying string)."
* section[sliceEICRSection].entry[sliceEICRDocument] ^mustSupport = true
* section[sliceEICRSection].entry[sliceEICRDocument].identifier ^short = "eICR Document Bundle identifier"
* section[sliceEICRSection].entry[sliceEICRDocument].display MS
* section[sliceEICRSection].entry[sliceEICRDocument].display ^short = "Filename of eICR"
* section[sliceEICRSection].entry[sliceEICRDocument].display ^definition = "The filename is recommended primarily for dealing with eICR error cases. In the case where an eICR document is unreadable for some reason, it is likely that the setId and versionNumber would be unavailable, and it is possible that the only identifying information is the eICR document filename."
* section[sliceRRSummarySection] ^short = "Reportability Response Summary Section"
* section[sliceRRSummarySection] ^definition = "This section contains the Reportability Response Summary profile and the Reportability Response Priority profile.\n\nThis section is present in the Reportability Response Document if the eICR Document was processed and is not present if the eICR Document was not processed.\n\nThe narrative in this section is displayed last in the Reportability Response Document and consists of the following elements in the following order (see example included in IG):\n\n* Paragraphs containing the \"Summary:\" heading and the summary text\n* A list containing external resources from the following categories (code specified in External Resources/code), in the order specified below:\n    * Outbreak- or Cluster-related\n    * Additional reporting needs\n    * Additional detection and/or laboratory testing needs\n    * Treatment and/or prevention\n    * PHA contact information\n* A list containing external resources from the category (code specified in External Resources/code):\n    * Additional resources"
* section[sliceRRSummarySection] ^isModifier = false
* section[sliceRRSummarySection].extension 1..
* section[sliceRRSummarySection].extension ^slicing.discriminator.type = #value
* section[sliceRRSummarySection].extension ^slicing.discriminator.path = "url"
* section[sliceRRSummarySection].extension ^slicing.rules = #open
* section[sliceRRSummarySection].extension contains 
    RR_Priority_Extension named extensionRRPriority 1..1 MS
* section[sliceRRSummarySection].extension[extensionRRPriority] ^short = "RR Priority"
* section[sliceRRSummarySection].extension[extensionRRPriority] ^definition = "Represents a priority for the reportability response overall. It has been calculated from the highest priority of any included External Resources or the highest priority of included Conditions based on a separate, jurisdictionally developed priority list. This priority should be used for EHR workflow including notification, alerting, routing and queueing."
* section[sliceRRSummarySection].code 1.. MS
* section[sliceRRSummarySection].code = $loinc#55112-7
* section[sliceRRSummarySection].code ^short = "Document summary"
* section[sliceRRSummarySection].code ^isModifier = false
* section[sliceRRSummarySection].text 1.. MS
* section[sliceRRSummarySection].text ^short = "RR Summary Section narrative"
* section[sliceRRSummarySection].entry MS
* section[sliceRRSummarySection].entry ^slicing.discriminator.type = #profile
* section[sliceRRSummarySection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceRRSummarySection].entry ^slicing.rules = #open
* section[sliceRRSummarySection].entry contains 
    sliceRRSummary 1..1 MS and
    sliceRRCondition 1..* MS
* section[sliceRRSummarySection].entry[sliceRRSummary] only Reference(RRSummary)
* section[sliceRRSummarySection].entry[sliceRRSummary] ^short = "RR Summary"
* section[sliceRRSummarySection].entry[sliceRRCondition] only Reference(RRRelevantReportableConditionObservation)
* section[sliceRRSummarySection].entry[sliceRRCondition] ^sliceName = "sliceRRCondition"
* section[sliceRRSummarySection].entry[sliceRRCondition] ^short = "Relevant Reportable Condition"
* section[sliceRRSummarySection].entry[sliceRRCondition] ^definition = "Contains one (if both the patient's home and the provider location have the same responsible agency) or more (if the patient's home and provider location have different responsible agencies) Reportability Information Observations. It may also contain external resources specific to the condition."
* section[sliceRRSummarySection].entry[sliceRRCondition] ^mustSupport = true