summary eicr changes

1. From two PHER discussions and multiple contributed comments the following path forward was adopted for the initial “priority” value set to be used for categorizing condition specific instructions and external references.

 * This value set will be dynamically bound - meaning that it can be updated after the IG is published.
 * Specific guidance to implementers will be added asking that they guide the use of values that include the word “required” to only be used there is a basis in statutory authority for that designation.
 * Overall Reportability Response document priority will come from either 1) the highest priority of included text additions and links or 2) the highest priority of included conditions based on a separate,  jurisdictionally developed priority list.

The initial value set choice will be:

 * Immediate action required
 * Action required
 * Immediate action requested
 * Action requested
 * Information only

The data element for reporting time frame will be suggested for presentation to Providers / Reporters as a modifier for "Action Required" items.

1. "After further discussion around the responsible agency/authoring agency/routing agency codes, it has been determined that the requirement is not for a code, but for an identifier. The need is to uniquely identify each responsible agency/authoring agency/routing agency.

To this end the following actions will be taken:
Volume 2:
 - remove the code element from the 3 templates (Responsible Agency, Authoring Agency and Routing Entity) as it is no longer needed
 - update the id element in the 3 templates (Responsible Agency, Authoring Agency and Routing Entity) from MAY 0..1 to SHOULD 0..1
 - update all language to reflect change from code to id
Volume 1:
 - change the data element name from ""Authoring Agency Code"" to ""Authoring Agency Identifier""
 - change the data element name from ""Responsible Agency Code"" to ""Responsible Agency Identifier""
 - change the data element name from ""Routing Entity Code"" to ""Routing Entity Identifier""
 - update data type for each of the above 3 elements to ""II (instance identifier)"" instead of ""code
 - update the description for Authoring Agency Identifier to ""An identifier indicating the public health agency that authored reporting specifications in the decision support system at the PHA (or an intermediary).""
 - update the description for Responsible Agency Identifier to ""An identifier indicating the PHA that is responsible for follow-up on the case investigation.""
 - update the description for Routing Entity Identifier to ""An identifier indicating the public health agency or other identified organization (such as an HIE) to which the eICR (if deemed reportable) and/or Reportability Response will be routed""
 - update mappings in mapping table where necessary
 - update all language to reflect change from code to id


1. "Both the eICR and Reportability Response have been developed to support EHR to PHA and EHR to AIMS/RCKMS to PHA use cases.

1. Reporter:
- May be a clinical or administrative staff person that supports the provider or an infection control practitioner
- May have delegated responsibility for reporting to public health
- Executes reporting responsibilities
- Serve as a possible recipient of the Reportability Response
- The provider and the reporter may be the same person
- Provides follow-on information to PHA if requested"

1. Receivers:
"Based on the updated to the eCR Context Flow Diagram, the actor of ""Public Health Agency Information System"" was changed to actor ""Public Health User or Information System"" now includes the following roles;
• Receive and process eICR from EHR system or intermediary
• If requested, receive and process Reportability Response
• Receive and process supplemental information provided by Provider or Reporter
• Use the information contained in the PHA system to carry out public health surveillance and investigation activities

1. Intermediaries:
""The term intermediary is more clearly defined in the updated footnotes. Based on newly worked UC diagram, the footnote associated with this comment will now read: 1 – Some or all of these functions may be operationalized by:
- one or more intermediaries (such as health information exchange organizations, clinical trust networks, or other shared services platform);
- clinical care; and/or
- public health agencies,
under the authority of clinical care, public health or a combination thereof."Wording will be changed to:

Intermediary:

An organization that is in the information flow between a healthcare organization and a Public Health Agency regarding case reporting. An intermediary may be acting on behalf of either the healthcare organization as a business associate or public health as an authorized agent. Examples include a Health Information Exchange (HIE) organization, a clinical trust and exchange network, or a shared infrastructure and routing platform like that of APHL AIMS. "


