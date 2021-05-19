It describes the content requirements for the eICR including:         

* patient demographics         
* patient pregnancy status         
* patient occupation and travel history         
* provider and facility information         
* laboratory orders, tests, and results         
* signs, symptoms, and diagnoses
* medication and immunization information
* flags for the existence of reportable condition trigger codes in diagnoses, ordered/resulted laboratory tests, medications, immunizations, and procedures
    * flags contain RCTC OID and RCTC version
* codes indicating whether the eICR was manually or alternately initiated

**Entered-in-error**: In the case of a diagnosis, ordered/resulted laboratory test, medication, immunization, or procedure that was previously entered in error and has now been corrected:
* set verificationStatus (Condition) or status (Observation, ServiceRequest, MedicationAdministration, MedicationRequest, Immunization, Procedure) to 'entered-in-error'
* set [eICR Initiation Type Extension](StructureDefinition-eicr-initiation-type-extension.html) to "PHC1464|Manually initiated eICR"
