[Previous Page - Design Considerations](design_considerations.html)

# Introduction
## Purpose
The following is informative guidance on generating the narrative text of a Reportability Response Communication (Reportability Response). Through the Reportability Response, public health seeks to support bidirectional communication with clinical care for reportable conditions. The Reportability Response is designed to have one Reportability Response created for each electronic Initial Case Report (eICR) and to be shared with the clinical care organization that created that eICR. The Reportability Response can also be shared with a Public Health Agency(ies) [PHA(s)] that has relevant reporting requirements (a Responsible Pubic Health Agency) that wants to use it to monitor the reporting process and know what has been conveyed to clinical care organizations and other Public Health Agencies. Sharing the Reportability Response with clinical care will serve several functions, including to:

- Communicate the reportability status, for the responsible PHA(s), of each condition included in the eICR
-	Identify who (a PHA or an intermediary) prepared the Reportability Response
-	Indicate whether the eICR has been sent to one or more PHA(s) Identify which PHA(s) has/have been sent the eICR
-	Provide contact information for the responsible PHA(s)
-	Provide suggested or required clinical follow-up activities from the responsible PHA(s), including any additional reporting needs or infection control activities
-	Provide access to clinical support resources suggested by the responsible PHA(s) for identified reportable conditions
-	Confirm eICR receipt and processing

A Reportability Response will also, when requested, be shared with the responsible PHAs (when they have not constructed it) for their internal use, so they understand what has been shared with clinical care, and to monitor/audit decision support algorithm effectiveness and implementation. When a condition is considered reportable to more than one PHA, the Reportability Response can be helpful in communicating reporting that has been done to other PHAs as well.

### Determination of Reportability
Reportability indicates the quality or state of a possible case/event being reportable to one or more PHA. It does not, in itself, represent the clinical diagnosis of a possible condition nor the conclusion that a possible case/event fully meets a public health case definition. Reportability is based on information at a given point of time and, resultantly, reportability status can change when additional or different information becomes available. Decision support systems that provide a determination of reportability of a possible condition produce results that may fall into a number of types. One or more of these reportability determinations may be present in the Reportability Response based on the possible condition(s) in the eICR being assessed.

The values that can currently be used for the **Determination of Reportability** are described below.

A possible condition is:

- **Reportable** - The information provided meets reporting criteria for an associated PHA.

A possible condition:

-	**May be Reportable** - The information provided may meet reporting criteria if additional information is provided. The Reportability Response will also be able to share the information needed to definitively determine reportability.

A possible condition is:

-	**Not Reportable** - The information provided conclusively does not meet reporting criteria.

Some decision support systems may not be able to fully differentiate between possible conditions that are **Not Reportable** and those that **May be Reportable** if additional information is provided. In these circumstances there may only be a reportabilty determination of:

-	**No Reporting Rule Met** - The information provided does not meet reporting criteria or may meet reporting criteria if additional information is provided.

The determination of **No Reporting Rule Met** may be provided for a possible condition or for all conditions in the eICR.

## Audience
The audience for this document is developers and managers of Public Health Decision Support (PHDS) systems such as the Reportable Condition Knowledge Management System (RCKMS) and public health surveillance systems that receive and process eICRs and then generate and share Reportability Responses.

# Narrative Construction Guidance

