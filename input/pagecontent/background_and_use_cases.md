### Background

The submission of public health reportable event data for specific infectious and non-infectious conditions is required by law in all states and territories in the United States. In addition to supporting critical public health functions in state, local, tribal, and territorial public health agencies (PHAs), these reportable event data also indirectly support notifications between PHAs and the Centers for Disease Control and Prevention (CDC) for the Nationally Notifiable Disease Surveillance System (NNDSS) and nationwide disease monitoring. Related notifications from PHAs to the CDC and between PHAs are not in scope for this implementation guide.

Transmission of reportable laboratory results is helpful in identifying cases. Clinical laboratory result messages, however, frequently lack critical clinical and demographic data needed for surveillance. Reportable event data from EHRs complements electronic laboratory reporting through earlier reporting and by providing clinical and demographic data. It is also important to public health surveillance for critical clinical data, under-reported clinical cases, emergency management of new conditions, and for conditions for which a laboratory result is not a definitive criterion.

While the transmission of reportable event data from clinical care to PHAs is considered to be a core public health function, its electronic implementation has been slow to advance nationally because of a number of challenges. Laws requiring the reporting of infectious and non-infectious conditions are written individually by each public health jurisdiction. Geographic differences in condition prevalence and other jurisdictional variations have created a complex array of reporting expectations making it difficult for providers to know when, where, and what to report. Healthcare providers, for their part, have been historically inconsistent in reporting from clinical care by any process. For example, a CDC study indicated that of the cases of Lyme disease recorded as a clinical diagnosis in clinical care, only about one out of ten are reported to the appropriate PHA.

Reportable event data are important for tracking disease trends at the local, state, and national levels, but also serve to feed surveillance and outbreak management systems that support the investigation and management of individual cases and outbreaks in routine and emergent public health situations. State, local, tribal, and territorial PHAs are authorized by law to receive identifiable data to enable these activities.

Previous efforts to develop standards for the exchange of reportable event data between clinical care and public health have been challenged by inter-organizational exchange issues. These issues include efforts to develop numerous implementation guides to accommodate individual conditions and efforts to try to harmonize different jurisdictional reporting nuances and program specific data into one consolidated data specification. A goal of this implementation guide is to ensure that consistent, comparable case reports are received by PHAs and that a consistent, common eICR can be constructed by EHR vendors and clinical care providers regardless of the jurisdictions in which they must report.

The electronic Initial Case Report (eICR) is termed "initial" because the report may be the first report made to public health from the clinical provider, containing just enough pertinent data for PHAs to initiate investigation or other appropriate public health activities, as necessary. These electronic reports may be manually initiated by the clinician or may be automatically initiated by the EHR when updated patient data is matched against a set of public health Reportable Condition Trigger Codes (RCTC) distributed in the [electronic Reporting and Surveillance Distribution (eRSD)](ersd_transaction_and_profiles.html). The eICR conveys initial reportable event data to public health and supports reportable conditions in all jurisdictions to ease integration by EHR vendors and clinical care organizations. Common data elements for the eICR were identified by a task force of the Council of State and Territorial Epidemiologists (CSTE) (see [eICR Data Elements](eicr_data_elements.html)).

In some circumstances the eICR will be all that is needed to support public health reporting. The eICR may lead to the reporting of additional data or follow-up by the PHA to confirm reportability, provide condition-specific or public health jurisdiction-specific case data, and/or support public health investigation, contact tracing, and/or countermeasure administration.

The eICR itself may be conveyed by a number of different transport methods (see [Transport Options](transport_options.html)). It serves as input for reportability evaluation performed by a public health decision support system. For each eICR that is received, the [Reportability Response (RR)](rr_transaction_and_profiles.html) is used by public health to communicate back to the reporting healthcare provider / organization. The Reportability Response conveys the reportability of a condition, information on that condition in the relevant jurisdiction(s), and other supporting public health information back to clinical care personnel. It also serves as an acknowledgment of successful eICR submission or conveys error and warning information back to the reporting healthcare EHR administrator.

