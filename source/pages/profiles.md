---
title: Profiles defined as part of this Guide
layout: default
active: profiles
---

source file: source/pages/_include/{{page.md_filename}}.md  file

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

---
<br />

### Electronic Initial Case Report (eICR) Transaction and Profiles

The eICR transaction involves the transmission of data identified by a Council of State and Territorial Epidemiologists Task Force as being important to a case report.
It also includes the trigger codes that matched to initiate the report, a step toward a structured travel history, and a vital sign snapshot.
The eICR is conveyed as an unsolicited push transaction from healthcare to public health.
There may be several different intermediaries involved in the transmission including Health Information Exchanges, Health Data Networks, and the Association of Public Health Laboratories (APHL) AIMS platform. 

In this implementation guide the reference transport transaction is a FHIR POST, but other transport mechanism may be added or substituted as the data travel to the appropriate public health agencies.
In the FHIR eICR transaction to PHAs the RR payload may be added to provide the PHAs with information about what has been determined to be reportable, what PHAs have been sent eICR information, and what else has been communicated to healthcare.


The following profiles and extensions have been defined for the eICR transactions

#### Profiles

<ul>
  <li><a href="StructureDefinition-eicr-composition.html">eICR Composition Profile</a></li>
  <li><a href="StructureDefinition-ecr-organization.html">eCR Organization Profile</a></li>
  <li><a href="StructureDefinition-eicr-condition.html">eICR Condition Profile</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eICR Encounter Profile</a></li>
  <li><a href="StructureDefinition-eicr-procedurerequest.html">eICR Lab Orders Profile</a></li>
  <li><a href="StructureDefinition-eicr-location.html">eICR Location Profile</a></li>
  <li><a href="StructureDefinition-pregnancy-status.html">Pregnancy Status Profile</a></li>
  <li><a href="StructureDefinition-eicr-travel-history.html">eICR travel-history Profile</a></li>
  <li><a href="StructureDefinition-eicr-occupationhistory.html">eICR-OccupationHistory Profile</a></li>
</ul>

#### Extensions

<ul>
  <li><a href="StructureDefinition-extension-eicr-trigger-code-flag.html">eICR Trigger Code Flag</a></li>
  <li><a href="StructureDefinition-extension-valueAddress.html">Travel History Address</a></li>
</ul>

---
<br />

### Reportability Response (RR) Transaction and Profiles

The RR transaction represents a response from public health to healthcare associated with a received eICR.
It can include determination of reportability information, contact information for the involved public health agencies, and requests for case investigation / supplemental data that may not have been recorded in the process of care, condition-specific information from public health, and an acknowledgment that report has been successfully conveyed. 

When public health reporting rules are distributable to healthcare some of this information will be conveyed in the Knowledge Distribution transaction so that it can be accessed by the healthcare rules engine.
The RR is conveyed as a push transaction from public health to healthcare.
There may be several different intermediaries involved in its transmission including Health Information Exchanges and Health Data Networks.
The RR may originate from the Association of Public Health Laboratories (APHL) AIMS platform when public health decision support (the Reportable Condition Knowledge Management System - RCKMS) is used there or directly from a Public Health Agency if they received the eICR directly from healthcare. 

In this implementation guide the reference transport transaction is a FHIR POST, but other transport mechanisms may be added or substituted as the data wend their way back to the source of the related eICR.
Once received by healthcare, the RR information is intended to support Providers and Reporters and be attached to patient charts or placed in work queues so as to notify personnel of reportable and possibly reportable conditions.
It also should be provided to EHR System Administrators to confirm reporting and convey error and warning messages.


The following profiles and extensions have been defined for the Reportability Response transactions.

#### Profiles

