---
title: Profiles defined as part of this Guide
layout: default
active: profiles
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

---
<br />

### Profiles

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-ecr-knowledge-distribution-plandefinition.html">Ecr_Knowledge_Distribution_PlanDefinition</a></td>
<td>Defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-organization.html">Ecr_Organization</a></td>
<td>The Electronic Case Reporting Organization profile is based on the **US Core-Organization** profile and establishes the core elements, extensions, vocabularies and value sets for representing the following organizations for electronic case reporting:

- Initial Case Report source provider facility/office name
- Initial Case Report source facility
- Reportability Response recipients
- Reportability Response responsible agency  
- Reportability Response routing entity
- Reportability Response rules authoring agency</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-patient.html">Ecr_Patient</a></td>
<td>This profile represents an eCR Patient. It is based on the US Core Patient and further restricts that profile to allow masking of some elements.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-practitionerrole.html">Ecr_PractitionerRole</a></td>
<td></td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-composition.html">Eicr_Composition</a></td>
<td>The Electronic Case Reporting Composition profile establishes the core elements, extensions, vocabularies and value sets for representing an electronic initial case report (eICR). It describes the content requirements for the initial Case Report including:         

- Patient demographics         
- Patient pregnancy status         
- Patient occupation and travel history         
- Provider and Facility information         
- Laboratory orders tests and results         
- Signs and Symptoms and Diagnosis         
- Medication and Immunization History         
- Flags for the existence of reportable condition trigger codes in diagnoses and ordered/resulted laboratory tests.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-condition.html">Eicr_Condition</a></td>
<td>The Electronic Case Reporting Condition profile is based on the **US Core-Condition** profile and establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

   -  Initial Case Report signs, symptoms and diagnoses related to an event.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-encounter.html">Eicr_Encounter</a></td>
<td>The Electronic Case Reporting Encounter profile is based on the Encounter resource and establishes the core elements, extensions, vocabularies and value sets for representing the following encounters for electronic case reporting:

- Initial Case Report encounter related to the reported event.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-location.html">Eicr_Location</a></td>
<td>The location/facility in which care was provided when the case was triggered.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-occupation-history-observation.html">Eicr_Occupation_History_Observation</a></td>
<td>The Electronic Case Reporting Occupational History profile establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

-  The Initial Case Report subject's occupational history.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-servicerequest.html">Eicr_ServiceRequest</a></td>
<td>The Electronic Case Reporting ServiceRequest profile establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

- Initial Case Report laboratory orders and other diagnostics for the reported event.</td>
</tr>
<tr>
<td><a href="StructureDefinition-knowledge-distribution-valueset-library.html">Knowledge_Distribution_Valueset_Library</a></td>
<td>Defines the library containing the Reportable Condition Trigger Code value sets. These are used in Public Health as trigger codes to kick off creation of electronic initial case reports and reportability responses. </td>
</tr>
<tr>
<td><a href="StructureDefinition-pregnancy-status-observation.html">Pregnancy_Status_Observation</a></td>
<td>The Electronic Case Reporting Pregnancy profile establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

- Current or prior pregnancy status enabling investigators to determine if the subject of the case report was pregnant during the course of a condition.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-communication.html">RR_Communication</a></td>
<td>This Reportability Response Communication will be created in response to an electronic Initial Case Report Composition and the sharing of the Reportability Response with clinical care will serve several functions, including to: 

- Communicate the reportability status, for the responsible PHA(s)of each condition included in the electronic Initial Case Report (eICR)     
- Identify who (a PHA or an intermediary) prepared the Reportability Response     
- Indicate whether the eICR has been sent to one or more PHA(s)     
- Identify which PHA(s) has/have been sent the eICR     
- Provide contact information for the responsible PHA(s)     
- Provide suggested or required clinical follow-up activities from the responsible PHA(s), including any additional reporting needs or infection control activities     
- Provide access to clinical support resources suggested by the responsible PHA(s) for identified reportable conditions     
- Confirm eICR receipt and processing     

A Reportability Response will also, when requested, be shared with the responsible PHAs (when they have not constructed it) for their internal use, so they understand what has been shared with clinical care and, and to monitor/audit decision support algorithm effectivesness and implementation. When a condition is considered reportable to more than one PHA, the Reportability Response can be helpful in communicating reporting that has been done to other PHAs.     

The Reportability Response Communication is also structured to allow:     

- Notification, alerting, routing and queueing in work or message management systems for healthcare personnel     
- Dynamic and static URIs for supplemental data collection and the provision of information resources</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-processing-status-observation.html">RR_Eicr_Processing_Status_Observation</a></td>
<td>Indicates the eICR processing status. If it was not processed or was processed with a warning, the reason and details will be contained in the related eICR Processing Status Reason resource.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-processing-status-reason-observation.html">RR_Eicr_Processing_Status_Reason_Observation</a></td>
<td>If the incoming eICR was not successfully processed for a determination of reportability, contains the reason it was not processed.  If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and component observations will hold the details of the outdated and expected versions of the RCTC.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-relevant-reportable-condition-plandefinition.html">RR_Relevant_Reportable_Condition_Plandefinition</a></td>
<td>The Relevant Reportable Condition Information PlanDefinition establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

-  The Reportability Response case definitions and reporting requirements which include:

   -  The data that are needed to determine reportability
   -  For a given condition , the mandated timeframe in which the condition should be reported to the PHA.
   
