{% include nav-tabs.html type="StructureDefinition" id="eCR" active="mappings" %}

## {{ page.title }}
<!-- { :.no_toc } -->

source pages/\_include/{{page.md_filename}}.md  file

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

### Introduction

These source mappings are based on the CSTE eCR Task Force Data Elements and subequently added EICR CCDA Data elements. These Data Elements are mapped to the FHIR Composition and FHIR Resource elements.

|Data Element Common Name / CSTE eCR Task Force Name |Sub-Element Name|Published mappings to CDA Conformance ID|Mapping to ccda-on-fhir|FHIR Core Elements referenced directly from PH-Case resource|FHIR Core Elements referenced indirectly from PH-Case resource|US Core (Y/N)|
|---|---|---|---|---|---|---|
|Case Report||#N/A|Composition||||
|Date of the Report||1198-5256|Composition.date|||No|
|Report Submission Date/Time||#N/A|None|Provenance.occuredDateTime||No|
|Sending Application||#N/A|None|Provenance.agent.whoReference|Device.url|No|
|Provider||#N/A|Composition.author|PractitionerRole||Planned|
|Provider ID|namespace|3284-8||PractitionerRole.identifier||Planned|
|Provider ID|id|3284-8||PractitionerRole.identifier||Planned|
|Provider Name|given|3284-25||PractitionerRole.practitioner|Practitioner.name|PractionerRole - Planned, Practitioner -Yes |
|Provider Name|family|3284-25||PractitionerRole.practitioner|Practitioner.name|PractionerRole - Planned, Practitioner -Yes |
|Provider Name|suffix|3284-25||PractitionerRole.practitioner|Practitioner.name|PractionerRole - Planned, Practitioner -Yes |
|Provider Phone|use|3284-24||PractitionerRole.telecom||Planned|
|Provider Phone|value|3284-24||PractitionerRole.telecom||Planned|
|Provider Fax|use|3284-24||PractitionerRole.telecom||Planned|
|Provider Fax|value|3284-24||PractitionerRole.telecom||Planned|
|Provider Email|use|3284-24||PractitionerRole.telecom||Planned|
|Provider Email|value|3284-24||PractitionerRole.telecom||Planned|
|Provider Facility/Office Name||3284-26||PractitionerRole.organization|Organization.name|Planned|
|Provider Address|streetaddress,  office or suite number (ifapplicable),|3284-27||PractitionerRole.organization|Organization.address|Planned|
|Provider Address|city|3284-27||PractitionerRole.organization|Organization.address|Planned|
|Provider Address|state|3284-27||PractitionerRole.organization|Organization.address|Planned|
|Provider Address|zip|3284-27||PractitionerRole.organization|Organization.address|Planned|
|Provider Address|country|3284-27||PractitionerRole.organization|Organization.address|Planned|
|Facility||#N/A|Composition.encounter.location|Location||Yes|
|Facility ID Number|namespace|3284-13||Location.identifier||Yes|
|Facility ID Number|id|3284-13||Location.identifier||Yes|
|Facility Name||3284-33||Location.name||Yes|
|Facility Type|system|3284-14||Location.type||Yes|
|Facility Type|code|3284-14||Location.type||Yes|
|Facility Type|display|3284-14||Location.type||Yes|
|Facility Phone||3284-34||Location.telecom||Yes|
|Facility Phone||3284-34||Location.telecom||Yes|
|Facility Fax||3284-34||Location.telecom||Yes|
|Facility Fax||3284-34||Location.telecom||Yes|
|Facility Address|streetaddress,  office or suite number (ifapplicable),|3284-32||Location.address||Yes|
|Facility Address|city|3284-32||Location.address||Yes|
|Facility Address|county|3284-32||Location.address||Yes|
|Facility Address|state|3284-32||Location.address||Yes|
|Facility Address|zip|3284-32||Location.address||Yes|
|Facility Address|country|3284-32||Location.address||Yes|
|Patient||#N/A|Composition.subject|Patient||Yes|
|Patient ID Number|namespace|1198-5268||Patient.identifier||Yes|
|Patient ID Number|id|1198-5268||Patient.identifier||Yes|
|Patient Name|type|1198-5284||Patient.name||Yes|
|Patient Name|given|1198-5284||Patient.name||Yes|
|Patient Name|family|1198-5284||Patient.name||Yes|
|Patient  Phone|use|1198-5280||Patient.telecom||Yes|
|Patient  Phone|value|1198-5280||Patient.telecom||Yes|
|Patient  Email|use|1198-5280||Patient.telecom||Yes|
|Patient  Email|value|1198-5280||Patient.telecom||Yes|
|Street Address|use|1198-5271||Patient.address||Yes|
|Street Address|streetaddress,  office or suite number (ifapplicable),|1198-5271||Patient.address||Yes|
|Street Address|city|1198-5271||Patient.address||Yes|
|Street Address|county|1198-5271||Patient.address||Yes|
|Street Address|state|1198-5271||Patient.address||Yes|
|Street Address|zip|1198-5271||Patient.address||Yes|
|Street Address|country|1198-5271||Patient.address||Yes|
|Birth Date||1198-5298||Patient.birthDate||Yes|
|Patient Sex (admin gender)|system|1198-6394||Patient.gender||Yes|
|Patient Sex (admin gender)|code|1198-6394||Patient.gender||Yes|
|Patient Sex (admin gender)|display|1198-6394||Patient.gender||Yes|
|Patient Sex (bIrth sex)|system|3250-32947||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex)||Yes|
|Patient Sex (bIrth sex)|system-name|3250-32947||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex)||Yes|
|Patient Sex (bIrth sex)|code|3250-32947||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex)||Yes|
|Patient Sex (bIrth sex)|display|3250-32947||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex)||Yes|
|Race|system|1198-5322, 1198-7263||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-race)||Yes|
|Race|systemName|1198-5322, 1198-7263||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-race)||Yes|
|Race|code|1198-5322, 1198-7263||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-race)||Yes|
|Race|display|1198-5322, 1198-7263||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-race)||Yes|
|Ethnicity|system|1198-5323, 1198-32901||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity)||Yes|
|Ethnicity|systemName|1198-5323, 1198-32901||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity)||Yes|
|Ethnicity|code|1198-5323, 1198-32901||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity)||Yes|
|Ethnicity|display|1198-5323, 1198-32901||Patient.extension(url=http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity)||Yes|
|Preferred Language|code|1198-5407||Patient.communication.language||Yes|
|Preferred Language|proficiency.system|1198-5407||NA||Yes|
|Preferred Language|proficiency.systemNamw|1198-5407||NA||Yes|
|Preferred Language|proficiency.code|1198-5407||NA||Yes|
|Preferred Language|proficiency.display|1198-5407||NA||Yes|
|Preferred Language|preference|1198-5407||Patient.communication.preferred||Yes|
|Death Date||3284-106||Patient.deceasedDateTime||Yes|
|Guardian contact information||#N/A||Patient.contact||Yes|
|Parent/Guardian Name|type|1198-5386||Patient.contact.name||Yes|
|Parent/Guardian Name|given|1198-5386||Patient.contact.name||Yes|
|Parent/Guardian Name|family|1198-5386||Patient.contact.name||Yes|
|Parent/Guardian Phone|use|1198-5382||Patient.contact.telecom||Yes|
|Parent/Guardian Phone|value|1198-5382||Patient.contact.telecom||Yes|
|Parent/Guardian Email|use|1198-5382||Patient.contact.telecom||Yes|
|Parent/Guardian Email|value|1198-5382||Patient.contact.telecom||No|
|The patient's occupation history|||Composition.section.entry|Observation|||
|Occupation|start date|1198-8559||Observation.effectivePeriod||No|
|Occupation|end date|1198-8559||Observation.effectivePeriod||No|
|Occupation|description|1198-8559||Observation.valueString||Yes|
|The patient's pregnancy status |||Composition.section.entry||||
|The patient's pregnancy status ||||Observation|Condition|||
|Pregnant|start date|1198-9058||Observation.effectivePeriod or Condition.onset.period||Yes|
|Pregnant|end date|1198-9058||Observation.effectivePeriod or Condition.onset.period||Yes|
|Pregnant|not pregnancy indicator|1198-9058||||Yes|
|Pregnant|unknown indicator|1198-9058||||Yes|
|Pregnant|system|#N/A||Observation.valueCodeableConcept or Condition.code||No|
|Pregnant|code|#N/A||Observation.valueCodeableConcept or Condition.code||No|
|Pregnant|display|#N/A||Observation.valueCodeableConcept or Condition.code||No|
|Travel History||#N/A|Composition.section.entry|||No|
|Travel History Dates|start|3284-295||||No|
|Travel History Dates|end|3284-295||||No|
|Travel History Location - Free Text||3284-269||||No|
|Travel History Location - Coded|system|3284-263||||No|
|Travel History Location - Coded|systemName|3284-263||||No|
|Travel History Location - Coded|code|3284-263||||No|
|Travel History Location - Coded|display|3284-263||||No|
|Travel History Location - Address|||Composition.section.entry|Location|||
|Travel History Location - Address|streetaddress,  office or suite number (ifapplicable),|3284-264||Location.address||Yes|
|Travel History Location - Address|city|3284-264||Location.address||Yes|
|Travel History Location - Address|state|3284-264||Location.address||Yes|
|Travel History Location - Address|zip|3284-264||Location.address||Yes|
|Travel History Location - Address|country|3284-264||Location.address||Yes|
|History of Present Illness|||Composition.section.entry|||No|
|History of Present Illness||||Observation or Condition|||
|History of Present Illness|text|81-7851||Observation.valueString or Condition.code||No|
|History of Present Illness|system|#N/A||Condition.code||No|
|History of Present Illness|code|#N/A||Condition.code||No|
|History of Present Illness|display|#N/A||Condition.code||No|
|Reason for Visit|||Composition.section.entry|||No|
|Reason for Visit||||Observation or Condition|||
|Reason for Visit|0|81-7839||Observation.valueString or Condition.code||No|
|Reason for Visit|system|#N/A||Condition.code||No|
|Reason for Visit|code|#N/A||Condition.code||No|
|Reason for Visit|display|#N/A||Condition.code||No|
|Signs and Symptom information||#N/A|Composition.section.entry|||Yes|
|Signs and Symptom information||||Observation or Condition|||
|Date of Onset|start|1198-15603||Observation.effectivePeriod or Condition.onsetPeriod||Yes|
|Date of Onset|end|1198-15603||Observation.effectivePeriod or Condition.onsetPeriod||Yes|
|Symptoms (list)|system|1198-9058||Observation.valueCodeableConcept or Condition.code|||
|Symptoms (list)|code|1198-9058||Observation.effectivePeriod or Condition.onsetPeriod|||
|Symptoms (list)|display|1198-9058||Observation.effectivePeriod or Condition.onsetPeriod|||
|Diagnoses|||Composition.section.entry||||
|Diagnoses||||Condition|||
|Diagnoses|system|1198-9058||Condition.code||Yes|
|Diagnoses|systemName|1198-9058||Condition.code||Yes|
|Diagnoses|code|1198-9058||Condition.code||Yes|
|Diagnoses|display|1198-9058||Condition.code||Yes|
|Date of Diagnosis|start|1198-9050||Condition.onsetPeriod||Yes|
|Date of Diagnosis|end|1198-9050||Condition.onsetPeriod||Yes|
|Lab Order information||#N/A|Composition.section.entry|||No|
|Lab Order Code||||ProcedureRequest||No|
|Lab Order Code|system|1198-30453||ProcedureRequest.code||No|
|Lab Order Code|code|1198-30453||ProcedureRequest.code||No|
|Lab Order Code|display|1198-30453||ProcedureRequest.code||No|
|Placer Order Number|namespace|1098-8584||ProcedureRequest.identifier||No|
|Placer Order Number|id|1098-8584||ProcedureRequest.identifier||No|
|Lab Result Information||#N/A|Composition.section.entry|||Yes|
|Lab Order Code Results||||Observation or DiagnosticReport|||
|Lab Order Code Results|system|1198-7133||Observation.code or DiagnosticReport.code||Yes|
|Lab Order Code Results|code|1198-7133||Observation.code or DiagnosticReport.code||Yes|
|Lab Order Code Results|display|1198-7133||Observation.code or DiagnosticReport.code||Yes|
|Laboratory Results||||Observation.valueQuantity or DiagnosticReport.result|Observation||
|Laboratory Results|quantity-value|1198-7143||Observation.valueQuantity or DiagnosticReport.result|Observation.valueQuantity|Yes|
|Laboratory Results|quantity-unit|1198-7143||Observation.valueQuantity or DiagnosticReport.result|Observation.valueQuantity|Yes|
|Laboratory Results|code-system|1198-7143||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|Yes|
|Laboratory Results|code-value|1198-7143||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|Yes|
|Laboratory Results|code-display|1198-7143||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|Yes|
|Filler Order Number|namespace|1198-7127, 1198-7137||Observation.identifier or DiagnosticReport.identifier|||
|Filler Order Number|id|1198-7127, 1198-7137||Observation.identifier or DiagnosticReport.identifier|||
|Immunization Status||3284-149|Composition.section.entry|||Yes|
|Immunization Status||||Immunization|||
|Immunization Status|vaccine.system|3284-149||Immunization.vaccineCode||Yes|
|Immunization Status|vaccine.code|3284-149||Immunization.vaccineCode||Yes|
|Immunization Status|vaccine.display|3284-149||Immunization.vaccineCode||Yes|
|Immunization Status|manufacturer|3284-149||Immunization.manufacturer|Organization.name|Yes|
|Immunization Status|lot number|3284-149||Immunization.lotNumber||Yes|
|Immunization Status|date|3284-149||Immunization.date||Yes|
|Immunization Status|status|3284-149||Immunization.status||Yes|
|Medications Administered (list)||1098-7412|Composition.section.entry|||Yes|
|Medications Administered (list)||1098-7412||MedicationAdministration or MedicationStatement or MedicationDispense||Yes|
|Medications Administered (list)|medication.system|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|Yes|
|Medications Administered (list)|medication.code|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|Yes|
|Medications Administered (list)|medication.display|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|Yes|
|Medications Administered (list)|start|1098-7412||MedicationAdministration.effectivePeriod||Yes|
|Medications Administered (list)|end|1098-7412||MedicationAdministration.effectivePeriod or MedicationStatement.effectivePeriod||Yes|
|Medications Administered (list)|timing|1098-7412||MedicationAdministration.effectiveDateTime or MedicationStatement.effectiveDateTime||Yes|
|Medications Administered (list)|status|1098-7412||MedicationAdministration.status or MedicationStatement.status or MedicationDispense.status||Yes|
|Medications Administered (list)|dose.quantity|1098-7412||MedicationAdministration.dosage.dose or MedicationStatement.dosage.doseQuantity  or MedicationDispense.dosage.doseQuantity ||Yes|
|Medications Administered (list)|dose.unit|1098-7412||MedicationAdministration.dosage.dose or MedicationStatement.dosage.doseQuantity  or MedicationDispense.dosage.doseQuantity ||Yes|
|Medications Administered (list)|route.system|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||Yes|
|Medications Administered (list)|route.code|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||Yes|
|Medications Administered (list)|route.display|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||Yes|
|Trigger Code||#N/A|Composition.extension|||No|
|Lab Order Code (Trigger Code)|||||||
|Lab Order Code (Trigger Code)||||ProcedureRequest|||
|Lab Order Code (Trigger Code)|system|3284-325||ProcedureRequest.code||No|
|Lab Order Code (Trigger Code)|code|3284-325||ProcedureRequest.code||No|
|Lab Order Code (Trigger Code)|display|3284-325||ProcedureRequest.code||No|
|Lab Order Code (Trigger Code)|valueset|3284-325||ProcedureRequest.code||No|
|Lab Order Code (Trigger Code)|valueset-version|3284-325||ProcedureRequest.code||No|
|Lab Order Code Results (Trigger Code)|||||||
|Lab Order Code Results (Trigger Code)||||Observation or DiagnosticReport|||
|Lab Order Code Results (Trigger Code)|system|3284-271||Observation.code or DiagnosticReport.code||No|
|Lab Order Code Results (Trigger Code)|code|3284-271||Observation.code or DiagnosticReport.code||No|
|Lab Order Code Results (Trigger Code)|display|3284-271||Observation.code or DiagnosticReport.code||No|
|Lab Order Code Results (Trigger Code)|valueset|3284-271||Observation.code or DiagnosticReport.code||No|
|Lab Order Code Results (Trigger Code)|valueset-version|3284-271||Observation.code or DiagnosticReport.code||No|
|Laboratory Result (Trigger Code)|||||||
|Laboratory Result (Trigger Code)||||Observation or DiagnosticReport|||
|Laboratory Result (Trigger Code)|system|3284-273||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|No|
|Laboratory Result (Trigger Code)|code|3284-273||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|No|
|Laboratory Result (Trigger Code)|display|3284-273||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|No|
|Laboratory Result (Trigger Code)|valueset|3284-273||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|No|
|Laboratory Result (Trigger Code)|valueset-version|3284-273||Observation.valueCodeableConcept or DiagnosticReport.result|Observation.valueCodeableConcept|No|
|Diagnosis (Trigger Code)|||||||
|Diagnosis (Trigger Code)||||Condition|||
|Diagnosis (Trigger Code)|system|3284-106||Condition.code||No|
|Diagnosis (Trigger Code)|code|3284-106||Condition.code||No|
|Diagnosis (Trigger Code)|display|3284-106||Condition.code||No|
|Diagnosis (Trigger Code)|valueset|3284-106||Condition.code||No|
|Diagnosis (Trigger Code)|valueset-version|3284-106||Condition.code||No|
{: .table-bordered }