The following sections provide example templates and text for use in the generation of the Reportability Response narrative located in Reportability Response [Communication.text](StructureDefinition-rr-communication-definitions.html#Communication.text). Most of the specifics of Reportabilty Response data and structure are found in the normative profiles of this implementation guide.

Normative guidance in the profiles includes data specification, order, and some aspects of structure and visualization.

The following sections include further details on how narrative text can be constructed to meet the goals of communicating with largely clinical audiences. There are example templates for the possible combinations of reportability determinations that need to be accommodated in the Reportablity Response and example visualizations.

Variables that represent coded data found elsewhere in the Reportabilty Response will be enclosed with angle brackets with a link to the relevant element, like this: &lt;[variable](reportability_response_narrative_guidance.html#narrative-construction-guidance)&gt;

## eICR Processed wtih No Warnings or Errors

### [Reportability Response Subject](StructureDefinition-rr-communication-definitions.html#Communication.topic)
(for circumstances where **any** determination of reportability code is **reportable or maybe reportable** - it is recommended to communicate the Reportability Response to Provider/Reporter)


> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.


(for circumstances where **all** determination of reportability codes **are not reportable and/or no rule met** - it is recommended to not communicate the Reportability Response to Provider / Reporter, but to store to document completion)


> Public Health Reporting Communication: Submitted report had no identifiable reporting needs.

(for any circumstance where the eICR was **manually initiated**)

> Public Health Reporting Communication: Manually initiated report was submitted to public heath


### [Reportability Response Summary](StructureDefinition-rr-communication-definitions.html#Communication.payload:sliceReportabilityResponseSummary)

**(Always present)**

> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.


**(if eICR was manually initiated)**

> The initial report was manually initiated by a provider. It was sent to: "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;", "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".


> *(include and repeat for each* [Relevant Reportable Condition PlanDefinition](StructureDefinition-rr-relevant-reportable-condition-plandefinition.html) contained in the RR Communication). Each determiniation should be its own paragraph in the narrative.

**(Reportable)**

> If at least 1 condition is reportable, whether it is the condition that initially triggered or not, the following summary test should be inserted:
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.
>
>If the intial triggered condition is not reportable, and there is at least 1 other reportable condition, the following summary text should be inserted:
>
> **(For the reportable):**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.
>
> **(For the not reportable triggered condition):**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable for a triggered condition to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
> 
> *If multiple Routing Entities are preesent change text to include each separated by:* "and to":
>
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;" and to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

**(May be reportable)**

> If a least 1 condition may be reportable, whether it is the condition that initially triggered or not, the following summary text should be inserted:
>
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".
>
> If the initial triggered condition is not reportable, and there is at least 1 other may be reportable condition, the following summary text should be inserted:
>
> **For the may be reportable:**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".
> 
> **For the triggered condition:**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable for a triggered condition to to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria. 
>
> *If multiple Routing Entities are preesent change text to include each separated by:* "and to":
>
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;" and to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".

**(Not reportable)**

>If the intial triggered condition is not reportable, and there is no other condition determined to be reportable or may be reportable, the following summary text should be inserted:
>
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public
> Health Agency or the information provided at the time of this report does not meet reporting criteria. No determination of reportability could be made for any other conditions in the submitted initial case report.

**(No rule met)**

>If the initial triggered condition is no rule met, and there is no other condition determined to be reportable or may be reportable, the following summary text should be inserted:
>
> **For the triggered condition:**
>
> No determination of reportability could not be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available. No determination of reportability could be made for any other conditions in the submitted initial case report.
> 
> If the initial triggered condition is no rule met, and there is at least 1 other reportable condition, the following summary text should be inserted:
>
> **For the reportable:**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.
> 
> **For the triggered condition:**
> 
> No determination of reportability could be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available. No determination of reportability could be made for any other conditions in the submitted initial case report.
> 
> If the initial triggered condition is no rule met, and there is at least 1 other may be reportable condition, the following summary text should be inserted:
> 
> **For the may be reportable:**
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".
> 
> **For the triggered condition:**
> 
> No determination of reportability could be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available. No determination of reportability could be made for any other conditions in the submitted initial case report.
> 
*Note*: While the identification of a Responsible Agency is an important part of information that the Reportability Response will provide to clinical care, some decision support systems may not be able to initially identify one. In that circumstance, sentences that identify "for" or "to" &lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt; should be ended with a period before that text. (e.g., A determination of reportability for a triggered condition could not be made.)

(Above each list of external resources, include and repeat for each eICR &lt;[determination of reportability code](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportability)&gt;).

> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;"
> Reporting is required within "&lt;[reporting timeframe](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.timing[x])&gt;". Reporting to this Public Health Agency is based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;".

(repeat for each external resource template, based on External Resource Category order)

> &lt;[External resource description](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.display)&gt; (&lt;[External resource link](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.url)&gt; - &lt;[External resource priority](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.extension:externalResourcePriority)&gt;)


### Common Combinations for Response in the Reportability Response 

#### A Single Condition is Reportable to a Single PHA

**Subject:**

Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.

**Summary:**

Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.

"&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

**"&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;"**.

Reporting is required within "&lt;[reporting timeframe](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.timing[x])&gt;". Reporting to this Public Health Agency is based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;".

*Example text:*

> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
>
> "Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State Department of Health"**
>
> Reporting is required within 24 hours. Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
>
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
>
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **Additional resources**
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)

#### A Single Condition is *Not* Reportable to a Single PHA

**Subject:**

Public Health Reporting Communication: Submitted report had no identifiable reporting needs.

**Summary:**

Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.

"&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization.html#Organization.name)&gt;". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.

*Example text:*

> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
>
> "Zika virus" was determined not to be reportable to "State Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.

### Other Combinations for Response in the Reportability Response

Similar to these examples, some additional responses may include:

-	Single Condition is *Reportable* to Multiple PHAs
-	Single Condition is *Not Reportable* to Multiple PHAs
-	Multiple Conditions are *Reportable* to a Single PHA
-	Multiple Conditions are *Reportable* to Multiple PHAs
-	Multiple Conditions are *Not Reportable* to a Single PHA
-	Multiple Conditions are *Not Reportable* to Multiple PHAs
-	Combination of Conditions *Reportable* and *Not Reportable* to a Single or Multiple PHA(s)
-   Single Condition is *Reportable* to a Single PHA but with Multiple Routing Entities

## eICR Processed with a Warning

This section describes narrative guidance to deal with eICRs that were successfully processed but had an issue related to content which caused the PHDS system (such as RCKMS) to be unable to make a determination of reportability.

In cases where the patient jurisdiction differs from the provider jurisdiction, a determination may be possible for one jurisdiction but not for the other due to an issue with content contained in the eICR or lack of rules within the PHDS.  If the address cannot be linked a jurisdiction the PHDS may return a response of “jurisdiction not found (JNF)”, which will result in a warning in the RR narrative.  If a jurisdiction exists within the PHDS but no reporting specifications have been published, the RR will return a warning of “reporting specifications not found (RSNF)”.

### Reportability Response Subject

*(for circumstances where any determination of reportability code is **reportable, may be reportable, or no rule met **– it is recommended to communicate the Reportability Response to Provider /Reporter)*

> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health. 

*(for circumstances where determination of reportability **could not be made due to failure to process jurisdictional information** (Reporting Specifications Not Found [RSNF] or Jurisdiction Not Found [JNF]) without having a condition included that was found reportable, may be reportable, or no rule met – it is recommended to communicate the Reportability Response to Provider /Reporter)*
> Public Health Reporting Communication: Reportability for submitted report could not be determined.
### Reportability Response eICR Information

*(Always present)*

> eICR Information:
> An initial report for a possible reportable condition was received on "&lt;[eICR Receipt Time](StructureDefinition-rr-communication-definitions.html#Communication.payload:sliceEICRInformation.extension:extensionEICRReceiptTime)&gt;" with the file name "&lt;[eICR Document ID](StructureDefinition-eicr-document-bundle-definitions.html#Bundle.id)&gt;". The eICR was processed with a warning of: "&lt;[eICR Processing Status Reason](StructureDefinition-rr-eicr-processing-status-reason-observation-definitions.html#Observation)&gt;".

### Reportability Response Summary

**(Always present)**
>Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
>
>*(include and repeat for each eICR* &lt;[determination of reportability code](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportability)&gt; *for any jurisdiction rules that were successfully processed.* Each determination should be it’s own paragraph in the narrative.)

**(Reportable)**
> If at least 1 condition is reportable, whether it is the condition that initially triggered or not, the following summary text should be inserted:
>
>"&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

> If the initial triggered condition is not reportable, and there is at least 1 other reportable condition, the following summary text should be inserted:
> 
> *For the reportable:*
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

> *For the not reportable triggered condition:*
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable for a triggered condition to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
 
> *if multiple Routing Entities are present change text to include each separated by* “and to”:

> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;" and to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

**(May be reportable)**

> If at least 1 condition may be reportable, whether it is the condition that initially triggered or not, the following summary text should be inserted.

> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The Initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;".

> If the initial triggered condition is not reportable, and there is at least 1 other may be reportable condition, the following summary text should be inserted:
> 
> *For the may be reportable:*
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". 

> *For the triggered condition:*
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable for a triggered condition to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
> 
> *if multiple Routing Entities are present change text to include each separated by* “and to”:

> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;" and to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". 


**(Not reportable)**

If the initial triggered condition is not reportable, and there is no other condition determined to be reportable or may be reportable, the following summary text should be inserted:

> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" was determined not to be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria. No determination of reportability could be made for any other conditions in the submitted initial case report.

**(No rule met)**

If the initial triggered condition is no rule met, and there is no other condition determined to be reportable or may be reportable, the following summary text should be inserted:
For the triggered condition:

> No determination of reportability could be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;".   This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available. No determination of reportability could be made for any other conditions in the submitted initial case report.

If the initial triggered condition is no rule met, and there is at least 1 other reportable condition, the following summary text should be inserted:

> For the reportable:
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" is reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". Additional information may be required for this report.

> For the triggered condition:
> 
> No determination of reportability could be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;".   This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available.

If the initial triggered condition is no rule met, and there is at least 1 other may be reportable condition, the following summary text should be inserted:

> *For the may be reportable:*
> 
> "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" may be reportable to "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;". The reportability status could not be completely determined because: "&lt;[determination of reportability reason](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportabilityReason)&gt;". The initial case report was sent to "&lt;[routing entity name](StructureDefinition-rr-routing-entity-organization.html#Organization.name)&gt;". 

> For the triggered condition:
> 
> No determination of reportability could be made for "&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;" based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;".   This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available.

Note: While the identification of a Responsible Agency is an important part of information that the Reportability Response will provide to clinical care, some decision support systems may not be able to initially identify one.  In that circumstance, sentences that identify "for" or "to" "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;" should be ended with a period before that text. (e.g., A determination of reportability for a triggered condition could not be made.)

After displaying determination of reportability information above, then include relevant information about the jurisdictional error which explains why the eICR could not fully be processed.

**(Reporting Specification Not Found)**

> Reportability could not be determined for “&lt;jurisdiction displayName&gt;” due to a processing error. Reporting to “&lt;jurisdiction displayName&gt;” may still be required. 

**(Jurisdiction Not Found for Patient Address)**


> The patient address in this eICR could not be processed. Additional reporting may be necessary.


**(Jurisdiction Not Found for Facility Address)**

> The facility address in this eICR could not be processed. Additional reporting may be necessary.

(*Above each list of external resources, include and repeat for each eICR* &lt;[determination of reportability code](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.extension:determinationOfReportability)&gt;)

"&lt;[Relevant reportable condition name](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.goal.addresses)&gt;" for "&lt;[responsible agency name](StructureDefinition-rr-responsible-agency-organization-definitions.html#Organization.name)&gt;"
> Reporting is required within "&lt;[reporting timeframe](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.timing[x])&gt;". Reporting to this Public Health Agency is based on "&lt;[location relevance](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.jurisdiction.extension:locationRelevance)&gt;". 

*(repeat for each external resource template, based on External Resource Category order)*

> &lt;[External resource description](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.display)&gt; (&lt;[External resource link](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.url)&gt; - &lt;[External resource priority](StructureDefinition-rr-relevant-reportable-condition-plandefinition-definitions.html#PlanDefinition.action.documentation.extension:externalResourcePriority)&gt;)


## eICR Not Processed

In the case where an eICR Composition was not processed (**eICR Processing Status**=eICR was not processed - error), the normative constraints in the Reportability Response Communication profile state that there must be narrative text populated from [Communication\[rr-communication\].payload\[sliceEICRInformation\]](StructureDefinition-rr-communication-definitions.html#Communication.payload:sliceEICRInformation) that contains the reason the file was not processed. Given the potential reasons (see codes from the [eICR Processing Status (eCR) Value Set (PHIN VADS)](http://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.113883.10.20.15.2.5.8) value set) for an eICR Composition not to be processed, the following example may be used in the the corresponding Reportability Response [Communication.text](StructureDefinition-rr-communication-definitions.html#Communication.text):

> An initial report for a possible reportable condition was received on "&lt;[date and time of eICR receipt](StructureDefinition-rr-communication-definitions.html#Communication.payload:sliceEICRInformation.extension:extensionEICRReceiptTime)&gt;" with the file name "&lt;[filename of eICR](StructureDefinition-rr-communication-definitions.html#Communication.payload:sliceEICRInformation.contentReference)&gt;" but it was not processed. "&lt;[eICR Processing Status Reason](StructureDefinition-rr-eicr-processing-status-reason-observation-definitions.html#Observation)&gt;"

If additional information about the specific error is available (e.g., file validator output, server logs), it can be found in [eICR Validation output](StructureDefinition-rr-eicr-processing-status-extension-definitions.html#Extension.extension:eICRValidationOutput.value[x]).

## Reportability Response Examples

The examples below provide example text for *Providers / Reporters* for these types of determination of reportability:

1. One Reportable Condition to One PHA (with minimum external resources by PHA)
2. One Reportable Condition to One PHA (fully populated with external resources by PHA)
3. One Reportable Condition to One PHA (with no responsible agency identified)
4. One Not Reportable Condition for One PHA
5. One May be reportable Condition to One PHA
6. One No reporting rule met for One PHA
7. Two Reportable Conditions for Two PHAs
8. One Reportable and One Not reportable for Two PHAs
9. Manually initiated eICR with no reporting criteria matched for One PHA
10. Manually initiated eICR with One Reportable Condition for One PHA
11. One Reportable Condition with Multiple Routing Entities
12.	Fatal Error – eICR Not Processed
13.	Decision Support Timeout – eICR Not Processed
14.	One Juridiction Not Found (warning)
15.	One Reporting Specifications Not Found (warning)
16.	One No Rule Met and One Jurisdiction Not Found
17.	One No Rule Met and One Reporting Specification Not Found
18.	One Jurisdiction Not Found and One Reporting Specifications Not Found
19.	One May be reportable Condition and One Jurisdiction Not Found
20.	One May be reportable Condition and One Reporting Specifications Not Found
21.	One Reportable Condition and One Jurisdiction Not Found for Patient Address
22.	One Reportable Condition and One Jurisdiction Not Found for Provider/Facility Address
23.	One Reportable Condition and One Reporting Specifications Not Found


----------


*Example 1* - Example Reportability Response text for One Reportable Condition to One PHA (with minimum external resources by PHA)

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State Department of Health"**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)


----------

*Example 2* - Example Reportability Response text for One Reportable Condition to One PHA (fully populated with external resources by PHA)

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State Department of Health"**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
>
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
>
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **Additional resources**
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)


----------

*Example 3* - Example Reportability Response text for One Reportable Condition to One PHA (with no responsible agency identified)

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" is reportable. An initial case report was sent to "State Department of Health". Additional information may be required for this report.


----------

*Example 4* - Example Reportability Response text for One Not Reportable Condition to One PHA

> **Subject:**
>
> Public Health Reporting Communication: submitted report had no identifiable reporting needs.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" was determined not reportable to "State Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)


----------

*Example 5* - Example Reportability Response text for One May be Reportable Condition to One PHA

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" may be reportable to "State Department of Health". The reportability status could not be completely determined because: "Patient pregnancy status is missing from eICR".
>
> **"Zika virus" for "State Department of Health"**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
>
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **Additional resources**
>
> Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)


----------

*Example 6* - Example Reportability Response text with No Reporting Rule Met for One PHA

> **Subject:**
>
> Public Health Reporting Communication: submitted report had no identifiable reporting needs.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> A determination of reportability for a triggered condition could not be made for "State Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportability were available.


----------

*Example 7* - Example Reportability Response text for Two Reportable Condition to Two PHAs

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report.
> "Zika virus" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State A Department of Health".**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "patient home address".
>
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
>
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **Additional Resources**
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **"Chlamydia" for "State A Department of Health"**
>
> Reporting is required within "3 days". Reporting to this Public Health Agency is based on "patient home address".
>
> Additional information for the required reporting of Chlamydia must be submitted to State A Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> State A Chlamydia Disease Plan ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> Treatment guidelines ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> State A Disease Testing Information ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> If you have additional questions regarding reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **Additional Resources**
>
> STD Disease Statistics in State A ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **"Zika virus" for "State B Department of Health"**
>
> Reporting is required within "immediately by phone". Reporting to this Public Health Agency is based on "provider facility address".
>
> State B has declared a Public Health Emergency for Zika Virus. Additional information is available here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Additional information for the required reporting of Zika must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> State B recommends that symptomatic pregnant women with possible Zika exposure should be tested for Zika virus infection. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Zika Virus Diagnostic Specimen Collection, Packaging and Shipping Guidance for Laboratories and County Health Departments ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Zika Virus Testing Frequently Asked Questions ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> Providers may use this form to assess patients for possible Zika Virus ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **Additional Resources**
>
> State B Zika Virus Information Hotline: 1-800-999-9999 (For information)
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **"Chlamydia" for "State B Department of Health"**
>
> Reporting is required within "one business day". Reporting to this Public Health Agency is based on "provider facility address".
>
> Additional information for the required reporting of Chlamydia must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Chlamydia treatment brochure ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> The State B Department of Health is here to serve you. Contact us with any questions you may have regarding reporting and treatment of Sexually Transmitted Diseases, by phone 888-123-1234, or email STD.Feedback@StateBhealth.gov. (For information)
>
> **Additional Resources**
>
> Fact sheet for patients with Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> State B Administrative Code ABC-123 is the mandate that empowers the Department of Health to record communicable diseases and dictates when and how diseases are to be reported to the Department by both practitioners and laboratories. ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> CDC webpage for Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)


----------

*Example 8* - Example Reportability Response text for One Reportable and One Not reportable for Two PHAs

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> "Zika virus" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report. "Chlamydia" was determined not reportable to "State A Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
>  "Zika virus" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State A Department of Health".**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "patient home address".
>
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
>
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **Additional Resources**
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)
>
> **"Zika virus" for "State B Department of Health"**
>
> Reporting is required within "immediately by phone". Reporting to this Public Health Agency is based on "provider facility address".
>
> State B has declared a Public Health Emergency for Zika Virus. Additional information is available here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Additional information for the required reporting of Zika must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> State B recommends that symptomatic pregnant women with possible Zika exposure should be tested for Zika virus infection. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
>
> Zika Virus Diagnostic Specimen Collection, Packaging and Shipping Guidance for Laboratories and County Health Departments ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
>
> Zika Virus Testing Frequently Asked Questions ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> Providers may use this form to assess patients for possible Zika Virus ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **Additional Resources**
>
> State B Zika Virus Information Hotline: 1-800-999-9999 (For information)
>
> Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> **"Chlamydia" for "State B Department of Health"**
>
> Reporting is required within "one business day". Reporting to this Public Health Agency is based on "provider facility address".
>
> Additional information for the required reporting of Chlamydia must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
>
> Chlamydia treatment brochure ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> The State B Department of Health is here to serve you. Contact us with any questions you may have regarding reporting and treatment of Sexually Transmitted Diseases, by phone 888-123-1234, or email STD.Feedback@StateBhealth.gov. (For information)
>
> **Additional Resources**
>
> Fact sheet for patients with Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> State B Administrative Code ABC-123 is the mandate that empowers the Department of Health to record communicable diseases and dictates when and how diseases are to be reported to the Department by both practitioners and laboratories. ([Link](http://statedepartmentofhealth.gov/link) - For information)
>
> CDC webpage for Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)


----------

*Example 9* - Example Reportability Response text for a Manually initiated eICR with no reporting criteria matched for One PHA

> **Subject:**
>
> Public Health Reporting Communication: Manually initiated report was submitted to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> The initial report was manually initiated by a provider. It was sent to "State Department of Health".


----------

*Example 10* - Example Reportability Response text for a Manually initiated eICR with One Reportable Condition for One PHA

> **Subject:**
>
> Public Health Reporting Communication: Manually initiated report was submitted to public health.
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> The initial report was manually initiated by a provider. It was sent to "State Department of Health".
> "Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.
>
> **"Zika virus" for "State Department of Health"**
>
> Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
>
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)


