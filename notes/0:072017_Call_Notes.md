Data “payload” portion of FHIR eICR transaction

We need to develop an approach and an artifact(s) to show our approach at the conceptual and data element level for the data “payload” of the FHIR eICR transaction. I believe that the logical model you have been working on may be the starting point for this. So, to be clear, assuming (but not concluded) that we will advance an eCR FHIR resource, for this we are only focusing on the data in “the eICR transaction.” So, we are not immediately focusing on Reportability Response data,  supplemental eCR reporting data (those not in the eICR), or data for the management of a case when it is in a PHA.

We would like you to present a logical data model that shows individual data elements “mapping” between the eICR 1.1 (and errata – see HL7 web site) and the eventual FHIR resource(s) used. Remember that we are looking to have the FHIR resource(s) used for the payload be resources that are in the most common use in clinical care to support the provision of care. We would like their implementation to be easy for EHR developers because they would already be principally using them for other purposes. We would like that the data would eventually be those that are certified to be existent in EHRs – when certification for FHIR exists. Conceptually this would seem to align the data involved to be associated with:

-      CSTE Task Force (this will be represented in the FHIR implementation guide in implementation, but please represent in the logical model too)
       - *done*


-      The ONC common clinical data set (not all CCDS data need to be in the eICR transaction, but please represent in the logical model)
       - *not sure if identified things in this set*


-   The FHIR US Core and FHIR core (please represent in logical model, although we may need to discuss which or both


-   Existing FHIR resources (please represent in model, we want to use common ones wherever possible and assume that if there is a new eCR resource it will be a “meta” resource for these payload data and not represent individual data elements itself)
    - e.g. Patient, Condition, etc
    - use common name

- Table 2 in EICR
