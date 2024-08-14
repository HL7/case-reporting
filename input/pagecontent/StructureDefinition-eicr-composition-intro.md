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

In the case where a trigger code was previously entered in error and has now been corrected, set verificationStatus or status (depending on profile type) of the profile to 'entered-in-error' and set the [eICR Initiation Type extension](StructureDefinition-eicr-initiation-type-extension.html) to PHC1464.

Where a trigger occurs outside of an encounter and Encounter.class is set to “PHC2237”, system=”2.16.840.1.114222.4.5.274” (External Encounter) the responsible provider and facility information is contained in the eICR Composition.author. See table:

| Data Element  | Note  |
|---|---|
| Composition.author\[PractitionerRole] | \[External encounter case] Provider: Provider responsible for the patient's care when the case was triggered.  |
| Composition.author\[PractitionerRole].identifier | \[External encounter case] Provider Id: Identifier of the provider responsible for the patient's care when the case was triggered  |
| Composition.author\[PractitionerRole].practitioner\[Practitioner].identifier | \[External encounter case] Provider Address: Address of the provider responsibe for the patient's care when the case was triggered.  |
| Composition.author\[PractitionerRole].telecom | \[External encounter case] Provider Telecom: A telecom address (phone, email, fax, etc.) for the provider responsibe for the patient's care when the case was triggered.  |
| Composition.author\[PractitionerRole].practitioner\[Practitioner].name | \[External encounter case] Provider Name: Name of the provider responsibe for the patient's care when the case was triggered  |
| Composition.author\[PractitionerRole].organization\[Organization] | \[External encounter case] Facility: The facility in which care was provided when the case was triggered  |
| Composition.author\[PractitionerRole].organization\[Organization].identifier | \[External encounter case] Facility Id: Identification code for the facility in which care was provided when the case was triggered  |
| Composition.author\[PractitionerRole].organization\[Organization].address | \[External encounter case] Facility Address: The physical location of the facility in which care was provided when the case was triggered  |








