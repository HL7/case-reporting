This profile describes the content requirements for the eICR including:
* patient demographics
* patient pregnancy status
* patient work information
    * current occupation, current industry, current employer name, phone, and address, occupational exposure ([Past or Present Job](http://hl7.org/fhir/us/odh/StructureDefinition/odh-PastOrPresentJob))
        * Note: An Occupational Hazard is a source of potential harm to one’s health that may be encountered at work. An Occupational Exposure is a known interaction with an occupational hazard in a way that increases the risk of harm.
    * usual occupation, usual industry ([Usual Work](http://hl7.org/fhir/us/odh/StructureDefinition/odh-UsualWork))
* patient travel history
* patient exposure/contact information
* provider and facility information
* laboratory orders, tests, and results
* signs, symptoms, and diagnoses
* medication and immunization information
* flags for the existence of reportable condition trigger codes in diagnoses, ordered/resulted laboratory tests, medications, immunizations, and procedures
    * flags contain RCTC OID and RCTC version
    * codes indicating whether the eICR was manually or alternately initiated