In the most common scenario, the Reportability Response will communicate, for one or more jurisdictions, which condition(s) is/are reportable, provide information about what clinical next step activities may need to occur, and other relevant
"
1. Responsible Agency: The Responsible Agency term plays an important role as an agency to which reporting is required by statute and may differ from the agency to which the Reportability Response has been immediately sent.

The definitions of Reportability Response agencies and entities and supportive text in other parts of the IG will be updated to include / align as appropriate with the following:

1. Responsible Agency:

  - ""A PHA to which reporting is legally required.""
• Rules Authoring Agency - ""The PHA whose rules are being executed in decision support to determine reportability. This may be a State or Local PHA.""
• Routing Entity  - ""A PHA or other organization identified by the PHA (such as an HIE) to which the eICR and/or the Reportability Response will be provided immediately following the creation of the Reportability Response. This entity may just be acting to route the eICR and Reportability Response on their way to a Responsible Agency
"
1. The Reportability Response Summary:
 should contain the reportability determination for each responsible PHA(s) and the PHA(s) that wll be sent the eICR (when deemed reportable based jurisdiction specific reporting requirements)"

1.  "The condition - PHA pairing has been clarified in the following wording and in multiple places in the document. Responsible Agency has been dedined as well. The proposed wording in this comment only focuses on RCKMS and that not the only allowable decision support system. The new wording will be:

1. For each condition that was determined to be reportable to a given “responsible agency” (may be based on rules from a “authoring agency”):
     The name of the condition
     The name of the “Responsible Agency(ies)” in which the condition was determined to be reportable (contact information for the primary “responsible agency” will be one of the links in the table that follows the narrative summary)
     Identification of the agency(ies) that have been sent the corresponding eICR (in regard to reporting requirements)"

1. Langauge will be added to indicated PHA and clincial receivers of the Reportabilty Response.

1. Description for Date and time of eICR Receipt:
The date and time of eICR receipt by entity that is generating the Reportability Response  (to assist with troubleshooting and establish the elapsed time between the EHR sending the eICR and public health receiving the eICR)"""

1. "Definition will be changed to:
For each condition identified in the eICR and the relevant public health agency(s), this element indicates the determination of whether the condition is reportable to public health.  Generally this is expected to be Reportable, Not reportable, or May meet reporting criteria (a determination can not be made without additional information).

Note:  This element does not represent the determination of reportability based on the totality of the eICR.
 The Reportability Reponse does not include a ""overall reportability"" status."

1.  The current list of locations that can be relevant are patient's home address, the provider facility address or both so the existing description will be used.

1. The element of "primary responsible agency" will be removed from the IG.

1.  agenicies/entities:

The definitions of Reportability Response agencies and entities and supportive text in other parts of the IG will be updated to include / align as appropriate with the following:

• Responsible Agency  - ""A PHA to which reporting is legally required.""
• Rules Authoring Agency - ""The PHA whose rules are being executed in decision support to determine reportability. This may be a State or Local PHA.""
• Routing Entity  - ""A PHA or other organization identified by the PHA (such as an HIE) to which the eICR and/or the Reportability Response will be provided immediately following the creation of the Reportability Response. This entity may just be acting to route the eICR and Reportability Response on their way to a Responsible Agency."""

"The condition / agency pairing is an important part of the existing model. As indicated in other comments, the  condition ""pairing"" is with a combination of ""Rules Authoring Agency / Responsible Agency / Routing Entity” elements. There can be multiple pairings emanating from a single eICR. The cardinality of the individual elements in the combination is being updated to:
Each condition will have :
- at least one (1..*) Rules Authoring Agency
- at least one (1..*) Routing Entity
- zero to many (0..*) Responsible Agency
"

1. "This data should be copied from the eICR CDA document from the same data elements. i.e. RR.encompassingEncounter.responsibleParty.assignedEntity = eICR.encompassingEncounter.responsibleParty.assignedEntity

The encompassingEncounter contains BOTH the provider office location AND the facility where care was provided.

The provider office location data is located in:
    encompassingEncounter.responsibleParty.assignedEntity.addr (mapped to data element ResponsibleProvider.address in the IG)
