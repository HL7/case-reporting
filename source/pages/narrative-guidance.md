---
title: Narrative Guidance
layout: default
---


<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

<!-- * Do not remove this line (it will not be displayed)#
{:toc} -->


<!-- end TOC -->

# 1 Introduction
## 1.1 Purpose
The following is informative guidance on generating the narrative text of a Reportability Response Communication (Reportability Response). Through the Reportability Response, public health seeks to support bidirectional communication with clinical care for reportable conditions.   The Reportability Response is designed to have one Reportability Response created for each electronic Initial Case Report (eICR) and to be shared with the clinical care organization that created that eICR. The Reportability Response can also be shared with a Public Health Agency(ies) [PHA(s)] that has relevant reporting requirements (a Responsible Pubic Health Agency) that wants to use it to monitor the reporting process and know what has been conveyed to clinical care organizations and other Public Health Agencies.
Sharing the Reportability Response with clinical care will serve several functions, including to:

- Communicate the reportability status, for the responsible PHA(s), of each condition included in the eICR
-	Identify who (a PHA or an intermediary) prepared the Reportability Response
-	Indicate whether the eICR has been sent to one or more PHA(s) Identify which PHA(s) has/have been sent the eICR 
-	Provide contact information for the responsible PHA(s)
-	Provide suggested or required clinical follow-up activities from the responsible PHA(s), including any additional reporting needs or infection control activities
-	Provide access to clinical support resources suggested by the responsible PHA(s) for identified reportable conditions
-	Confirm eICR receipt and processing
A Reportability Response will also, when requested, be shared with the responsible PHAs (when they have not constructed it) for their internal use, so they understand what has been shared with clinical care, and to monitor/audit decision support algorithm effectiveness and implementation. When a condition is considered reportable to more than one PHA, the Reportability Response can be helpful in communicating reporting that has been done to other PHAs as well.

### Determination of Reportability
Reportability indicates the quality or state of a possible case/event being reportable to one or more PHA. It does not, in itself, represent the clincial diagnosis of a possible condition nor the conclusion that a possible case/event fully meets a public health case defintion. Reportability is based on information at a given point of time and, resultantly, reportability status can change when additional or different information becomes available.
Decision support systems that provide a determination of reportability of a possible condition produce results that may fall into a number of types. One or more of these reportability determinations may be present in the Reportability Response based on the possible condition(s) in the eICR being assessed. 
The values that can currently be used for the **Determination of Reportability** are described below.
A possible condition is:

- **Reportable** - The information provided meets reporting criteria for an associated PHA.
A possible condition:

-	**May be Reportable** - The information provided may meet reporting criteria if additional information is provided. The Reportability Response will also be able to share the information needed to definitively determine reportability.
A possible condition is:
-	**Not Reportable** - The information provided conclusively does not meet reporting criteria.
Some decision support systems may not be able to fully differentiate between possible conditions that are Not Reportable and those that May be Reportable if additonal information is provided. In these circumstaces there may only be a reportabilty determination of:
-	**No Reporting Rule Met** - The information provided does not meet reporting criteria or may meet reporting criteria if additional information is provided.
The determination of No Reporting Rule Met may be provided for a possible condition or for all conditions in the eICR.

##	1.2 Audience
The audience for this document is developers and managers of public health information systems such as the Reportable Condition Knowledge Management System (RCKMS) and public health surveillance systems that receive and process eICRs and then generate and share Reportability Responses.

#	2 NARRATIVE CONSTRUCTION GUIDANCE

The following sections provide example templates and text for use in the generation of the Reportability Response Subject, 
Reportability Response Summary and eICR Not Processed Section/text. Most of the specifics of Reportabilty Response data 
and structure are found in the normative profiles of this implementation guide.
Normative guidance in the profiles includes data specification, order, and some aspects of structure and 
visualization.

The following sections include further details on how narrative text can be constructed to meet the goals of 
communicating with largely clinical audiences. There are example templates for the possible combinations of 
reportability determinations that need to be accommodated in the Reportablity Response and example visualizations. 

