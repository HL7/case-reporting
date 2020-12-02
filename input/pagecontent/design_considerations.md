[Previous Page - Implementation Guidance](implementation_guidance.html)

#### Overall Design

The Electronic Case Reporting (eCR) standards; the electronic Initial Case Report (eICR) and the Reportability Response (RR), support two broad approaches to eCR.

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

FHIR enables several capabilities for eCR. Because reportable events occur in healthcare without PHA knowledge and because PHAs do not have the authority to receive these data until they are deemed reportable, eCR utilizes an unsolicited push transaction, FHIR messaging, and flexibility in multi-network transport to report data to state and local agencies. There is also a transaction for “electronic Reporting & Surveillance Distribution (eRSD).” The eRSD includes Reportable Condition Trigger Code (RCTC) trigger code value sets and other reporting guidance from public health to healthcare to support reporting from EHRs. This eRSD transaction is supported by FHIR subscription and polling services, but EHR users do not need to use FHIR to access it.

FHIR also offers several possibilities for distributing more complex reporting rules to healthcare. Widely implementable distributable rules would alleviate the need for rules processing on an intermediate platform, supplemental filtering, and provide flexibility in information flows. The local rules would operate under healthcare authorities and only disclose data to public health agencies that are specified by state laws. Local rules might be implemented through FHIR Clinical Decision Support and/or API - based rules engines that can process FHIRPath, CQL, and/ or other standards-based rules.

The eRSD includes the ability to distribute rules and associated value sets in a supplemental bundle.  There are several possibilities for how the various elements of eCR may be triggered or initiated. Triggering based on data, workflow, or timed events may be supported though FHIR Subscription in the EHR, though scheduled queries or other approaches. The eRSD transaction can enable these distributions going forward as well as provide details for how critical elements, like report timing. The eRSD transaction is needed to help orchestrate this reporting. To achieve this orchestration, the eRSD resources need to guide the triggering, rule processing, clinical feedback, creation of eICR, routing and sending components of eCR and interactions between them. The eRSD transaction will provide structure to eCR as human consumable guidance and as a machine processable artifact.

As with the CDA Reportability Response, the FHIR version needs to be queueable in healthcare provider/reporter workflows and be attachable to a patient chart when there is a reportable or maybe reportable condition identified. Also, like the CDA Reportability Response, the FHIR version needs to be able to convey trusted Public Health Agency web-links for management and treatment guidance information as well as links for web forms that enable PHA acquisition of case investigation supplemental data that may not be recorded in the typical process of care.

[Next Page - Reportability Response Narrative Guidance](reportability_response_narrative_guidance.html)