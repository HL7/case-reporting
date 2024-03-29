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

A number of profiles and extensions have been defined for the Reportability Response transactions  - see [Artifact Index](artifacts.html) for a listing of these profiles. The Reportability Response Composition profile is the starting point and all the other profiles are referenced from this profile (see diagram below).

<table><tr><td><img src="FHIR RR Profile Hierarchy.png" /></td></tr></table>