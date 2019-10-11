---
title: Reportability Response (RR) Transaction and Profiles
layout: default
active: Reportability Response (RR) Transaction and Profiles
---

[Previous Page](Electronic_Initial_Case_Report_(eICR)_Transaction_and_Profiles.html)

### Reportability Response (RR) Transaction and Profiles

The RR transaction represents a response from public health to healthcare associated with a received eICR.

It can include determination of reportability information, contact information for the involved public health agencies, and requests for case investigation supplemental data that may not have been recorded in the process of care, condition-specific information from public health, and an acknowledgment that report has been successfully conveyed. 

When public health reporting rules are distributable to healthcare some of this information will be conveyed in the electronic Reporting & Surveillance Distribution (eRSD) transaction so that it can be accessed by the healthcare rules engine.

The RR is conveyed as a push transaction from public health to healthcare.

There may be several different intermediaries involved in its transmission including Health Information Exchanges and Health Data Networks.

The RR may originate from the Association of Public Health Laboratories (APHL) AIMS platform when public health decision support (the Reportable Condition Knowledge Management System - RCKMS) is used there or directly from a Public Health Agency if they received the eICR directly from healthcare. 

In this implementation guide the reference transport transaction is a FHIR POST, but other transport mechanisms may be added or substituted as the data wend their way back to the source of the related eICR.

Once received by healthcare, the RR information is intended to support Providers and Reporters and be attached to patient charts or placed in work queues so as to notify personnel of reportable and possibly reportable conditions.

It also should be provided to EHR System Administrators to confirm reporting and convey error and warning messages.

The Communication resource was chosen rather than the Composition resource for the top level Reportability Response resource as the use case of the response back to the provider is more suited to Communication in that it is a record of communication that has occurred and simply a conveyance of information from the sender to a receiver. This differs from Composition which is a structure for grouping information for purposes of persistence and attestability.

The following profiles and extensions have been defined for the Reportability Response transactions. The Reportability Response Communication profile is the starting point and all the other profiles are referenced from this profile (see diagram below).

#### Profiles
<ul>
  <li><b>Starting point: </b><a href="StructureDefinition-rr-communication.html">Reportability Response Communication</a></li>
  <li><a href="StructureDefinition-rr-relevant-reportable-condition-plandefinition.html">Relevant Reportable Condition PlanDefinition</a></li>
  <li><a href="StructureDefinition-rr-rules-authoring-agency-organization.html">Rules Authoring Agency Organization</a></li>
  <li><a href="StructureDefinition-rr-responsible-agency-organization.html">Responsible Agency Organization</a></li>
  <li><a href="StructureDefinition-rr-routing-entity-organization.html">Routing Entity Organization</a></li>
  <li><a href="StructureDefinition-rr-eicr-processing-status-observation.html">eICR Processing Status Observation</a></li>
  <li><a href="StructureDefinition-rr-eicr-processing-status-reason-observation.html">eICR Processing Status Reason Observation</a></li>
  <li><a href="StructureDefinition-ecr-organization.html">eCR Organization</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eICR Encounter</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eCR PractitionerRole</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eCR Patient</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-ecr-organization-extension.html">eCR Organization Extension</a></li>
  <li><a href="StructureDefinition-rr-location-relevance-extension.html">Location Relevance Extension</a></li>
  <li><a href="StructureDefinition-rr-eicr-initiation-type-extension.html">eICR Initiation Type Extension</a></li>
  <li><a href="StructureDefinition-rr-eicr-processing-status-extension.html">eICR Processing Status Extension</a></li>
  <li><a href="StructureDefinition-rr-determination-of-reportability-extension.html">Extension Determination of Reportability</a></li>
  <li><a href="StructureDefinition-rr-determination-of-reportability-reason-extension.html">Extension Determination of Reportability Reason</a></li>
  <li><a href="StructureDefinition-rr-determination-of-reportability-rule-extension.html">Determination of Reportability Rule Extension</a></li>
  <li><a href="StructureDefinition-rr-external-resource-type-extension.html">External Resource Type Extension</a></li>
  <li><a href="StructureDefinition-rr-priority-extension.html">External Resource Priority Extension</a></li>
  <li><a href="StructureDefinition-rr-rules-authoring-agency-organization-extension.html">Rules Authoring Agency Organization Extension</a></li>
  <li><a href="StructureDefinition-rr-responsible-agency-organization-extension.html">Responsible Agency Organization Extension</a></li>
  <li><a href="StructureDefinition-rr-routing-entity-organization-extension.html">Routing Entity Organization Extension</a></li>
  <li><a href="StructureDefinition-rr-eicr-receipt-time-extension.html">eICR Receipt Time Extension</a></li>
</ul>

<table><tr><td><img src="FHIR RR Profile Hierarchy.png" /></td></tr></table>

[Next Page](Electronic_Reporting_and_Surveillance_Distribution_(eRSD)_Transaction_and_Profiles.html)