Variables that represent coded data found elsewhere in the Reportabilty Response will be enclosed with 
angle brackets in a monospaced font, like this: &lt;variable&gt;

##	2.1 Reportability Response Subject 
(for circumstances where **any** determination of reportability code is **reportable or maybe reportable** – 
it is recommended to communicate the Reportability Response to Provider /Reporter)
```
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.
```
 

(for circumstances where **all** determination of reportability codes **are not reportable and/or no rule met** – it is recommended 
to not communicate the Reportability Response to Provider / Reporter, but to store to document completion)
```
Public Health Reporting Communication: Submitted report had no identifiable reporting needs.
```

(for any circumstance where the eICR was **manually initiated**)
```
Public Health Reporting Communication: Manually initiated report was submitted to public heath
```
##	2.2 Reportability Response Summary 
**(Always present)**
```
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient.
```
 
**(if eICR was manually initiated)**
```
The initial report was manually initiated by a provider. It was sent to: "<routing entity name>","<routing entity name>"...
```

**(include and repeat for each eICR &lt;determination of reportability code&gt;)**

**(Reportable)**

```
"<Relevant reportable condition name>" is reportable to "<responsible agency name>". The initial case report was sent to "<routing entity name>". Additional information may be required for this report.
```

**(May be reportable)**
```
"<Relevant reportable condition name>" may be reportable to "<responsible agency name>". The reportability status could not be completely determined because: "<determination of reportability reason>".
```

**(Not reportable)**
```
"<Relevant reportable condition name>" was determined not to be reportable to "<responsible agency name>".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.
```
**(No rule met)**
```
A determination of reportability for a triggered condition could not be made for "&lt;responsible agency name>".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportabilty were available.
```
Note: While the identification of a Responsible Agency is an important part of information that the Reportability Response will provide to clinical care, some decision support systems may not be able to initially identify one.  In that circumstance, sentences that identify "for" or "to" &lt;responsible agency name&gt; should be ended with a period before that text. (e.g., A determination of reportability for a triggered condition could not be made.)

(Above each list of external resources, include and repeat for each eICR &lt;determination of reportability code&gt;)
```
"<Relevant reportable condition name>" for "<responsible agency name>"
Reporting is required within "<reporting timeframe>".  Reporting to this Public Health Agency is based on "<location relevance>". 
```
(repeat for each external resource template, based on External Resource Category order)
```
<External resource description> (<External resource link> - <External resource priority>)
```
## 2.3	A Single Condition is Reportable to a Single PHA
### 2.3.1	Subject:

Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health. 

### 2.3.2	Summary:

Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"```<Relevant reportable condition name>```" is reportable to "```<responsible agency name>```". The initial case report was sent to "```<routing entity name>```".
Additional information may be required for this report.

"```<Relevant reportable condition name>```" for "```<responsible agency name>```". Reporting is required within "```<reporting timeframe>```".  Reporting to this Public Health Agency is based on "```<location relevance>```". 

Example text:
> Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
> "Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.
> 
> **"Zika virus" for "State Department of Health"**
> Reporting is required within 24 hours.  Reporting to this Public Health Agency is based on "both patient home address and provider facility address". 
> Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
> Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
> Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
> Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
> Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> 
> **Additional resources**
> - Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> - Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> - Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> - CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
> - Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)


##	2.4 A Single Condition is *Not* Reportable to a Single PHA

###	2.4.1 Subject:

Public Health Reporting Communication: Submitted report had no identifiable reporting needs.

###	2.4.2 Summary:

Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
 "```<Relevant reportable condition name>```" was determined not to be reportable to "```<responsible agency name>```".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.

Example text:
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
 "Zika virus" was determined not to be reportable to "State Department of Health".  This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria.

##	2.5 Other Combinations for Response in the Reportability Response

Similar to these examples, some additional responses may include:

-	Single Condition is *Reportable* to Multiple PHAs
-	Single Condition is *Not Reportable* to Multiple PHAs 
-	Multiple Conditions are *Reportable* to a Single PHA
-	Multiple Conditions are *Reportable* to Multiple PHAs 
-	Multiple Conditions are *Not Reportable* to a Single PHA
-	Multiple Conditions are *Not Reportable* to Multiple PHAs
-	Combination of Conditions *Reportable* and *Not Reportable* to a Single or Multiple PHA(s)

