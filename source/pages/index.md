---
title: electronic Case Reporting (eCR) Implementation Guide HomePage
layout: default
active: home
---

{% include publish-box.html %}

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

source: source/pages/\_include/{{page.md_filename}}.md  file

###  Introduction and Purpose

With the advent of Electronic Health Records (EHRs), there are tremendous opportunities to support public health surveillance and the
delivery of public health information to clinical care. eCR can support
more complete and timely possible case data, support disease and
condition monitoring and trending, assist outbreak management and
control, and improve relevant information delivery to clinicians in the
context of jurisdictional disease trends and patient specifics.

eCR has an HL7 CDA STU implementation guide (the Electronic Initial Case
Report - eICR) for all-jurisdiction, all-condition initial reporting to
public health from EHRs. It also has an in-process HL7 CDA STU
implementation guide (the “Reportability Response”).

With the advent of FHIR standards, eCR will also need appropriate FHIR
resources, transactions, and implementation guidance to support this
process. FHIR also offers opportunities to supplement eICR data and
improve the ease of implementation and consistency of the automated
triggering of eICRs and the decision logic needed to advance both
reporting to public health and provision of public health information to
clinical care.

Public Health electronic case reporting (eCR) is the principally
automated, bidirectional exchange of information between clinical care
and public health in the context of reportable conditions.

This project will build off of the C-CDA STU Public Health Case Report
standards to support a number of activities related to electronic case
reporting (eCR) through appropriate FHIR representations:

1.  > Reporting, investigation, and management - electronic transmission
    > of clinical data from Electronic Health Records to Public Health -
    > including; 1) the existing electronic initial case report (eICR)
    > version 1.1, 2) new eICR data from all EHRs, 3) pushed and pulled,
    > non-eICR, condition specific EHR data, and 4) supplemental data
    > not found in EHRs. The management and processing of population
    > cases including potentially a FHIR population case resource.

2.  > Bi-directional information exchange – the response to the eICR
    > including the delivery of relevant public health information in
    > the context of the patient and their possible relevant conditions
    > – included in the Reportability Response transaction

3.  > Triggering and decision support – the automated initiation of an
    > initial report in Electronic Health Records based on simple logic
    > “triggers” from public health. A pathway to more complex logic
    > distribution will be explored, as well as the opportunities in
    > workflow to tie in contextualized public health information.

As with the initial electronic case report, the project will strive to
minimize reporting burden and use data that are in EHRs because of the
provision of care. It will, whenever possible, use existing FHIR
resources so the data can be readily produced and delivered by EHRs.

The strategy undertaken by this project includes the use of a US Realm
Standard for Trial Use (STU) for development and deployment. Following
the STU period, for a period of two years, the standard will be
published as Normative. It will also include the pursuit of a universal
FHIR population case resource and the specification of documents, value
sets, extensions and other resources as necessary to support these
activities.

### Stakeholders

  - Regulatory Agencies

  - Standards Development Organizations (SDOs)

  - Vendors: EHR, PHR; Health Care IT; Clinical Decision Support Systems

  - Providers: Healthcare Institutions (hospitals, long term care, home
    care, mental health)

  - Local and State Public Health Agencies

### Relationships to Other Standards

### Acknowledgements