The facility where care was provided is located in:
    encompassingEncounter.location.healthCareFacility.location.address (mapped to data element CareDeliveryFacility.postalAddress in the IG)"

1. Rules Authoring Agency: The Rules Authoring Agency is whose rules are being executed in decision support to determine reportability. This may be a State or Local PHA. In the majority of cases the Rules Authoring Agency will be the same as the Responsible Agency. Usually, a Local Public Health Agency will inherit rules from its relevant State agency, but a Local agency can adopt, replace or supplement relevant state rules."

1. "In the eICR, the clinician of record who is responsible for reporting (the Responsible Provider) should have been included as the ""encompassingEncounter/responsibleParty” in the eICR. This “encompassingEncounter/responsibleParty” from the eICR is recorded as the main ""informationRecipient"" for the Reportability Response. It should contain the contact information needed to route the Reportability Response back to the clinical care organization. Routing inside of the clinical care organization has been left to local, and EHR, implementation. One or more of the eICR's ""author"" elements may contain contact information for a clinical care ""reporter"", which could then be stored as another “informationRecipient” of the Reportability Response. One of the eICR’s “author” elements may also contain information about the software system but this information would not be included in the Reportability Response.

Will update informationRecipient to:
SHALL
 - informationRecipient.intendedRecipient
 - informationRecipient.intendedRecipient.id
 - informationRecipient.intendedRecipient.addr
 - informationRecipient.intendedRecipient.addr
 - informationRecipient.intendedRecipient.telecom
 - informationRecipient.intendedRecipient.informationRecipient
 - informationRecipient.intendentRecipient.informationRecipient.name
SHOULD
 - informationRecipient.intendedRecipient.receivedOrganization
SHALL if receivedOrganization is present
 - informationRecipient.intendedRecipient.receivedOrganization.id
 - informationRecipient.intendedRecipient.receivedOrganization.name
 - informationRecipient.intendedRecipient.receivedOrganization.addr
 - informationRecipient.intendedRecipient.receivedOrganization.telecom

Will update the note for informationRecipient from:
""If the eICR CDA document was not processed the informationRecipient SHOULD be the system administrator, otherwise the informationRecipient SHOULD be the provider.""
to
""The informationRecipient SHALL contain the provider details. The provider details are obtained from the eICR encompassingEncounter/responsibleParty/assignedEntity which contains the ""ResponsibleProvider"" data. This data is also contained in the RR encompassingEncounter/responsibleParty/assignedEntity.
The informationRecipient MAY also contain the reporter details. The reporter details are obtained from the eICR author, in cases where the author is the reporter and is not software (i.e. author/assignedAuthor/assignedPerson is present in the eICR CDA XML).""

1. It is not possible to record an organization as the guardian using the US Realm Header.  This is an issue with the US Realm Header template. Will submit an STU Comment against the C-CDA R2.1.

1. This should not have the codeSystem as SNOMED.  The codeSystem should be PHIN VS (CDC Local Coding System)  (urn:oid:2.16.840.1.114222.4.5.274) as this is a code that has been requested from CDC. Will fix codeSystemName and codeSystem.

1. "Language in the IG will be updated to define reportability as ""the quality or state of being reportable or not.""  And informative guidance language for providers and reporters will clarify that reportability does not equate to the patient having a condition or meeting a case definition (definitively being “a case”).

Decision support systems that are used to help populate a Reportability Response will use a value set that clearly defines two alternatives for decision support processing for any given condition-PHA pairing based on the capabilities of the system. One alternative will be:
• Reportable - The information provided meets reporting requirements for the associated PHA.
• No rule met - The information provided does not meet reporting requirements or may meet reporting requirements if additional information is provided.

The other alternative will allow for more information to be provided:
• Reportable - The information provided meets reporting requirements for the associated PHA.
• May meet reporting requirements* - The information provided may meet reporting requirements if additional information is provided.
• Not reportable - The information provided does not meet reporting requirements.

