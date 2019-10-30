---
title: Implementation Guide Home Page
layout: default
active: home
---

{% include publish-box.html %}

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

### Description

# Introduction and Purpose
With the adoption and maturing of Electronic Health Records (EHRs) there are opportunities to better support public health surveillance as well as the delivery of relevant public health information to clinical care. Electronic Case Reporting (eCR) can provide more complete and timely case data, support disease / condition monitoring, and assist in outbreak management and control. It can also improve bidirectional communications through the delivery of public health information in the context of a patients condition and local disease trends and by facilitating ad hoc communications. eCR will also reduce healthcare provider burden by automating the completion of legal reporting requirements.

With the advent of FHIR standards, there is a need for FHIR implementation guidance to specify appropriate resources and transactions needed for the eCR process. FHIR offers opportunities to further enable automated triggering and reporting of cases from EHRs, to ease implementation and integration, to support the acquisition of investigation supplemental data, and to connect public health information (e.g., guidelines) and clinical workflow. Over time, FHIR may also support the distribution of reporting rules to clinical care to better align data authorities and make broader clinical data available to public health decision support services inside the clinical care environment.

# Relationship to Other Standards
In coordination with the publication of this FHIR standard, an updated version 2.0 of the [HL7 CDA R2 Electronic Initial Case Report (eICR) Standard for Trial Use (STU)](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=436) (see the link under "STU Documents" for STU 2.0) is also being published. The FHIR [eICR transaction](http://build.fhir.org/ig/HL7/case-reporting/Electronic_Initial_Case_Report_(eICR)_Transaction_and_Profiles.html) in this implementation guide and the separately published CDA eICR implementation guide standard will now be maintained in tight coordination with each other. 
 
In order to get data as readily as possible from clinical care and minimize provider burden, the CDA eICR was built extensively on published [HL7 Consolidated CDA Templates for Clinical Notes (C-CDA R2.1)](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=492) templates. The FHIR eICR transaction reuses many of the [HL7 FHIR US Core Implementation Guide STU 3](http://hl7.org/fhir/us/core/) profiles, and has been mapped to both the [Common Clinical Data Set (CCDS)](https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf), and now, the [(U.S. Core Data for Interoperability) USCDI](https://www.healthit.gov/isa/us-core-data-interoperability-uscdi). There are some eICR data, critical to public health activities, that are in the eICR transaction but not in the USCDI at this time. And some USCDI data are not legally authorized for delivery to public health agencies in the context of case reporting, but every effort will be made in an ongoing way to minimize variations from the USCDI.
 
Both the CDA and FHIR versions of the eICR are intended to be used as an all-jurisdiction, all-condition report to public health agencies from EHRs. The eICR was created from a Council of State and Territorial Epidemiologists (CSTE) Task Force recommendation that identified necessary data to support case reporting. There is also an existing [HL7 CDA R2 Reportability Response (RR) STU implementation guide](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=470) that supports several functions for providing information back to clinical care in response to received eICRs. A [FHIR version of the CDA Reportability Response transaction](http://build.fhir.org/ig/HL7/case-reporting/Reportability_Response_(RR)_Transaction_and_Profiles.html) is included in this eCR FHIR implementation guide. 
 
This aggregate FHIR electronic case reporting STU implementation guide (hereby known as FHIR eCR) also includes an [electronic Reporting and Surveillance Distribution (eRSD) transaction](http://build.fhir.org/ig/HL7/case-reporting/Electronic_Reporting_and_Surveillance_Distribution_(eRSD)_Transaction_and_Profiles.html) that includes the Reportable Condition Trigger Codes (RCTC) and other reporting guidance. A distribution service for the eRSD transaction including the RCTC trigger codes can be found at [ecr.aimsplatform.org](https://ecr.aimsplatform.org/).
 
XSLT transforms will be made available to facilitate the conversion of eICR and RR transactions between CDA and FHIR formats. These transforms and other supportive material can be found in GForge in the [FHIR_IG_eCR SVN folder](https://gforge.hl7.org/gf/project/pher/scmsvn/?action=browse&path=%2Ftrunk%2FFHIR_IG_eCR%2F).

# Stakeholders
* Regulatory Agencies
* Standards Development Organizations
* Vendors: EHR, PHR; Health Care IT; Clinical Decision Support Systems, Public Health Surveillance Systems
* Providers: Ambulatory and Healthcare Institutions (hospitals, long term care, mental health)
* Local, State, Tribal and Federal Public Health Agencies

