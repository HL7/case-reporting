---
title: Electronic Initial Case Report (eICR) Transaction and Profiles
layout: default
active: Electronic Initial Case Report (eICR) Transaction and Profiles
---

[Previous Page](toc.html)

### Electronic Initial Case Report (eICR) Transaction and Profiles

The eICR transaction involves the transmission of data identified by a Council of State and Territorial Epidemiologists Task Force as being important to a case report.
It also includes the trigger codes that matched to initiate the report, a step toward a structured travel history, and a vital sign snapshot.
The eICR is conveyed as an unsolicited push transaction from healthcare to public health.
There may be several different intermediaries involved in the transmission including Health Information Exchanges, Health Data Networks, and the Association of Public Health Laboratories (APHL) AIMS platform. 

In this implementation guide the reference transport transaction is a FHIR POST, but other transport mechanisms may be added or substituted as the data travel to the appropriate public health agencies.
In the FHIR eICR transaction to PHAs the RR payload may be added to provide the PHAs with information about what has been determined to be reportable, what PHAs have been sent eICR information, and what else has been communicated to healthcare.

The following profiles and extensions have been defined for the eICR transactions

#### Profiles
<ul>
  <li><a href="StructureDefinition-eicr-composition.html">eICR Composition</a></li>
  <li><a href="StructureDefinition-ecr-patient.html">eICR Patient</a></li>
  <li><a href="StructureDefinition-ecr-organization.html">eCR Organization</a></li>
  <li><a href="StructureDefinition-eicr-encounter.html">eICR Encounter</a></li>
  <li><a href="StructureDefinition-eicr-procedurerequest.html">eICR Lab Orders</a></li>
  <li><a href="StructureDefinition-eicr-location.html">eICR Location</a></li>
  <li><a href="StructureDefinition-pregnancy-status.html">Pregnancy Status</a></li>
  <li><a href="StructureDefinition-eicr-travel-history.html">eICR Travel History</a></li>
  <li><a href="StructureDefinition-eicr-occupationhistory.html">eICR Occupation History</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-extension-eicr-trigger-code-flag.html">eICR Trigger Code Flag</a></li>
  <li><a href="StructureDefinition-extension-eicr-manually-initiated-reason.html">eICR Manually Initiated Reason</a></li>
  <li><a href="StructureDefinition-extension-eicr-travel-history-address.html">Travel History Address</a></li>
</ul>





[Next Page](Reportability_Response_(RR)_Transaction_and_Profiles.html)