*The Reportability Response will also be able to identify what information needs to be provided to determine reportability.  PHAs will be able to determine if they want to receive Reportability Responses for this category.

1. "The suggested Reportability Response summary (narrative) will be revised as follows. Each Reportability Response will begin with the first statement.  When the Reportability Response is related to a manually initiated eICR that statement will always be included once. The remaining narrative will be constructed using the appropriate statements based on the determination of reportability (reportable, may be reportable, not reportable, no rule met). These statements can repeat based on the number of condition/public health agency pairs identified in the eICR.  Examples of the possible combinations will be included in Volume 3.

Reportability Response summary generic template:
(Always present)
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.

(If eICR was manually initiated)
The initial report was manually initiated by a provider. It was sent to: <routing entity name>,<routing entity name>...

(include and repeat for each eICR <determination of reportability code>)

(Reportable)
“<reportable condition name>” is reportable to <responsible agency name>. The initial case report was sent to <routing entity name>. Additional information may be required for this report.

(May be reportable)
“<reportable condition name>” may be reportable to <responsible agency name>. It was determined that it may be reportable because: <determination of reportability reason>

(Not reportable)
“<reportable condition name>” was determined not to be reportable to <responsible agency name>.  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.

(No rule met)
A determination of reportability for a triggered condition could not be made for <responsible agency name>.  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportability were available.

Note: While the identification of a Responsible Agency is an important part of information that the Reportability Response will provide to clinical care, some decision support systems may not be able to initially identify one.  In that circumstance, sentences that identify ""for"" or ""to"" <responsible agency name> should be ended with a period before that text. (e.g., A determination of reportability for a triggered condition could not be made. for <responsible agency name>.)

"
1. "This comment addresses the issues raised in comments 78, 110, 221, 339, 355 about the reporting of outdated RCTC versions and inactive RCTC codes and their associated templates.

We will remove the following templates:  - eh applied
    • Outdated RCTC Version
    • Expected RCTC Version
    • Inactive RCTC Code
The reporting of outdated RCTC version and inactive RCTC code will now be contained in the eICR Processing Status template hierarchy.  Specifically we will add a new template called ""eICR Processing Status Reason Details"" to hold the outdated RCTC version and the expected RCTC version or the inactive RCTC code details (this template will have a generic structure of a code/value pair with the code specifying the type of detail held (e.g. inactive RCTC code) and the value holding the detail (e.g. code ""xxxxx"" codeSystem ""SNOMED CT"" etc.). This template will have the ability to hold details of other warnings or errors, if needed).

The structure of the eICR Processing Status hierarchy will be changed as follows:
    • eICR Processing Status
            • SHOULD [0..*] eICR Processing Status Reason - eh applied
                    • MAY [0..*] eICR Processing Status Details  - eh Detected Issue reference extension   ( create an ecr extension for DI)

This structure allows for multiple outdated RCTC versions to be reported as requested in comment 78.

Examples of values to be used in above templates:
• eICR Processing Status values:  -->  concept map
    PROCESSED  --> complete
    PROCESSED_WITH_WARNING --> completed
    NOT_PROCESSED_WITH_ERROR --> aborted
    PROCESSED_SEVERE_WARNING etc. --> aborted

• eICR Processing Status Reason values:  --> status reason reference to OO
    EICR_FATAL
    EICR_SERVER
    INACTIVE_RCTC_CODE, etc.

• eICR Processing Status Details  --> status reason reference to OO look at OO from post.   review if this in needed or even possible in Communication maybe part of the POST workflow and not the RR.
      code/value pair with code=type of detail and value=detail
      INACTIVE_RCTC_CODE/99999, SNOMED CT

Will move the text currently in the Electronic Initial Case Report Section (where the 3 templates are being deleted from) to the description of the eICR Processing Status template and update it to read (as suggested in comment 221 and to address comments 110 and 111):
""If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and the contained eICR Processing Status Details template(s) SHALL contain the outdated RCTC version and the expected RCTC version or the inactive RCTC code."""
