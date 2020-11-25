It contains the trigger code which is the same as the trigger code in the resource and is used to identify which code(s) in a resource that allows multiple trigger codes (e.g. US Core Observation Lab where a trigger code could be contained in either the code (lab test) or the value (lab test result) or in the case of a battery or panel of tests, in the hasMember as another US Core Observation Lab code or value). It also contains the RCTC OID and RCTC version of the value set from which the code was matched. 

It is available for use in the following places:

* eICR Encounter
	* flags a code contained in Condition.code (eICR Condition) which is contained in Encounter.diagnosis (eICR Encounter) - diagnosis
* Problem Section entry
	* flags a code contained in Condition.code (eICR Condition) - diagnosis
* Plan of Treatment Section entry
	* flags a code contained in ServiceRequest.code (eICR ServiceRequest) - test being requested
* Results Section entry
	* flags codes contained in:
		* Observation.code (US Core Laboratory Result Observation Profile code) - test performed/battery or panel name
		* Observation.value (US Core Laboratory Result Observation Profile value) - test result
		* Observation.code referenced in containing Observation.hasMember (US Core Laboratory Result Observation Profile code) - member of panel test performed
		* Observation.value referenced in containing Observation.hasMember (US Core Laboratory Result Observation Profile value) - member of panel test result
* Medications Section entry
	* flags a code contained in MedicationAdministration.medicationCodeableConcept - medication
* Immunization Section entry
	* flags a code contained in US Core Immunization (Immunization.vaccineCode) - vaccine
* Procedures Section entry
	* flags a code contained in US Core Procedure (Procedure.code) - procedure