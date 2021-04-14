[Previous Page - Electronic Reporting and Surveillance Distribution (eRSD) Transaction and Profiles](electronic_reporting_and_surveillance_distribution_ersd_transaction_and_profiles.html)

Implementation guide assumes that EHRs or other systems will be able to generate timely notifications to begin the triggering process when resources containing codes in the trigger code value sets appear in the system. Those notifications would go to an associated system or process in clinical care that could begin the initial case reporting process, and would likely access more data from the EHR.


One approach for this is using the current FHIR R4 Subscription model, where a user would create a Subscription resource with a FHIR query string as the criteria. Subscription is being reworked for FHIR R5, and will be based on Topics, which are represented using a Topic resource that users can subscribe to and filter on. For this IG, we will specify the FHIR query strings needed for the current version of FHIR, and the Topic criteria that would be needed in a subsequent FHIR R5 implementation.

## Topics:
**Diagnosis_Problem**

`Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/dxtc`

**Organism_Substance**

`Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/ostc`

**Lab Order Test**

`ServiceRequest?code:in=http://hl7.org/fhir/us/ecr/ValueSet/lotc`

**Lab Obs Test Name**

`Observation?code:in=http://hl7.org/fhir/us/ecr/ValueSet/lrtc`

**Medications**

`MedicationAdministration?code:in=http://hl7.org/fhir/us/ecr/ValueSet/mrtc`

`MedicationDispense?code:in=http://hl7.org/fhir/us/ecr/ValueSet/mrtc`

`MedicationRequest?code:in=http://hl7.org/fhir/us/ecr/ValueSet/mrtc`

`MedicationStatement?code:in=http://hl7.org/fhir/us/ecr/ValueSet/mrtc`

[Next Page - Transport Options](transport_options.html)