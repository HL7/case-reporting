It contains the trigger code which is the same as the trigger code in the resource and is used to identify which code(s) in a resource that allows multiple trigger codes (e.g. US Core Observation Lab where a trigger code could be contained in either the code (lab test) or the value (lab test result) or in the case of a battery or panel of tests, in the hasMember as another US Core Observation Lab code or value). It also contains the RCTC OID and RCTC version of the value set from which the code was matched. 

It is available for use in the following places:

* [eICR Encounter](StructureDefinition-eicr-encounter.html)
  * flags a code contained in Condition.code [US Public Health Condition Encounter Diagnosis]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-condition-encounter-diagnosis.html) which is contained in Encounter.diagnosis [eICR Encounter](StructureDefinition-eicr-encounter.html) - diagnosis
* Problem Section entry
  * flags a code contained in Condition.code ([US Public Health Condition Problems and Health Concerns]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-condition-problems-health-concerns.html)) - diagnosis
* Plan of Treatment Section entry
  * flags a code contained in ServiceRequest.code [eICR ServiceRequest](StructureDefinition-eicr-servicerequest.html) - test being requested
* Results Section entry
  * flags codes contained in:
    * Observation.code [US Public Health Laboratory Result Observation Profile code]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) - test performed/battery or panel name
    * Observation.value [US Public Health Laboratory Result Observation Profile code]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) - test result
    * Observation.code referenced in containing Observation.hasMember [US Public Health Laboratory Result Observation Profile code]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) - member of panel test performed
    * Observation.value referenced in containing Observation.hasMember [US Public Health Laboratory Result Observation Profile code]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) - member of panel test result
* Medications Section entry
  * flags a code contained in MedicationAdministration.medicationCodeableConcept [US Public Health MedicationAdministration]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-medicationadministration.html) - medication
* Immunization Section entry
  * flags a code contained in [US Core Immunization]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-immunization.html) (Immunization.vaccineCode) - vaccine