##	2.6 eICR Not Processed
In the case where an eICR Composition was not processed (**eICR Processing Status**=eICR was not processed – error), 
the normative constraints in the Reportability Response Communication profile state that there must be narrative text populated from 
`Communication.payload[Electronic Initial Case Report Information]` that contains the reason the file was not processed. 
Given the potential reasons (see codes from the [eICR Processing Status (eCR)](ValueSet-eicr-processing-status-ecr.html) value set) 
for an eICR Composition not to be processed, the following example may be used in the the corresponding `Reportability Response Communication.text`:
An initial report for a possible reportable condition was received on "`<date and time of eICR receipt>`" with the file name "`<filename of eICR>`" but it was not processed. "`<eICR Processing Status Reason>`"
If additional information about the specific error is available (e.g., file validator output, server logs), it can also be found in eICR Validation output. Reportability Response Examples
The following example renderings are provided to illustrate the desired format of the rendered Reportability Response. An example stylesheet that was used for this rendering and other supporting files are also available in the transform directory.

The Figures below provide example renderings for Providers / Reporters for these types of determination of reportability:

1. One Reportable Condition to One PHA (with minimum external resources by PHA)
2. One Reportable Condition to One PHA (fully populated with external resources by PHA)
3. One Reportable Condition to One PHA (with no responsible agency identified)
4. One Not Reportable Condition for One PHA
5. One May be reportable Condition to One PHA
6. One No reporting rule met for One PHA
7. Two Reportable Conditions for Two PHAs
8. One Reportable and One Not reportable for Two PHAs
9. Manually initiatied eICR with no reporting criteria matched for One PHA
10. Manually initiatied eICR with One Reportable Condition for One PHA
 
Figure 1 – Example Rendering of Reportability Response for One Reportable Condition to One PHA (with minimum external resources by PHA)






This "header" information is usually handled separately by EHRs.






Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.

"Zika virus" for "State Department of Health"
Reporting is required within "24 hours".  Reporting to this Public Health Agency is based on "both patient home address and provider facility address". 
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
 
Figure 2 – Example Rendering of Reportability Response for One Reportable Condition to One PHA (fully populated with external resources by PHA)





This "header" information is usually handled separately by EHRs.






Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.

"Zika virus" for "State Department of Health"
Reporting is required within "24 hours".  Reporting to this Public Health Agency is based on "both patient home address and provider facility address". 
Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)

Additional resources
Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only) 
Figure 3 - Example Rendering of Reportability Response for One Reportable Condition to One PHA (with no responsible agency identified)




This "header" information is usually handled separately by EHRs.






Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" is reportable. An initial case report was sent to "State Department of Health". Additional information may be required for this report.

 
Figure 4 – Example Rendering of Reportability Response for One Not Reportable Condition to One PHA 




This "header" information is usually handled separately by EHRs.






Subject: 
Public Health Reporting Communication: submitted report had no identifiable reporting needs.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" was determined not reportable to "State Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria. 

If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)
 
Figure 5 – Example Rendering of Reportability Response for One May be Reportable Condition to One PHA 



This "header" information is usually handled separately by EHRs.







Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" may be reportable to "State Department of Health". The reportability status could not be completely determined because: "Patient pregnancy status is missing from eICR".

"Zika virus" for "State Department of Health"
Reporting is required within "24 hours".  Reporting to this Public Health Agency is based on "both patient home address and provider facility address". 
Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)

Additional resources
Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
 
Figure 6 – Example Rendering of Reportability Response with No Reporting Rule Met for One PHA 




This "header" information is usually handled separately by EHRs.






Subject: 
Public Health Reporting Communication: submitted report had no identifiable reporting needs.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
A determination of reporability for a triggered condition could not be made for "State Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency, or the information provided at the time of this report does not meet reporting criteria, or not all data needed to confirm reportability were available. 

 
Figure 7 – Example Rendering of Reportability Response for Two Reportable Condition to Two PHAs 




