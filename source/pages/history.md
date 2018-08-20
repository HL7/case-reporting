---
title: Version History
layout: default
active: history
---

The Electronic Case Reporting (eCR) Implementation Guide supports Reporting, investigation, and management via electronic transmission of clinical data from Electronic Health Records to Public Health Agencies, along with the management and processing of population cases. Ths IG covers Bi-directional information exchange and triggering and decision support.

This table provides a list of all the versions of FHIR versions of the {{site.data.fhir.igName}} Implementation Guide that are available. See [FHIR Releases and Versioning](http://build.fhir.org/versions.html#versions) for a description of how the versioning of this Implementation Guide is managed.  As well, this guide follow the general definitions and guidelines outlined in [Rules for Inter-version change](http://build.fhir.org/versions.html#change):

|Date|Version|Description|Changes from prevsious version|
|---|---|---|---|
|**Current Versions**|
|n/a|n/a|No published version yet||
|[current](http://build.fhir.org/ig/HL7/case-reporting/index.html)|(last commit)|Current Development build (may be incoherent and change rapidly)||
|**STU 1 sequence**|
|[January 2018](http://hl7.org/fhir/uv/ecr/2018Jan/index.html)|0.1.0| Release 0.1.0 (STU1) first ballot (Draft for Comment)||
|[September 2018](http://hl7.org/fhir/us/ecr/2018Sep/index.html)|0.1.0| Release 0.1.0 (STU1) second ballot (STU R1)|- Added Knowledge Distribution Transaction<br>- Updated to more meaningful profile names<br>- Aligned to published CDA Reportability Response IG<br>- Updated all temporary codes to published codes<br>- Added Estimated Date of Delivery to Prengancy Status<br>- Added ability to mask identifying patient and guardian data<br>- Added Priority at both RR level and External Resource level<br>- Updated subject text in Communication.topic<br>- Summary, eICR Information and Relevant Reportable Condition information contained in Communication.payload<br>- Each Relevant Reportable Condition/PHA pair repeats in Relevant Reportable Condition PlanDefinition<br>- Relevant Reportable Condition contained in PlanDefinition.goal.addresses<br>- Removed all "todo" links<br>- Added Encounters Section to eICR Composition<br>- Removed DiagnosticReport from eICR Composition Results Section<br>- Added extension-trigger to Diagnosis contained in Encounter<br>- Updated all patterns to not specify display<br>- Updated all descriptions to align with published CDA IGs<br>- Added Narrative Guidance for guidance on creating RR clinical feedback text |

