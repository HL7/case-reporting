---
title: Subscription
layout: default
active: Subscription
---

[Previous Page](FHIR_Messaging_and_Basic_REST_Options.html)

This implementation guide assumes that EHRs or other systems will be able to generate timely notifications to begin the triggering process when resources containing codes in the trigger code value sets appear in the system. Those notifications would go to an associated system or process in clinical care that could begin the initial case reporting process, and would likely access more data from the EHR.


One approach for this is using the current FHIR R4 Subscription model, where a user would create a Subscription resource with a FHIR query string as the criteria. Subscription is being reworked for FHIR R5, and will be based on Topics, which are represented using a Topic resource that users can subscribe to and filter on. For this IG, we will specify the FHIR query strings needed for the current version of FHIR, and the Topic criteria that would be needed in a subsequent FHIR R5 implementation.

## Topics:
**Diagnosis_Problem**

Condition?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fdxtc

**Organism_Substance**

Condition?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fostc

**Lab Order Test**

ServiceRequest?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Flotc

**Lab Obs Test Name**

Observation?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Flrtc

**Medications**

MedicationAdministration?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fmrtc

MedicationDispense?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fmrtc

MedicationRequest?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fmrtc

MedicationStatement?code:in=http%3A%2F%2Fhl7.org%2Ffhir%2Fus%2Fecr%2FValueSet%2Fmrtc







[Next Page](Implementation_Guidance.html)