-  The name of the Responsible Agency(ies) in which the condition was determined to be or not be reportable
-  The External Resources (text and links)in association with specific conditions</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-responsible-agency-organization.html">RR_Responsible_Agency_Organization</a></td>
<td>The Responsible Agency profile is based on the US Core Organization and sets the type to 'Responsible Agency'. A Responsible Agency is a PHA to which reporting is legally required. This represents the PHA for the location in which care was provided and/or where the patient lives.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-routing-entity-organization.html">RR_Routing_Entity_Organization</a></td>
<td>The Routing Entity profile is based on the US Core Organization and sets the type to 'Routing Entity'.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-rules-authoring-agency-organization.html">RR_Rules_Authoring_Agency_Organization</a></td>
<td>The Rules Authoring Agency profile is based on the US Core Organization and sets the type to 'Rules Authoring Agency'. The Rules Authoring Agency is whose rules are being executed in decision support to determine reportability. This may be a State or Local PHA. In the majority of cases the Rules Authoring Agency will be the same as the Responsible Agency. Usually, a Local Public Health Agency will inherit rules from its relevant State agency, but a Local agency can adopt, replace or supplement relevant state rules.</td>
</tr>
<tr>
<td><a href="StructureDefinition-travel-history-observation.html">Travel_History_Observation</a></td>
<td>The Electronic Case Reporting Travel History profile establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

-  The Initial Case Report subject's travel history as a string, an address or a coded location.
-  Observation.effectiveTime contains the date or period of time spent in the location.
-  It is possible to have multiple Observation.components, each containing a different location, but there is only a single effectiveTime. This allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016). However, most uses will involve a single component (location).
-  Free text describing the travel history details and location can be entered using the Observation.component.valueCodeableConcept.text element
-  Use component.codeableConcept to record a coded location
-  Use component.extension to record a specific address</td>
</tr>
</tbody>
</table>


### Extensions

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-extension-ecr-organization.html">Extension_Ecr_Organization</a></td>
<td>This extension represents an eCR Organization</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-eicr-manually-initiated-reason.html">Extension_Eicr_Manually_Initiated_Reason</a></td>
<td>The presence of this extension indicates this eICR was manually initiated and contains the reason for manual initiation of the eICR.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-eicr-trigger-code-flag.html">Extension_Eicr_Trigger_Code_Flag</a></td>
<td>A flag which, if it is present, indicates that the **target** reference represents a triggering event and caused the eCR to be generated. It also contains the identifier and version of the RCTC value from which the code was matched. It is used in the eICR profile in the following sections:
- Encounters Section- Problem Section
- Plan of Treatment Section- Results Section</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-determination-of-reportability.html">Extension_RR_Determination_of_Reportability</a></td>
<td>This extension represents the determination of reportability. Reportability is "the quality or state of being reportable or not". Reportability does not equate to the patient having a condition or meeting a case definition (definitively being “a case”).

For each condition included in the eICR and the relevant public health agency(s), this element indicates the determination of whether the condition is reportable to public health. 

The values that can be used for the Determination of Reportability are described below.

A possible condition is:

- Reportable - The information provided meets reporting criteria for an associated PHA.

A possible condition:

- May be Reportable - The information provided may meet reporting criteria if additional information is provided. The Reportability Response will also be able to share the information needed to definitively determine reportability.

A possible condition is:

- Not Reportable - The information provided conclusively does not meet reporting criteria.

Some decision support systems may not be able to fully differentiate between possible conditions that are Not Reportable and those that May be Reportable if additional information is provided. In these circumstances there may only be a reportability determination of:

- No Reporting Rule Met - The information provided does not meet reporting criteria or may meet reporting criteria if additional information is provided.

The determination of No Reporting Rule Met may be provided for a possible condition or for all conditions in the  eICR.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-determination-of-reportability-reason.html">Extension_RR_Determination_of_Reportability_Reason</a></td>
<td>The reason for the determination of reportability.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-determination-of-reportability-rule.html">Extension_RR_Determination_of_Reportability_Rule</a></td>
<td>A rule that led to the determination of reportability.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-eicr-processing-status.html">Extension_RR_Eicr_Processing_Status</a></td>
<td>This extension indicates the eICR processing status. If the eICR was not processed or was processed with a warning, the reason will be contained in the eICR Processing Status Reason. If there is any output from a validator, that output will be contained in the eICR Validation Output.

If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and and the eICR Processing Status Reason Detail will hold the details of the outdated and expected versions of the RCTC.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-eicr-receipt-time.html">Extension_RR_Eicr_Receipt_Time</a></td>
<td>Date and time of eICR receipt</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-external-resource-type.html">Extension_RR_External_Resource_Type</a></td>
<td>Type/category of one or more external resources.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-location-relevance.html">Extension_RR_Location_Relevance</a></td>
<td>A code indicating whether the responsible PHA is relevant because of the patient's home address, the provider facility address, or both.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-manually-initiated-eicr.html">Extension_RR_Manually_Initiated_Eicr</a></td>
<td>This extension indicates whether or not the eICR CDA document for which this Reportability Response is a response, was manually initiated by the provider. The eICR could also contain RCTC trigger codes.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-rr-priority.html">Extension_RR_Priority</a></td>
<td>Priority given to the whole communication or one or more external resources.</td>
</tr>
<tr>
<td><a href="StructureDefinition-extension-travel-history-address.html">Extension_Travel_History_Address</a></td>
<td>Where the patient traveled to as an address e.g.country, state, city, street address if applicable. At the least, address must contain the country.</td>
</tr>
</tbody>
</table>


