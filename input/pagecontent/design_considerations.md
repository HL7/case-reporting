[Previous Page - Implementation Guidance](implementation_guidance.html)

#### Existing CDA Design

The CDA Electronic Case Reporting (eCR) standards; the electronic Initial Case Report (eICR) and the Reportability Response (RR), support two broad approaches to eCR.
One of the approaches also uses the Reportable Condition Knowledge Management System (RCKMS) on the Association of Public Health Laboratories (APHL) AIMS platform to report to Public Health Agencies (PHAs) and one does not. The two approaches are:

1. information flowing from healthcare to PHAs (via the eICR) and back (via the RR)
2. information flowing from healthcare to AIMS/RCKMS (via the eICR) and then to PHAs (via the eICR and sometimes the RR) and with a response to healthcare from the AIMS/RCKMS (via the RR)

In some jurisdictions Health Information Exchanges (HIEs) and/or Health Networks may also be employed to securely move data between organizations.
RCKMS and the AIMS platform serve several purposes in approach #2.
Prominent among these purposes is to implement public health reporting rules that cannot currently be readily distributed to healthcare.
The rules ensure that public health agencies only get the data they are authorized to receive by state laws.
Without more complex reporting rules that are distributable to, and executable in, healthcare most PHAs will not use approach #1. Hence, these approaches are principally represented by either "Remote Rules" or "Local Rules" in the following diagram. 

<table><tr><td><img src="ReportingDesignPattern.jpg" alt="Reporting Design Pattern" class="figure-img-portrait img-responsive img-rounded center-block" /></td></tr></table>

&nbsp;

#### FHIR Design Considerations

FHIR enables several helpful capabilities for eCR.
Because reportable events occur in healthcare without PHA knowledge and because PHAs do not have the authority to receive these data until they are deemed reportable, eCR requires an unsolicited push transaction.
FHIR or other messaging and flexibility in multi-network transport will be needed to get data to state-level agencies.
To the transactions associated with the approaches listed above, we have added a transaction for "electronic Reporting & Surveillance Distribution (eRSD)" of Reportable Condition Trigger Code (RCTC) trigger code value sets and other reporting guidance from public health to healthcare to support reporting from EHRs.
This eRSD transaction is supported by FHIR services, but EHR users do not need to be using FHIR to access it.

FHIR also offers several possibilities for eventually distributing more complex reporting rules to healthcare. Widely implementable distributable rules would alleviate the need for rules processing on an intermediate platform and provide flexibility in information flows.
The local rules would operate under healthcare authorities and only disclose data to public health agencies that are specified by state laws.
This would facilitate approach #1 above. Local rules might be implemented through FHIR Clinical Decision Support and/or API - based rules engines that can process CQL or other standards-based rules. 
There are still several possibilities for how the various elements of eCR may be implemented with distributable rules.
Triggering based on data, workflow, or timed events may be supported though FHIR Subscription in the EHR, though CDS Hooks, and/or through SMART connected rules engines.
Some of these approaches will use trigger codes for triggering and others may not.

The eRSD transaction needs to be able to help orchestrate this reporting which may span a broad spectrum from trigger codes in an EHR all the way to a healthcare-based API connected rules engine that is external to the EHR, but operating inside of healthcare or at a healthcare Business Associate.
To achieve this orchestration the eRSD resource needs to guide the Triggering, Rule Processing, Clinical Feedback, Creation of eICR, Routing and Sending components of eCR and interactions between them.
For some time much of the eRSD transaction will provide structure to eCR as human consumable guidance.
The most immediately machine processable components are the included trigger code value sets.

When distributable rules can be processed in most healthcare settings, there will be needs to distribute the rules, the trigger codes, and links to relevant on-line condition-specific information.
The eRSD transaction can enable these distributions going forward as well as provide details for how critical elements, like report timing, of the reporting process should be implemented.
It will also allow for a connection to separate efforts to develop clinical guidelines for public health conditions. Reporting and guidelines should utilize the same infrastructure and approaches where possible to minimize demands on EHRs.

As with the CDA Reportability Response, the FHIR version needs to be queueable in healthcare provider/reporter workflows and be attachable to a patient chart when there is a reportable or maybe reportable condition identified.
Also, like the CDA Reportability Response, the FHIR version needs to be able to convey trusted Public Health Agency web-links for management and treatment guidance information as well as links for web forms that enable PHA acquisition of case investigation supplemental data that may not be recorded in the typical process of care.
HIE Retrieve Form for Data Capture (RFD) web forms have been demonstrated to support this investigation supplemental data need. As reporting rules become distributable to rules engines running in healthcare, it may be possible for FHIR RESTful queries from the rules engine to the EHR in order to provide additional condition and/or jurisdiction specific data.

[Next Page - Reportability Response Narrative Guidance](reportability_response_narrative_guidance.html)