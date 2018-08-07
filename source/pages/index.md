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

###Introduction and Purpose

With the adoption and maturing of Electronic Health Records (EHRs) there are opportunities to better support public health surveillance as well as the delivery of relevant public health information to clinical care.
Electronic Case Reporting (eCR) can provide more complete and timely case data, support disease / condition monitoring, and assist in outbreak management and control.
It can also improve bidirectional communications through the delivery of public health information in the context of a patient’s condition and local disease trends and by facilitating ad hoc communications.
eCR will also reduce healthcare provider burden by automating the completion of legal reporting requirements.

With the advent of FHIR standards, there is a need for FHIR implementation guidance to specify appropriate resources and transactions needed for the eCR process.
FHIR offers opportunities to further enable automated triggering and reporting of cases from EHRs, to ease implementation and integration, to support the acquisition of investigation and supplemental data, and to connect public health information (e.g., guidelines) and clinical workflow.
Over time, FHIR may also support the distribution of reporting rules to clinical care to better align data authorities and make broader clinical data available to public health decision support services inside the clinical care environment.
 
###Relationship to Other Standards

There is an existing Electronic Initial Case Report (eICR) HL7 CDA STU implementation guide (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=436.) to be used for all-jurisdiction, all-condition reporting to public health agencies from EHRs.
The eICR was created from a Council of State and Territorial Epidemiologists (CSTE) Task Force recommendation that identified necessary data to support case reporting.
There also is an existing Reportability Response (RR) HL7 CDA STU implementation guide (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=470) that supports several functions for providing information back to clinical care in response to received eICRs.

In a January 2018 there was an HL7 FHIR eCR "for comment" ballot with FHIR versions of the following transactions: eICR, the RR, and a specification / subscription service for knowledge distribution (trigger codes).
These specifications were tested at the January, 2018 HL7 Connectathon.  A fourth transaction for web form-based acquisition of public health case investigation supplemental data has been demonstrated and piloted.

This current FHIR electronic case reporting STU implementation guide (hereby known as "FHIR eCR") includes all of the eICR, RR, and the knowledge distribution / trigger codes transactions in FHIR form.
Web form - based requests case investigation and supplemental data are enabled by, but not specified in, this implementation guide.
Transforms will be made available to facilitate the conversion of CDA and FHIR eICR and RR transactions.

###Stakeholders
- Regulatory Agencies
- Standards Development Organizations
- Vendors: EHR, PHR; Health Care IT; Clinical Decision Support Systems, Public Health Surveillance Systems
- Providers: Ambulatory and Healthcare Institutions (hospitals, long term care,  mental health)
- Local, State, Tribal and Federal Public Health Agencies