This "header" information is usually handled separately by EHRs.





Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health. 
Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report.
"Zika virus" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report.
"Zika virus" for "State A Department of Health". 
Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "patient home address". 
Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)

Additional resources
Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)

 "Chlamydia" for "State A Department of Health"
Reporting is required within "3 days".  Reporting to this Public Health Agency is based on "patient home address". 

Additional information for the required reporting of Chlamydia must be submitted to State A Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

State A Chlamydia Disease Plan ([Link](http://statedepartmentofhealth.gov/link) - For information)

Treatment guidelines ([Link](http://statedepartmentofhealth.gov/link) - For information)

State A Disease Testing Information ([Link](http://statedepartmentofhealth.gov/link) - For information)

If you have additional questions regarding reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)

Additional resources

STD Disease Statistics in State A ([Link](http://statedepartmentofhealth.gov/link) - For information)

CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)

Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - For information)
"Zika virus" for "State B Department of Health"
Reporting is required within "immediately by phone". Reporting to this Public Health Agency is based on "provider facility address". 

State B has declared a Public Health Emergency for Zika Virus.  Additional information is available here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

Additional information for the required reporting of Zika must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

State B recommends that symptomatic pregnant women with possible Zika exposure should be tested for Zika virus infection. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)

Zika Virus Diagnostic Specimen Collection, Packaging and Shipping Guidance for Laboratories and County Health Departments ([Link](http://statedepartmentofhealth.gov/link) - Action requested)

Zika Virus Testing Frequently Asked Questions ([Link](http://statedepartmentofhealth.gov/link) - For information)

Providers may use this form to assess patients for possible Zika Virus ([Link](http://statedepartmentofhealth.gov/link) - For information)

If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)

Additional resources

State B Zika Virus Information Hotline: 1-800-999-9999 (For information)

Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - For information)

CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)


"Chlamydia" for "State B Department of Health"
Reporting is required within "one business day".  Reporting to this Public Health Agency is based on "provider facility address". 

Additional information for the required reporting of Chlamydia must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

Chlamydia treatment brochure ([Link](http://statedepartmentofhealth.gov/link) - For information)

The State B Department of Health is here to serve you. Contact us with any questions you may have regarding reporting and treatment of Sexually Transmitted Diseases, by phone 888-123-1234, or email STD.Feedback@StateBhealth.gov. (For information)

Additional resources

Fact sheet for patients with Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)

State B Administrative Code ABC-123 is the mandate that empowers the Department of Health to record communicable diseases and dictates when and how diseases are to be reported to the Department by both practitioners and laboratories. ([Link](http://statedepartmentofhealth.gov/link) - For information)

CDC webpage for Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)
 
Figure 8 – Example Rendering of Reportability Response for One Reportable and One Not reportable for Two PHAs





This "header" information is usually handled separately by EHRs.





Subject: 
Public Health Reporting Communication: one or more conditions are reportable, or may be reportable, to public health. 
Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
"Zika virus" is reportable to "State A Department of Health". The initial case report was sent to "State A Department of Health". Additional information may be required for this report. "Chlamydia" was determined not reportable to "State A Department of Health". This may be because it is not on the list of reportable conditions for the relevant Public Health Agency or the information provided at the time of this report does not meet reporting criteria. 
 "Zika virus" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report. "Chlamydia" is reportable to "State B Department of Health". The initial case report was sent to "State B Department of Health". Additional information may be required for this report.
"Zika virus" for "State A Department of Health". 
Reporting is required within "24 hours". Reporting to this Public Health Agency is based on "patient home address". 
Local mosquito-borne Zika virus transmission was reported in your area. Increased watchfulness for symptoms of Zika virus in your patients is warranted. (Immediate action requested)
Additional information for the required reporting of Zika must be submitted to State Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)
Zika has particular risks for pregnant women. Follow-up guidance for pregnant women and couples who are planning pregnancy. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)
Further Laboratory testing for Zika may be needed. Guidance for additional testing and specimen collection ([Link](http://statedepartmentofhealth.gov/link) - Action requested)
Forms for submitting further Zika laboratory testing ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Treatment guidance ([Link](http://statedepartmentofhealth.gov/link) - Information only)
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)

Additional resources
Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Detailed condition references ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Prevalence in State ([Link](http://statedepartmentofhealth.gov/link) - Information only)
CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - Information only)
Patient information factsheet ([Link](http://statedepartmentofhealth.gov/link) - Information only)

 "Zika virus" for "State B Department of Health"
Reporting is required within "immediately by phone". Reporting to this Public Health Agency is based on "provider facility address". 

State B has declared a Public Health Emergency for Zika Virus.  Additional information is available here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

Additional information for the required reporting of Zika must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

State B recommends that symptomatic pregnant women with possible Zika exposure should be tested for Zika virus infection. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action requested)

Zika Virus Diagnostic Specimen Collection, Packaging and Shipping Guidance for Laboratories and County Health Departments ([Link](http://statedepartmentofhealth.gov/link) - Action requested)

Zika Virus Testing Frequently Asked Questions ([Link](http://statedepartmentofhealth.gov/link) - For information)

Providers may use this form to assess patients for possible Zika Virus ([Link](http://statedepartmentofhealth.gov/link) - For information)

If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - For information)

Additional resources

State B Zika Virus Information Hotline: 1-800-999-9999 (For information)

Control and prevention information for providers ([Link](http://statedepartmentofhealth.gov/link) - For information)

CDC webpage ([Link](http://statedepartmentofhealth.gov/link) - For information)


"Chlamydia" for "State B Department of Health"
Reporting is required within "one business day".  Reporting to this Public Health Agency is based on "provider facility address". 

Additional information for the required reporting of Chlamydia must be submitted to State B Department of Health immediately. This additional information can be submitted here. ([Link](http://statedepartmentofhealth.gov/link) - Immediate action required)

Chlamydia treatment brochure ([Link](http://statedepartmentofhealth.gov/link) - For information)

The State B Department of Health is here to serve you. Contact us with any questions you may have regarding reporting and treatment of Sexually Transmitted Diseases, by phone 888-123-1234, or email STD.Feedback@StateBhealth.gov. (For information)

Additional resources

Fact sheet for patients with Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)

State B Administrative Code ABC-123 is the mandate that empowers the Department of Health to record communicable diseases and dictates when and how diseases are to be reported to the Department by both practitioners and laboratories. ([Link](http://statedepartmentofhealth.gov/link) - For information)

CDC webpage for Chlamydia ([Link](http://statedepartmentofhealth.gov/link) - For information)


	
 
Figure 9 – Example Rendering of Reportability Response for a Manually initiatied eICR with no reporting criteria matched for One PHA





This "header" information is usually handled separately by EHRs.

Subject: 
Public Health Reporting Communication: Manually initiated report was submitted to public health.

Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
The initial report was manually initiated by a provider.  It was sent to "State Department of Health".
 
Figure 10 – Example Rendering of Reportability Response for a Manually initiatied eICR with One Reportable Condition for One PHA

This "header" information is usually handled separately by EHRs.

Subject: 
Public Health Reporting Communication: Manually initiated report was submitted to public health.
Summary: 
Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 
The initial report was manually initiated by a provider.  It was sent to "State Department of Health".
"Zika virus" is reportable to "State Department of Health". An initial case report was sent to "State Department of Health". Additional information may be required for this report.

"Zika virus" for "State Department of Health"
Reporting is required within "24 hours".  Reporting to this Public Health Agency is based on "both patient home address and provider facility address". 
If you have additional questions regarding Zika or reporting, the State Department of Health can be reached at 800 555-5555 or here. ([Link](http://statedepartmentofhealth.gov/link) - Information only)

Figure 11 – Example Rendering of Reportability Response with Error for "EHR System Administrators" 


eICR Information:

An initial report for a possible reportable condition was received on December 12, 2017 at 8:00pm with a file name "Eicr_Filename.xml" but it was not able to be processed.

eICR was not processed due to an error of:  fatal problem with the eICR that was received.