The automated reporting of information from healthcare to public health can bring many benefits, but it also brings new capabilities and needs for information to flow from public health to clinical care. For some time, clinical care providers have expressed the concern that they do not receive the information they want from public health for all of the information they provide to public health. This "bi-directional communication" problem relates to perceptions of the quantity of data that flows in one direction, but also to the limited specificity, patient context, and workflow integration of the information that is offered to clinical care from PHA web sites and other sources. Among other things, healthcare providers have expressed the desire to have information on the status of reportable conditions in their jurisdictions with succinct next steps they should be taking relative to these conditions and their patients. These are some of the purposes of the Reportability Response.

Healthcare organizations will use the information in the Reportability Response in multiple clinical roles and workflows, and at differing levels of public health urgency:

* There are times when a provider, such as the clinician of record, needs information regarding legally mandated reporting requirements on important public health conditions for which they may have just submitted a report.
* Frequently, clinical support staff or Infection Control Practitioners (ICPs) are responsible for following up on reportable conditions and ensuring that all reporting is accomplished, as well as implementing relevant transmission mitigation procedures within their healthcare facility.
* EHR system administrators need confirmation that eICRs have been properly shared with public health and, if errors or reporting problems occur, that they are rapidly resolved.

One Reportability Response is created for each eICR and shared with the clinical care organization that created the eICR. It can also be shared with the responsible PHA(s) that want to use it to monitor the reporting process and know what has been conveyed to clinical care organizations and other PHAs. The functions the Reportability Response serves for clinical care, and the possible determinations of reportability it conveys, are described in [Reportability Response Narrative Guidance](rr_narrative_guidance.html).

