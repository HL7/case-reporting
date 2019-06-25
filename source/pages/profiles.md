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
<td><a href="StructureDefinition-ecr-message-bundle.html">Ecr_Message_Bundle</a></td>
<td>This Bundle profile represents an eICR Message Bundle. It contains the eCR MessageHeader and is for use in the eCR messaging paradigm.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-messageheader.html">Ecr_MessageHeader</a></td>
<td>This MessageHeader profile represents metadata to support the eCR messaging paradigm.  It requires data elements destination, sender, source, and focus. The focus of an eCR MessageHeader profile is the eCR Task profile.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-organization.html">Ecr_Organization</a></td>
<td>This Organization profile represents the following organizations for electronic case reporting:

* Initial Case Report source provider facility/office name
* Initial Case Report source facility
* Reportability Response recipients
* Reportability Response responsible agency  
* Reportability Response routing entity
* Reportability Response rules authoring agency

It is based on the **US Core Organization** profile with a further restriction of *Must Support* on the **type** and **contact** data elements.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-patient.html">Ecr_Patient</a></td>
<td>This Patient profile represents an eCR Patient. It is based on the **US Core Patient** profile with further restrictions to allow masking of some data elements.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-practitionerrole.html">Ecr_PractitionerRole</a></td>
<td>This PractitionerRole represents the roles and organizations a practitioner involved in eCR is associated with. It is based on the **US Core PractitionerRole** profile with a further restriction of a mandatory **identifier** data element.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ecr-task.html">Ecr_Task</a></td>
<td>This Task profile represents the state of completion of the eCR activity. It is used in both the messaging and RESTful paradigms. to support the eCR messaging paradigm.  The focus of an eCR MessageHeader profile is the either the eICR document Bundle or the RR Communication.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-composition.html">Eicr_Composition</a></td>
<td>This Composition profile represents an electronic initial case report (eICR). It describes the content requirements for the eICR including:         

* patient demographics         
* patient pregnancy status         
* patient occupation and travel history         
* provider and facility information         
* laboratory orders, tests, and results         
* signs, symptoms, and diagnoses
* medication and immunization information
* flags for the existence of reportable condition trigger codes in diagnoses, ordered/resulted laboratory tests, medications, and immunizations</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-condition.html">Eicr_Condition</a></td>
<td>This Condition profile represents the signs, symptoms, and diagnoses related to an eICR event. It is based on the **US Core Condition** profile with a further restriction of a *Must Support* constraint on the **onset\[x]** data element.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-document-bundle.html">Eicr_Document_Bundle</a></td>
<td>This Bundle profile represents an eICR Document Bundle. It contains the eICR Composition.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-encounter.html">Eicr_Encounter</a></td>
<td>This Encounter profile represents the encounter related to the eICR event.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-location.html">Eicr_Location</a></td>
<td>This Location profile represents the location/facility in which care was provided when the eICR was triggered.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-occupation-history-observation.html">Eicr_Occupation_History_Observation</a></td>
<td>This Observation profile represents the eICR subject's occupational history.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-servicerequest.html">Eicr_ServiceRequest</a></td>
<td>This ServiceRequest profile represents eICR laboratory orders and other diagnostics for the eICR event.</td>
</tr>
<tr>
<td><a href="StructureDefinition-ersd-plandefinition.html">Ersd_PlanDefinition</a></td>
<td>This PlanDefinition profile defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pregnancy-status-observation.html">Pregnancy_Status_Observation</a></td>
<td>This Observation profile represents the eICR patient's current or prior pregnancy status.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-communication.html">RR_Communication</a></td>
<td>This Communication profile represents the Reportability Response that will be created in response to an electronic Initial Case Report Composition. The sharing of the Reportability Response with clinical care will serve several functions, including to: 