----------

*Example 11* - Example Reportability Response text for One Reportable with Multiple Routing Entities

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health
>
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
>
> "Disease caused by severe acute respiratory syndrome coronavius 2 (disorder)" is reportable to "Los Angeles County Department of Public Health". The initial case report was sent to "California Deparment of Public Health" and to "Los Angeles County Department of Public Health". Additional information may be required for this report.
>
> **"Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder" for "Los Angeles County Department of Public Health"**
>
> Reporting is required within "immediately". Reporting to this Public Health Agency is based on "both patient home address and provider facility address".
>
> CDC webpage COVID-19 webpage ([Information only](http://cdc.gov/link))
> 
> Los Angeles County Department of Public Helath Office of the Chief Medical Informatics Officer IRIS System 241 North Figueroa Street Los Angeles, CA 90012 231-288-7696 ([Information only](http://la.gov/link))


----------

*Example 12* - Example Reportability Response text with Error for "EHR System Administrators"

> **eICR Information:**
>
> An initial report for a possible reportable condition was received on December 12, 2017 at 8:00pm with a file name "Eicr_Filename.xml" but it was not able to be processed.
>
> eICR was not processed due to an error of: fatal problem with the eICR that was received.


----------

*Example 13* - Example Reportability Response text with Decision Support Timeout Error for "EHR System Administrators"

> **Subject:**
>
> Public Health Reporting Communication: Submitted report could not be processed due to an error.
> 
> **eICR Information:**
>
> An initial report for a possible reportable condition was received on 10/28/2020 20:28:24 UTC with the file name "43cs7bdf-c2c9-444b-a5cf-fdd46e9c5549" but it was not processed.
>
> eICR was not processed due to an error of: an ongoing server problem.


----------

*Example 14* - Example Reportability Response text with Warning of Jurisdiction Not Found for any address in the eICR

> **Subject:**
>
> Public Health Reporting Communication: Reportability for submitted report could not be determined.
> 
> **eICR Information:**
>
> An initial report for a possible reportable condition was received on 10/19/2020 12:54:03 UTC with the file name "e6394f95-9dfc-4cb7-8592-8bfafd067286". The eICR was process with a warning of: format or content issues.
>
> eICR was not processed due to an error of: an ongoing server problem.
> 
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> 
> The patient address in this eICR could not be processed. Additional reporting may be necessary. The facilty address in the eICR could not be processed. Additional reporting may be necessary.
 

----------

*Example 15* - Example Reportability Response text with Warning of Reporting Specification Not Found for any PHA in the eICR

> **Subject:**
>
> Public Health Reporting Communication: Reportability for submitted report could not be determined.
> 
> **eICR Information:**
>
> An initial report for a possible reportable condition was received on 10/13/2020 14:42:57 UTC with the file name "e6394f95-9dfc-4cb7-8592-ebfafd067286". The eICR was process with a warning of: format or content issues.
>
> 
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> 
> Reportability could not be determined for "Saint Croix (Test)" due to a processing error. Reporting to "Saint Croix (Test)" may still be required.
 

----------

*Example 16* - Example Reportability Response text with One Warning of Jurisdiction Not Found and One No Rule Met for 2 PHAs

> **Subject:**
>
> Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
> 
> **eICR Information:**
>
> An initial report for a possible reportable condition was received on 10/13/2020 17:59:20 UTC with the file name "58fecd25-973e-4397-af68-1b76583758955". The eICR was process with a warning of: format or content issues.
>
> 
> **Summary:**
>
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
> 
> A determination of reportability for a triffered condition could not be made for "Virgin Islands Department of Health (Test)". This may be becuase it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportability were available.
> 
> The facility address in this eICR could not be processed. Additional reporting may be necessary.

[Next Page - eRSD Narrative Guidance](ersd_narrative_guidance.html)