<ul>
  <li><a href="StructureDefinition-rr-communication.html">Reportability Response Communication Profile</a></li>
  <li><a href="StructureDefinition-rr-plandefinition.html">Reportability Response PlanDefinition Profile</a></li>
  <li><a href="StructureDefinition-rr-rules-authoring-agency.html">Rules Authoring Agency</a></li>
  <li><a href="StructureDefinition-rr-responsible-agency.html">Responsible Agency</a></li>
  <li><a href="StructureDefinition-rr-routing-entity.html">Routing Entity</a></li>
  <li><a href="StructureDefinition-rr-eicr-processing-status.html">eICR Processing Status Profile</a></li>
  <li><a href="StructureDefinition-rr-eicr-processing-status-reason.html">eICR Processing Status Reason Profile</a></li>
  <li><a href="StructureDefinition-ecr-organization.html">eCR Organization Profile</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eICR Encounter Profile</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-extension-rr-subject.html">Extension Reportability Response Subject</a></li>
  <li><a href="StructureDefinition-extension-rr-summary.html">Extension Reportability Response Summary</a></li>
  <li><a href="StructureDefinition-extension-ecr-practitionerrole.html">Extension PractitionerRole reference</a></li>
  <li><a href="StructureDefinition-extension-rr-location-relevance.html">Extension Location Relevance</a></li>
  <li><a href="StructureDefinition-extension-rr-manually-initiated-eicr.html">Extension Manually Initiated eICR</a></li>
  <li><a href="StructureDefinition-extension-rr-eicr-processing-status.html">Extension eICR Processing Status</a></li>
  <li><a href="StructureDefinition-extension-rr-determination-of-reportability.html">Extension Determination of Reportability</a></li>
  <li><a href="StructureDefinition-extension-rr-determination-of-reportability-reason.html">Extension Determination of Reportability Reason</a></li>
  <li><a href="StructureDefinition-extension-rr-determination-of-reportability-rule.html">Extension Determination of Reportability Rule</a></li>
  <li><a href="StructureDefinition-extension-rr-responsible-agency.html">Extension Responsible Agency</a></li>
  <li><a href="StructureDefinition-extension-rr-rules-authoring-agency.html">Extension Rules Authoring Agency</a></li>
  <li><a href="StructureDefinition-extension-rr-routing-entity.html">Extension Routing Entity</a></li>
  <li><a href="StructureDefinition-extension-rr-external-resource-type.html">Extension External Resource Type</a></li>
  <li><a href="StructureDefinition-extension-rr-external-resource-priority.html">Extension External Resource Priority</a></li>
</ul>
---
<br/>
### Knowledge Distribution Transaction and Profiles

The Knowledge Distribution transaction includes a constrained FHIR PlanDefinition resource profile, a family of actions, and a FHIR Subscription service. 
It supports the distribution of reporting guidance and parameters, trigger code value sets, and presents a structure for the distribution of more complex reporting rules and clinician / reporter support resources.
This standard seeks to align with developing public health guideline work that covers the same conditions.
The PlanDefinition includes guidance for the overall orchestration of electronic case reporting.
Each member of the family of actions (Triggering, Rule Processing, Clinical Feedback, Creation of eICR, Routing and Sending) aligns with what are often different healthcare information systems or modules involved in reporting.
The narrative elements of this profile will be used to help structure and guide implementation until EHRs have the ability to automatically consume them. 

“Triggering” value sets and metadata can be used for EHR implementations whether they are FHIR-based or not.
Through the “Rules Processing” action, this implementation guide seeks to help advance EHR-based, or EHR API-connected, rules engine capabilities that can run under clinical data authorities as the industry can support them.
While there may be circumstances, in conjunction with appropriate guidelines, where clinical personal are "alerted" to a particular reportable condition, for the most part the “Clinical Feedback” action involves attaching information to a patient's chart or queuing information for providers and reporters.
The “Creation of the eICR” action involves the marshaling of FHIR resources needed to create the eICR profile included in this standard.
And the “Sending of the eICR” action involves the transmission of the eICR to either the APHL AIMS Platform, a Public Health Agency (PHA), or a Health information Exchange or Health Data Network on their way to PHAs.

The FHIR subscription service supports public health needs for the routine and emergent distribution of the Knowledge Distribution Profile.
The Subscription does not require FHIR implementation on the receiving (EHR) end of the transaction, but can provide XML or JSON formats via RESTful query or proactive notification channels. 

<ul>
  <li><a href="StructureDefinition-ecr-knowledge-distribution.html">eCR Knowledge Distribution Profile</a></li>
</ul>