* Communicate the reportability status, for the responsible PHA(s)of each condition included in the electronic Initial Case Report (eICR)     
* Identify who (a PHA or an intermediary) prepared the Reportability Response     
* Indicate whether the eICR has been sent to one or more PHA(s)     
* Identify which PHA(s) has/have been sent the eICR     
* Provide contact information for the responsible PHA(s)     
* Provide suggested or required clinical follow-up activities from the responsible PHA(s), including any additional reporting needs or infection control activities     
* Provide access to clinical support resources suggested by the responsible PHA(s) for identified reportable conditions     
* Confirm eICR receipt and processing     

A Reportability Response will also, when requested, be shared with the responsible PHAs (when they have not constructed it) for their internal use, so they understand what has been shared with clinical care and, and to monitor/audit decision support algorithm effectivesness and implementation. When a condition is considered reportable to more than one PHA, the Reportability Response can be helpful in communicating reporting that has been done to other PHAs.     

The Reportability Response Communication is also structured to allow:     

* Notification, alerting, routing and queueing in work or message management systems for healthcare personnel     
* Dynamic and static URIs for supplemental data collection and the provision of information resources</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-processing-status-observation.html">RR_Eicr_Processing_Status_Observation</a></td>
<td>This Observation profile represents the  eICR processing status. If it was not processed or was processed with a warning, the reason and details will be contained in the related eICR Processing Status Reason profile.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-processing-status-reason-observation.html">RR_Eicr_Processing_Status_Reason_Observation</a></td>
<td>This Observation profile represents, if the incoming eICR was not successfully processed for a determination of reportability, the reason it was not processed.  If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and component observations will hold the details of the outdated and expected versions of the RCTC.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-relevant-reportable-condition-plandefinition.html">RR_Relevant_Reportable_Condition_Plandefinition</a></td>
<td>This PlanDefinition profile represents the Reportability Response case definitions and reporting requirements which include:

* The data that are needed to determine reportability
* For a given condition , the mandated timeframe in which the condition should be reported to the PHA
* The name of the Responsible Agency(ies) in which the condition was determined to be or not be reportable
* The External Resources (text and links)in association with specific conditions</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-responsible-agency-organization.html">RR_Responsible_Agency_Organization</a></td>
<td>This Organization profile represents the Responsible Agency which is a PHA to which reporting is legally required. This can be the PHA relevant to the location in which care was provided and/or where the patient lives. It is based on the **US Core Organization** profile with a further restriction setting the **type** data element to 'Responsible Agency'.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-routing-entity-organization.html">RR_Routing_Entity_Organization</a></td>
<td>This Organization profile represents the Routing Entity which is a PHA or other organization identified by the PHA (such as an HIE) to which the eICR and/or the Reportability Response will be provided immediately following the creation of the Reportability Response. This entity may just be acting to route the eICR and Reportability Response on their way to a Responsible Agency.  It is based on the **US Core Organization** profile with a further restriction setting the **type** data element to 'Routing Entity'.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-rules-authoring-agency-organization.html">RR_Rules_Authoring_Agency_Organization</a></td>
<td>This Organization profile represents the Rules Authoring Agency which is the originator of the rules that are being executed in decision support to determine reportability. This may be a state or local PHA. In the majority of cases the Rules Authoring Agency will be the same as the Responsible Agency. Usually, a Local Public Health Agency will inherit rules from its relevant state agency, but a Local agency can adopt, replace or supplement relevant state rules. It is based on the **US Core Organization** profile with a further restriction setting the **type** data element to 'Rules Authoring Agency'.</td>
</tr>
<tr>
<td><a href="StructureDefinition-travel-history-observation.html">Travel_History_Observation</a></td>
<td>This Observation profile represents the following for eCR:

* the Initial Case Report subject's travel history as a string, an address, or a coded location
* Observation.effectiveTime contains the date or period of time spent in the location
* it is possible to have multiple Observation.components, each containing a different location, but there is only a single effectiveTime. This allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016). However, most uses will involve a single component (location)
* free text describing the travel history details and location can be entered using the Observation.component.valueCodeableConcept.text element
* use component.codeableConcept to record a coded location
* use component.extension to record a specific address</td>
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
<td><a href="StructureDefinition-eicr-manually-initiated-reason-extension.html">Eicr_Manually_Initiated_Reason_Extension</a></td>
<td>This Extension profile represents that this eICR was manually initiated and contains the reason for manual initiation of the eICR.</td>
</tr>
<tr>
<td><a href="StructureDefinition-eicr-trigger-code-flag-extension.html">Eicr_Trigger_Code_Flag_Extension</a></td>
<td>This Extension profile represents a flag which, if it is present, indicates that the **target** reference represents a triggering event and caused the eCR to be generated. It also contains the identifier and version of the RCTC value from which the code was matched. It is used in the eICR profile in the following sections:

* Encounters Section
* Problem Section
* Plan of Treatment Section
* Results Section</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-determination-of-reportability-extension.html">RR_Determination_of_Reportability_Extension</a></td>
<td>This Extension profile represents the determination of reportability. Reportability is "the quality or state of being reportable or not". Reportability does not equate to the patient having a condition or meeting a case definition (definitively being a case).

For each condition included in the eICR and the relevant public health agency(s), this element indicates the determination of whether the condition is reportable to public health. 

The values that can be used for the Determination of Reportability are described below.

A possible condition is:

* Reportable - The information provided meets reporting criteria for an associated PHA.

A possible condition:

* May be Reportable - The information provided may meet reporting criteria if additional information is provided. The Reportability Response will also be able to share the information needed to definitively determine reportability.

A possible condition is:

* Not Reportable - The information provided conclusively does not meet reporting criteria.

Some decision support systems may not be able to fully differentiate between possible conditions that are Not Reportable and those that May be Reportable if additional information is provided. In these circumstances there may only be a reportability determination of:

* No Reporting Rule Met - The information provided does not meet reporting criteria or may meet reporting criteria if additional information is provided.

The determination of No Reporting Rule Met may be provided for a possible condition or for all conditions in the  eICR.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-determination-of-reportability-reason-extension.html">RR_Determination_of_Reportability_Reason_Extension</a></td>
<td>This Extension profile represents the reason for the determination of reportability.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-determination-of-reportability-rule-extension.html">RR_Determination_of_Reportability_Rule_Extension</a></td>
<td>This Extension profile represents a rule that led to the determination of reportability.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-processing-status-extension.html">RR_Eicr_Processing_Status_Extension</a></td>
<td>This Extension profile represents the eICR processing status. If the eICR was not processed or was processed with a warning, the reason will be contained in the eICR Processing Status Reason. If there is any output from a validator, that output will be contained in the eICR Validation Output.

If any of the trigger codes used to generate the eICR are from an outdated version of the RCTC or the codes are marked as inactive in the latest version of the RCTC, these are flagged and and the eICR Processing Status Reason Detail will hold the details of the outdated and expected versions of the RCTC.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-eicr-receipt-time-extension.html">RR_Eicr_Receipt_Time_Extension</a></td>
<td>This Extension profile represents the date and time of eICR receipt</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-external-resource-type-extension.html">RR_External_Resource_Type_Extension</a></td>
<td>This Extension profile represents the type/category of one or more external resources.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-location-relevance-extension.html">RR_Location_Relevance_Extension</a></td>
<td>This Extension profile represents a code indicating whether the responsible PHA is relevant because of the patient's home address, the provider facility address, or both.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-manually-initiated-eicr-extension.html">RR_Manually_Initiated_Eicr_Extension</a></td>
<td>This Extension profile represents whether or not the eICR CDA document for which this Reportability Response is a response, was manually initiated by the provider. The eICR could also contain RCTC trigger codes.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rr-priority-extension.html">RR_Priority_Extension</a></td>
<td>This Extension profile represents the priority given to the whole communication or one or more external resources.</td>
</tr>
<tr>
<td><a href="StructureDefinition-travel-history-address-extension.html">Travel_History_Address_Extension</a></td>
<td>This Extension profile represents where the patient traveled to as an address e.g.: country, state, city, street address (if applicable). At the least, address must contain the country.</td>
</tr>
</tbody>
</table>