This implementation guide builds on experience, specifications, and lessons learned from the HL7 CDA R2 Implementation Guide: Public Health Case Reporting; the ONC Standards and Interoperability (S&I) Framework Public Health Case Reporting Initiative (PHRI); the CSTE "Minimum EHR Data for an Electronic Initial Case Report (eICR)"; work done by CSTE and CDC on the Reportable Conditions Knowledge Management System (RCKMS); and the Association of State and Territorial Health Officials (ASTHO), Association of Public Health Laboratories (APHL), and CDC work on trigger codes for reportable conditions as part of the Public Health Community Platform (PHCP). More information on some of this work can be found at [ecr.aimsplatform.org](https://ecr.aimsplatform.org).

### Scope

The following areas are in scope for this implementation guide:

* The data elements to be retrieved from the EHR to produce the eICR;
* The specification of the eICR, the Reportability Response, and the eRSD transactions in HL7 FHIR format;
* A description of the stakeholders and actors for each public health reporting user story;
* The definition of a standard exchange format including structure and content (i.e., vocabulary); and
* Identification of the requirements to generate reports from EHR systems (in all clinical settings where EHR data is used for reporting purposes, e.g., inpatient, outpatient, emergency room) to PHAs. Note: reports may include administrative, laboratory, pharmacy and/or other information imported from separate systems into the EHR, but how these data are mapped into the eICR may vary across EHRs.

The following areas are out of scope for this implementation guide:

* The selection and maintenance of the content of the trigger code value sets (the RCTC) that are distributed in the eRSD and used to initiate the sending of an eICR;
* The specifications for supplemental data associated with a report of a reportable condition;
* The specific methods for providers to transmit eICRs to PHAs. Some of these are described in [Transport Options](transport_options.html) for context purposes only;
* The methods for PHAs to receive and process eICRs;
* The specifications for PHAs to notify the Centers for Disease Control and Prevention of nationally notifiable diseases;
* The definition of specifications and guidelines on reportable event criteria (e.g., defining reportable conditions) – this implementation guide will enable healthcare providers to submit an initial case report, but will not define all the reporting criteria or all potential elements that a jurisdiction may want in a complete report;
* The definition of automated "business rules" to identify potential reportable events – this implementation guide will enable healthcare providers to submit a report but will not describe the criteria or business rules to identify when such an eICR should be sent;
* The description of the process for healthcare providers to add information into an EHR or auxiliary system;
* The description of the process for PHAs to perform follow-up activities, including case monitoring;
* The definition of specifications and guidelines for reporting by means other than the transmission of an electronic message or document (e.g., telephone voice, manual web-entry and mailed or faxed information);
* The description of any additional or extensive bi-directional communication between a PHA and a healthcare provider beyond the sending of an eICR and the return of a Reportability Response;
* The identification of security requirements, methodologies, procedures, and/or protocols; and
* The identification of information and data stewardship practices and policies.

### Use Case for eCR

The generation of an eICR from clinical care, and the generation of a Reportability Response from public health and its representatives in response, are the parts of the overall electronic case reporting (eCR) flow that this implementation guide specifies. The broader eCR flow as depicted in the context flow diagram below is also referenced in the Use Case Assumptions as well as the Pre-Conditions and Post-Conditions sections. The broader eCR picture is included both to show how the eICR and Reportability Response fit in eCR and to highlight important components that should be addressed in future work.

#### Context Use Case Flow Diagram

The diagram below shows the context for the overall flow of eCR, including where creation of the eICR fits within the flow.

*Figure 1: Electronic Case Reporting Context Flow Diagram Reporting to a Public Health Agency*
<table><tr><td><img src="eCR Context Flow Diagram.jpg" style="width:100%;" alt="Electronic Case Reporting Context Flow Diagram" /></td></tr></table>

The left side of the eCR context flow diagram shows the generation and sending of the eICR including:

* The eICR is manually initiated by a provider.
* The eICR is automatically initiated based on a comparison of electronic health record data for an encounter against trigger codes provided by public health. This method requires a second level of decision support to determine relevant PHAs and make a determination on reportability.
* The eICR is created and sent from an EHR system.
* The eICR is created in an EHR and sent through a designee of clinical care, such as a Health Information Exchange (HIE) or trust network.

The center section, "Functions of eCR Decision Support and Interorganizational Exchange", shows the functions that need to occur in order for a Reportability Response to be constructed and routed appropriately. Some or all of these functions may be operationalized by one or more intermediaries (such as health information exchange organizations, clinical trust networks, or other shared services platforms), by clinical care, and/or by PHAs, under the authority of clinical care, public health, or a combination thereof.

"Determine Reportability for eICR Condition(s) for each Responsible Agency(ies)" is a function to determine if possible condition(s) in the eICR meet jurisdictional reporting requirements and to which responsible agency(ies) the eICR should be sent. This function could be met by:

* A centralized decision support service that is designed to include reporting specifications for all PHAs and all conditions and operates on behalf of the healthcare organization to operationalize reporting;
* A localized decision support service operating under HIPAA Treatment, Payment and Operations; or
* Manual inspection (not recommended as reports may not meet reporting requirements) at a PHA in the absence of an automated approach.

Once generated, the Reportability Response will be sent to the eICR originating clinical care organization and to a PHA, if generated by an intermediary. Once received by clinical care, the following may take place:

* The Reportability Response will be parsed and routed to the appropriate recipient;
* The Reportability Response could be reviewed for action by a provider and/or a reporter; and
* Errors and warnings associated with the Reportability Response should be managed.

The right side of the eCR context flow diagram shows:

* The eICR is received by the PHA.
* The PHA receives the Reportability Response from an intermediary.
* The PHA receives supplemental data from clinical care (future scope).

#### Use Case Assumptions

* Patient-level clinical information is entered, imported, or accessed by a healthcare provider using an EHR system.
* Broadly-acceptable security and transport protocols, patient identification methodology, privacy and security procedures, coding, vocabulary, and normalization standards exist and are in use by the EHR system and PHA system.
* The EHR system contains or has access to all relevant information and data (e.g., demographic, clinical, laboratory, pharmacy) to generate a complete and accurate eICR in accordance with requirements described in this implementation guide.
* Appropriate data and information stewardship practices are adopted by exchange partners.
* Network and policy infrastructure exist to enable consistent, appropriate, and accurate information exchange across exchange partners.
* The EHR system may be a single stand-alone system or based upon a component-based architecture. The EHR may interface with other systems that are used to help create, populate, or transmit the report to public health or its intermediary.
* The public health system and/or its intermediary system is in place, is capable of receiving and consuming the report, and receives the report in a standardized structured format. These information systems may be a single stand-alone system or be component-based systems used to receive, process, store, or archive, as appropriate, the report for review and/or analysis.
* For automated reporting, there is a common standard set of codes used to automatically match against (i.e., trigger codes) information in a patient encounter to initiate the creation and sending of an eICR from all EHR systems. eICR documents can also be manually initiated.
* There is a standard structure and set of data elements for the eICR, defined by this implementation guide, that is accepted by all jurisdictions, for all conditions.
* The EHR system is capable of sending the eICR to public health or its intermediary system.
* Confirmation of reportability will be done by public health decision support outside of the EHR/clinical care system.
* The public health system may be a single stand-alone system or a component-based architecture. The public health system may interface with other systems that are used to help create, populate, or transmit the Reportability Response to clinical care.
* The public health system is in place, is capable of generating a Reportability Response, and sends it in a standardized structured format in accordance with the requirements described in this implementation guide.
* The public health system is capable of sending the Reportability Response to an EHR system or its intermediary system.
* Public health decision support can, at times, handle the variation in requirements for reporting that exist across local, state, tribal, and territorial boundaries.
* Intermediary systems (e.g., HIEs, trust networks, a shared public health platform), if used, are responsible for passing transport-level acknowledgements with those that they connect to. There may be several "hops" between the EHR system and the public health information system. Where possible, reliable messaging will be helpful for supporting this transport. These transport-level acknowledgments may not pass through multiple hops and as such may not be considered an authoritative acknowledgement. The Reportability Response provides both a higher-level acknowledgment of successful eICR processing and reliable round trip processing.

#### Pre-Conditions

For the generation of an eICR, the following have occurred:

* An authoritative set of reportable condition trigger codes, as provided and defined by public health (i.e., the RCTC trigger codes in the [eRSD](ersd_transaction_and_profiles.html), distributed at [ersd.aimsplatform.org](https://ersd.aimsplatform.org)), is implemented and accessed by the EHR system to match against encounter records.
* The creation of an eICR is initiated by one of two methods:
    * An automated match of information in a patient record for an encounter to a set of trigger codes within the EHR; or
    * Manual initiation of the creation of an electronic report to public health by a provider.
* The EHR system populates/generates a report using all appropriate information (e.g., data elements and terminology) for the eICR.
* The receiving system receives and processes the eICR electronically (transmission by fax does not qualify).
* The receiving system electronically groups multiple eICRs sent from one encounter when multiple trigger code events are matched (e.g., a laboratory result of a reportable condition saved in the EHR and a clinical diagnosis of a reportable condition saved in an EHR problem list).

For the generation of a Reportability Response, the following must also be in place:

* A record of an eICR sent from the EHR to public health is stored in a log within the authoring system at the EHR.
* A public health decision support system has processed the eICR using appropriate jurisdictional reporting rules.
* A narrative summary and short subject description of the reportability status has been created.
* Descriptive text and appropriate links for additional reporting needs and reportable condition guidance have been identified.

#### Post-Conditions

Following the generation and sending of an eICR:

* The PHA system and/or its intermediary system has received the eICR.
* eICRs are grouped and de-duplicated by receiving system(s).
* A record of an eICR sent from the EHR to public health is stored within the authoring system at the EHR.
* A record of receipt of the eICR is recorded in a log in the PHA system.
* The Reportability Response use case is invoked.

Following the generation and sending of a Reportability Response:

* The EHR system or its intermediary system has received the Reportability Response.
* Reportability Responses have been associated with the appropriate patient encounter and managed for any applicable follow-on processing by the receiving EHR system.
* The EHR system renders the Reportability Response for clinical users when needed.
* The EHR system can access and present the eICR associated with the Reportability Response to the clinical user when requested.
* A record of a Reportability Response sent to the clinical care provider has been stored in a log at the PHA and/or an intermediary.
* The Reportability Response has been shared, as appropriate, with the involved PHAs.
* A record of receipt of the Reportability Response is recorded in a log in the EHR system.
* The Reportability Response has been correlated to the appropriate eICR at the PHA.
* The Reportability Response / eICR pairing has been correlated with any potentially associated electronic lab reports.
* The eICR associated with any Reportability Response can be used by the PHA information system.
* The Reportability Response can be rendered at the PHA for a user upon request.

#### Actors and Roles

<table border="1">
    <thead>
        <tr style="background-color:#DCDCDC">
            <th style="text-align: center; vertical-align: middle;">Actor</th>
            <th style="text-align: center; vertical-align: middle;">Role</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Provider (Clinical care provider)</td>
            <td>
                <ul>
                    <li>Has clinical responsibility for the patient in question</li>
                    <li>May be the clinician of record for the patient</li>
                    <li>Has responsibility for reporting to public health as appropriate</li>
                    <li>Updates information in the EHR system about the patient</li>
                    <li>Serves as a possible recipient of the Reportability Response</li>
                    <li>The provider and the reporter may be the same person</li>
                    <li>If desired, initiates sending of the eICR and provides a reason for initiation (manual initiation)</li>
                    <li>Either directly or through a Reporter, provides follow-on information to the PHA if requested</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>EHR</td>
            <td>
                <ul>
                    <li>Collects, receives, and/or stores data on a patient record</li>
                    <li>Consumes and maintains trigger codes</li>
                    <li>Matches trigger codes and generates the eICR</li>
                    <li>Creates the report and transports it to public health</li>
                    <li>Receives, routes, and renders the Reportability Response from public health</li>
                    <li>Makes the eICR available with the associated Reportability Response when requested</li>
                    <li>Maintains a work queue (e.g., inbox) for Reportability Responses that require follow-on action</li>
                    <li>Facilitates capture of manually flagged conditions to be reported in an eICR</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>EHR System Administrator</td>
            <td>
                <ul>
                    <li>Ensures that eICRs are being properly triggered and that there is a Reportability Response received for each eICR transmitted</li>
                    <li>Monitors Reportability Response errors and warnings for issues with trigger codes and/or eICR creation and transmission</li>
                    <li>Configures any routing and/or applicable follow-on processing for Reportability Responses requiring action within the receiving EHR system</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Reporter (Public Health Reporter)</td>
            <td>
                <ul>
                    <li>May be a clinical or administrative staff person that supports the provider or an infection control practitioner</li>
                    <li>May have delegated responsibility for reporting to public health</li>
                    <li>Executes reporting responsibilities</li>
                    <li>Serves as a possible recipient of the Reportability Response</li>
                    <li>The provider and the reporter may be the same person</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>PHA User or Information System</td>
            <td>
                <ul>
                    <li>Receives and processes the eICR from the EHR system or intermediary</li>
                    <li>If requested, receives and processes the Reportability Response</li>
                    <li>Receives and processes supplemental information provided by the Provider or Reporter</li>
                    <li>Uses the information contained in the PHA system to carry out public health surveillance and investigation activities</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Public Health Jurisdiction User</td>
            <td>
                <ul>
                    <li>The person in a PHA that uses the information contained in the PHA system</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Public Health Admin/Author (Setup)</td>
            <td>
                As set-up steps for public health decision support:
                <ul>
                    <li>Establishes and manages reporting specifications</li>
                    <li>Provides condition-specific clinical follow-up and other decision support resources</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Public Health eRSD / Trigger Code Admin</td>
            <td>
                <ul>
                    <li>Identifies and maintains the set of trigger codes and other reporting guidance to be used in an EHR for comparison of electronic health record data for an encounter against these codes</li>
                    <li>Publishes the eRSD / trigger code set (on a routine schedule and/or for emergent situations)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Clinical Care (or Clinical Care and Designee)</td>
            <td>
                <ul>
                    <li>Implementer and user of the EHR system; or</li>
                    <li>As designee of clinical care (e.g., HIEs): receives the eICR from the EHR system and sends it to the intermediary or PHA system</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Public Health Agency (or PHA and Intermediary)</td>
            <td>
                <ul>
                    <li>Recipient of the eICR from the EHR system or clinical care designee</li>
                    <li>Confirmer of reportability</li>
                    <li>And if at a public health intermediary, sender of the eICR to the PHA system</li>
                </ul>
                Several functions can be supported by different actors to fulfill the following roles:
                <ul>
                    <li>Receive and process the eICR from the EHR system or other intermediary to:
                        <ul>
                            <li>Validate the eICR</li>
                            <li>Check for valid trigger codes and current version</li>
                            <li>Determine reportability status using predefined jurisdiction- and condition-specific rules</li>
                        </ul>
                    </li>
                    <li>Send the eICR and Reportability Response (when requested) to identified PHAs based on public health decision support</li>
                    <li>Construct the Reportability Response</li>
                    <li>Send the Reportability Response to the EHR system or its intermediary</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>

The actors for "Functions of eCR Decision Support and Interorganizational Exchange" (as identified in the eCR context flow diagram) could be:

* One or more intermediaries (such as health information exchange organizations, clinical trust networks, or other shared services platforms);
* Clinical care; and/or
* PHAs, under the authority of clinical care, public health, or a combination thereof.

#### Scenarios for Reporting an eICR to Public Health

A patient presents to a healthcare provider for a clinical examination. The healthcare provider performs the clinical examination and may record a clinical diagnosis or order a laboratory test consistent with the findings. Additionally, a laboratory test result may be returned for that patient's clinical encounter.

The generation of an eICR may be initiated by a variety of methods based on the clinical documentation and/or clinical impression. This patient encounter could be evaluated against a set of trigger codes (including SNOMED CT, ICD-10, and LOINC) that are locally implemented within the EHR system. The trigger codes are designed to identify reportable conditions. In most circumstances, secondary analysis or inspection may be needed to confirm reportability. A diagnosis, laboratory order (at times, based on suspicion of a condition), laboratory test, or laboratory result code is matched with the trigger codes, and an eICR is generated and should be reviewed against all PHA reporting requirements to confirm reportability. The clinical provider could also manually initiate the generation and sending of the eICR.

The eICR contains the data elements necessary to initiate a public health investigation or other appropriate public health action.

When determined reportable, the eICR is received by one or more appropriate PHAs and a Reportability Response is returned to the sending EHR system. The Reportability Response includes the confirmation of reportability, information about the responsible PHA(s), and over time, a request for supplemental information about the event if needed and/or information about the status of disease in the community.

##### Narrative with Example

A mother brings her 6-year-old child, Patient A, to Dr. B at Facility C after several days of fever and a progressive rash starting on the face and spreading to the trunk. Patient A presents to Dr. B, practicing at Facility C, with symptoms consistent with varicella infection. After completing the clinical examination, Dr. B records a clinical diagnosis of varicella in the problem list of the patient's record. This patient encounter is evaluated against a set of trigger codes for public health reportable conditions that have been implemented within the EHR system at Facility C. Upon matching the coded clinical diagnosis of varicella to the trigger codes, eICR processing is started, ultimately resulting in an eICR being generated and reviewed against all PHA reporting requirements to confirm reportability before sending to the PHA with authority over Facility C.

The trigger codes are designed to match patient encounters that are presumed to be reportable. A public health decision support tool may be used to confirm the reportability of the case from the EHR system at Facility C. The decision support tool utilizes jurisdictionally determined rules and identifies that a clinical diagnosis of varicella is reportable to a public health jurisdiction(s), and a Reportability Response is provided to the EHR system at Facility C. The eICR is sent to the PHA(s) and integrated into the PHA's surveillance system for follow-up by a public health investigator. The investigator may contact Patient A to identify close contacts and verify immunity. The public health investigator may also contact Dr. B to follow up on clinical findings.

##### Alternative – Public Health Intermediary

The PHA may employ an intermediary's decision support tool to receive the eICR and confirm its reportability. This intermediary would determine reportability based on the location of the healthcare facility, laboratory, and/or patient's residence and the correct PHA to which to route the eICR. Pertinent information includes patient address and facility location to determine the jurisdiction with authority to receive this information. The PHA determines whether or not an intermediary will be used.

##### Narrative with Public Health Intermediary

A patient presents to a healthcare provider for a clinical examination. The healthcare provider performs the clinical examination and may record a differential clinical diagnosis or order a laboratory test consistent with the findings. Additionally, a laboratory test result may be returned for that patient's clinical encounter. This patient encounter is evaluated against a set of trigger codes that are implemented within the EHR system. The trigger codes are designed to identify reportable conditions. In some circumstances, secondary analysis or inspection may be needed to confirm reportability. A diagnosis, laboratory order (at times, based on suspicion of a condition), laboratory test, or a laboratory result code is matched with the trigger codes, and an eICR is generated and sent to a centralized public health cloud-based intermediary designated by the PHA.

The intermediary receives the eICR from the EHR system and evaluates the document against centrally hosted public health decision logic to determine the potential public health reportability based on the facility, provider, and/or patient address and patient encounter characteristics. The intermediary will route the eICR to the correct PHA(s) consistent with the results of the public health decision support.

A Reportability Response inclusive of the results of the public health decision support will be routed back to the sending EHR system.

The eICR is received by one or more appropriate PHAs based on the business rules administered by the intermediary. The receiving PHA may contact the sending facility or provider for additional follow-up information pertinent to a public health investigation. This follow-up could utilize methods such as a structured data capture form, a phone call, or a query through an HIE.

##### Alternative – Manually Initiated eICRs

The clinical provider may manually initiate the sending of the eICR if the provider suspects that the patient has a condition of public health interest. This ability to manually initiate an eICR is important for patient encounters with non-specific symptomology that may not otherwise be automated by triggers. Business rules in any public health reporting decision support tool should be able to differentiate between a manually initiated eICR and one automated from triggers. This will allow public health to triage these reports differently with decision support and investigation initiation. See the [eICR Initiation Type extension](StructureDefinition-eicr-initiation-type-extension.html) for how manual and alternate initiation are indicated in the eICR.

#### Reportability Response Scenarios

The Reportability Response supports a number of functions in clinical care and public health. It will play a key role in communicating information in circumstances that can include several different roles in clinical care, multiple reportable conditions, trust networks and health information exchanges, public health intermediaries, and multiple PHAs. Listed below are a number of common Reportability Response scenarios. They do not represent all of the possible scenarios or permutations thereof. Example narrative text for many of these scenarios is provided in [Reportability Response Narrative Guidance](rr_narrative_guidance.html).

##### One or More Than One Reportable Condition to One or More Than One PHA

In this scenario, the Reportability Response will communicate, for one or more PHAs, which condition(s) is/are reportable, provide information about what clinical next step activities may need to occur, and other relevant resources.

In this case, a clinical care provider enters information into an EHR about a patient that matches one or more of the RCTC trigger codes in the eRSD, the EHR generates an eICR, the eICR is securely shared with public health (or an intermediary), and a public health decision support system confirms if it meets a PHA's reporting requirements in order to indicate that reporting to the specific PHA is necessary.

The eICR and, at times, the Reportability Response are shared with the appropriate PHA(s) (if they did not originate it), and the Reportability Response is shared with the originating clinical care organization. Inside of the clinical care organization, the Reportability Response is associated with the appropriate patient encounter and provides status of legally required reporting. For a Reportability Response that requires action, the EHR may also queue (or be noted via a secure e-mail inbox) the action to notify the Provider of the condition(s) and applicable requested follow-on processing. In unusual circumstances, one potential action might be to alert the provider. Based on internal workflows, at times, the Reportability Response may need to be directly routed to a clinical care staff Reporter's work queue, or will be forwarded to them by the provider, for notification and follow-up. EHR system administrators will also be able to ensure that there have been no issues with the reporting process.

##### Undetermined Reportability

There are circumstances where not all data that are needed to determine reportability are available from an eICR.

In this case, a clinical care provider or supporting system enters information into an EHR about a patient that matches one or more of the RCTC trigger codes in the eRSD, the EHR generates an eICR, the eICR is securely shared with public health (or an intermediary), and a public health decision support system uses the appropriate set of rules, but reportability cannot be confirmed for the relevant PHA(s) because necessary data are not available.

The related eICR is deleted and the Reportability Response may, or may not, be shared with the appropriate PHA(s) based on preferences (and if they are not originating it). A Reportability Response is shared with the involved clinical care organization to "close the loop" on the eICR that had been shared, and providers and/or reporters are notified that one or more reportable conditions may be present depending on the information in unavailable data. The Reportability Response may include guidance for the Provider or Reporter about how to provide the missing data (e.g., by direct follow-up with the relevant PHA, as part of a supplemental data request, or by manually initiating an eICR with an explanation that includes the missing data). Manually initiated eICRs, representing significant Provider / Reporter suspicion of a reportable condition, are always shared with the relevant PHA(s).

##### No Reportable Conditions

Trigger codes are designed to trigger an eICR for reportable conditions, but specific reporting rules can vary between PHAs. There are circumstances where an eICR will be determined not to be reportable because it is not on the list of reportable conditions for the relevant PHA or the information provided at the time of this report does not meet reporting criteria.

In this case, a clinical care provider enters information into an EHR about a patient that matches one or more of the RCTC trigger codes in the eRSD, the EHR generates an eICR, the eICR is securely shared with public health (or an intermediary), and a public health decision support system uses the appropriate set of rules, but no reportability is determined for the relevant PHA(s).

The related eICR is processed based on PHA input recorded in decision support (if the eICR is being processed by an intermediary). The Reportability Response may, or may not, be shared with the appropriate PHA(s) also based on PHA input (and if they are not originating it). The Reportability Response will always be shared with the involved clinical care organization to "close the loop" and for audit purposes on the eICR that had been shared, but it is recommended that neither Providers nor Reporters receive notification unless they specifically ask for it.

##### Reporting Issue

All eICRs are intended for machine processing and archiving on receipt including electronic decryption, content parsing and validation, decision support processing and, when necessary, sending, parsing and consumption by a separate public health surveillance system. To be able to maintain the reporting process, to have comparable data at all of the different steps of this process, and to ensure that EHRs are using current RCTC versions and codes from the eRSD, it is important to be able to communicate reporting warnings and errors back to EHR system administrators.

In this case, a clinical care provider enters information into an EHR about a patient that matches one or more of the RCTC trigger codes in the eRSD, the EHR generates an eICR, and the eICR is securely shared for public health assessment.

But on receipt, the eICR may be found to be corrupt, it may not be decryptable, the content may be malformed or not processable, some required eICR data may not be found, an outdated version of the RCTC may have been used to trigger it, or an old trigger code may still be in place in the EHR. In these and other circumstances, a Reportability Response will be generated and, if possible, sent back. The Reportability Response will include information about the technical problem: the appropriate error, if the eICR was not able to be processed; the appropriate warning, if the eICR was able to be processed; and/or notice of the use of an outdated code set or code.

Reportability Responses with eICR processing errors (the eICR was not processed) are shared with EHR system administrators, and follow-up by Reporters or Providers using alternate reporting mechanisms may be necessary to complete legally required reporting requirements. Reportability Responses with warnings or notifications of outdated trigger code sets (the eICR was still processed) are managed by clinical care in accordance with determined routing and notification based on the determination of reportability and other supporting information as in the scenarios above. In situations where there is a decision support intermediary and the eICR cannot be processed, the appropriate PHA(s) may not be able to be determined. In the situation where the eICR can be processed but a warning was identified, the Reportability Response would be shared with the PHA if requested by the PHA. If the relevant PHA(s) can be determined, the Reportability Response will be shared, for PHAs that want to receive it, as an early indication that there may be something on which to follow up.
