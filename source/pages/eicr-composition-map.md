---
# jekyll header
title: Mappings from the EICR Data Elements to the eCR Composition Profile
layout: fhir-artifact
level: 2
active: profiles
template: mappings
type: StructureDefinition
id: eicr-composition
---

#### Table: EICR Data Elements to eICR Composition Profile

|1. Data Element Common Name / CSTE eICR Task Force Name |2. Sub-Element Name|3. Published mappings to CDA Conformance ID|4. Target eICR Composition profile elements|5. Target FHIR Profile elements referenced by the element in column 4|6. Target FHIR Profile elements referenced by the element in column 5|7. Target Profile|
|---|---|---|---|---|---|---|
|Case Report||#N/A|[Composition](StructureDefinition-eicr-composition-definitions.html#Composition)||||
|Date of the Report||1198-5256|[Composition.date](StructureDefinition-eicr-composition-definitions.html#Composition.date)||||
|Report Submission Date/Time||#N/A||[Provenance.occured[x]]({{site.data.fhir.path}}/provenance-definitions.html#Provenance.occured[x])|||
|Sending Application||#N/A||[Provenance.agent.whoReference]({{site.data.fhir.path}}/provenance-definitions.html#Provenance.agent.whoReference)|[Device.url]({{site.data.fhir.path}}/device-definitions.html#Device.url)||
|Provider||#N/A|[Composition.author](StructureDefinition-eicr-composition-definitions.html#Composition.author)|[PractitionerRole]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole)||US-Core Profile|
|Provider ID|namespace|3284-8||[PractitionerRole.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.identifier)||US-Core Profile|
|Provider ID|id|3284-8||[PractitionerRole.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.identifier)||US-Core Profile|
|Provider Name|given|3284-25||[PractitionerRole.practitioner]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.practitioner)|[Practitioner.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitioner-definitions.html#Practitioner.name)|US-Core Profile|
|Provider Name|family|3284-25||[PractitionerRole.practitioner]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.practitioner)|[Practitioner.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitioner-definitions.html#Practitioner.name)|US-Core Profile|
|Provider Name|suffix|3284-25||[PractitionerRole.practitioner]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.practitioner)|[Practitioner.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitioner-definitions.html#Practitioner.name)|US-Core Profile|
|Provider Phone|use|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Phone|value|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Fax|use|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Fax|value|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Email|use|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Email|value|3284-24||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Facility/Office Name||3284-26||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.name](StructureDefinition-ecr-organization-definitions.html#Organization.name)|ECR Profile|
|Provider Address|streetaddress,  office or suite number (ifapplicable),|3284-27||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|ECR Profile|
|Provider Address|city|3284-27||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|ECR Profile|
|Provider Address|state|3284-27||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|ECR Profile|
|Provider Address|zip|3284-27||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|ECR Profile|
|Provider Address|country|3284-27||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|ECR Profile|
|Facility||#N/A|[Composition.encounter.location](StructureDefinition-eicr-composition-definitions.html#Composition.encounter)|[Location](StructureDefinition-eicr-location-definitions.html#Location)||eCR-Profile|
|Facility ID Number|namespace|3284-13||[Location.identifier](StructureDefinition-eicr-location-definitions.html#Location.identifier)||eCR-Profile|
|Facility ID Number|id|3284-13||[Location.identifier](StructureDefinition-eicr-location-definitions.html#Location.identifier)||eCR-Profile|
|Facility Name||3284-33||[Location.name](StructureDefinition-eicr-location-definitions.html#Location.name)||eCR-Profile|
|Facility Type|system|3284-14||[Location.type](StructureDefinition-eicr-location-definitions.html#Location.type)||eCR-Profile|
|Facility Type|code|3284-14||[Location.type](StructureDefinition-eicr-location-definitions.html#Location.type)||eCR-Profile|
|Facility Type|display|3284-14||[Location.type](StructureDefinition-eicr-location-definitions.html#Location.type)||eCR-Profile|
|Facility Phone||3284-34||[Location.telecom](StructureDefinition-eicr-location-definitions.html#Location.telecom)||eCR-Profile|
|Facility Phone||3284-34||[Location.telecom](StructureDefinition-eicr-location-definitions.html#Location.telecom)||eCR-Profile|
|Facility Fax||3284-34||[Location.telecom](StructureDefinition-eicr-location-definitions.html#Location.telecom)||eCR-Profile|
|Facility Fax||3284-34||[Location.telecom](StructureDefinition-eicr-location-definitions.html#Location.telecom)||eCR-Profile|
|Facility Address|streetaddress,  office or suite number (ifapplicable),|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Facility Address|city|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Facility Address|county|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Facility Address|state|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Facility Address|zip|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Facility Address|country|3284-32||[Location.address](StructureDefinition-eicr-location-definitions.html#Location.address)||eCR-Profile|
|Patient||#N/A|[Composition.subject](StructureDefinition-eicr-composition-definitions.html#Composition.subject)|[Patient]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient)||US-Core Profile|
|Patient ID Number|namespace|1198-5268||[Patient.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.identifier)||US-Core Profile|
|Patient ID Number|id|1198-5268||[Patient.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.identifier)||US-Core Profile|
|Patient Name|type|1198-5284||[Patient.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.name)||US-Core Profile|
|Patient Name|given|1198-5284||[Patient.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.name)||US-Core Profile|
|Patient Name|family|1198-5284||[Patient.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.name)||US-Core Profile|
|Patient  Phone|use|1198-5280||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Patient  Phone|value|1198-5280||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Patient  Email|use|1198-5280||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Patient  Email|value|1198-5280||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Street Address|use|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|streetaddress,  office or suite number (ifapplicable),|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|city|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|county|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|state|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|zip|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Street Address|country|1198-5271||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Birth Date||1198-5298||[Patient.birthDate]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.birthDate)||US-Core Profile|
|Patient Sex (admin gender)|system|1198-6394||[Patient.gender]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.gender)||US-Core Profile|
|Patient Sex (admin gender)|code|1198-6394||[Patient.gender]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.gender)||US-Core Profile|
|Patient Sex (admin gender)|display|1198-6394||[Patient.gender]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient)||US-Core Profile|
|Patient Sex (bIrth sex)|system|3250-32947||[Patient.extension(US Core BirthSex)]({{site.data.fhir.uscore}}StructureDefinition-us-core-birthsex.html)||US-Core Profile|
|Patient Sex (bIrth sex)|system-name|3250-32947||[Patient.extension(US Core BirthSex)]({{site.data.fhir.uscore}}StructureDefinition-us-core-birthsex.html)||US-Core Profile|
|Patient Sex (bIrth sex)|code|3250-32947||[Patient.extension(US Core BirthSex)]({{site.data.fhir.uscore}}StructureDefinition-us-core-birthsex.html)||US-Core Profile|
|Patient Sex (bIrth sex)|display|3250-32947||[Patient.extension(US Core BirthSex)]({{site.data.fhir.uscore}}StructureDefinition-us-core-birthsex.html)||US-Core Profile|
|Race|system|1198-5322, 1198-7263||[Patient.extension(US Core Race)]({{site.data.fhir.uscore}}StructureDefinition-us-core-race.html)||US-Core Profile|
|Race|systemName|1198-5322, 1198-7263||[Patient.extension(US Core Race)]({{site.data.fhir.uscore}}StructureDefinition-us-core-race.html)||US-Core Profile|
|Race|code|1198-5322, 1198-7263||[Patient.extension(US Core Race)]({{site.data.fhir.uscore}}StructureDefinition-us-core-race.html)||US-Core Profile|
|Race|display|1198-5322, 1198-7263||[Patient.extension(US Core Race)]({{site.data.fhir.uscore}}StructureDefinition-us-core-race.html)||US-Core Profile|
|Ethnicity|system|1198-5323, 1198-32901||[Patient.extension(US Core Ethnicity)]({{site.data.fhir.uscore}}StructureDefinition-us-core-ethnicity.html)||US-Core Profile|
|Ethnicity|systemName|1198-5323, 1198-32901||[Patient.extension(US Core Ethnicity)]({{site.data.fhir.uscore}}StructureDefinition-us-core-ethnicity.html)||US-Core Profile|
|Ethnicity|code|1198-5323, 1198-32901||[Patient.extension(US Core Ethnicity)]({{site.data.fhir.uscore}}StructureDefinition-us-core-ethnicity.html)||US-Core Profile|
|Ethnicity|display|1198-5323, 1198-32901||[Patient.extension(US Core Ethnicity)]({{site.data.fhir.uscore}}StructureDefinition-us-core-ethnicity.html)||US-Core Profile|
|Preferred Language|code|1198-5407||[Patient.communication.language]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.communication.language)||US-Core Profile|
|Preferred Language|proficiency.system|1198-5407||||US-Core Profile|
|Preferred Language|proficiency.systemNamw|1198-5407||||US-Core Profile|
|Preferred Language|proficiency.code|1198-5407||||US-Core Profile|
|Preferred Language|proficiency.display|1198-5407||||US-Core Profile|
|Preferred Language|preference|1198-5407||[Patient.communication.preferred]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.communication.preferred)||US-Core Profile|
|Death Date||3284-106||[Patient.deceasedDateTime]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.deceasedDateTime)||US-Core Profile|
|Guardian contact information||#N/A||[Patient.contact]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact)||US-Core Profile|
|Parent/Guardian Name|type|1198-5386||[Patient.contact.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.name)||US-Core Profile|
|Parent/Guardian Name|given|1198-5386||[Patient.contact.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.name)||US-Core Profile|
|Parent/Guardian Name|family|1198-5386||[Patient.contact.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.name)||US-Core Profile|
|Parent/Guardian Phone|use|1198-5382||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||US-Core Profile|
|Parent/Guardian Phone|value|1198-5382||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||US-Core Profile|
|Parent/Guardian Email|use|1198-5382||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||US-Core Profile|
|Parent/Guardian Email|value|1198-5382||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||eCR-Profile|
|The patient's occupation history|||[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Observation](StructureDefinition-eicr-occupationhistory-definitions.html#Observation)||eCR-Profile|
|Occupation|start date|1198-8559||[Observation.effectivePeriod](StructureDefinition-eicr-occupationhistory-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Occupation|end date|1198-8559||[Observation.effectivePeriod](StructureDefinition-eicr-occupationhistory-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Occupation|description|1198-8559||[Observation.valueCodeableConcept](StructureDefinition-eicr-occupationhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|The patient's pregnancy status |||[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Observation](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation)||eCR-Profile|
|Pregnant|start date|1198-9058||[Observation.effectivePeriod](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Pregnant|end date|1198-9058||[Observation.effectivePeriod](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Pregnant|not pregnancy indicator|1198-9058||||eCR-Profile|
|Pregnant|unknown indicator|1198-9058||||eCR-Profile|
|Pregnant|system|#N/A||[Observation.valueCodeableConcept](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Pregnant|code|#N/A||[Observation.valueCodeableConcept](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Pregnant|display|#N/A||[Observation.valueCodeableConcept](StructureDefinition-eicr-pregnancystatus-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History||#N/A|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Observation](StructureDefinition-eicr-travelhistory-definitions.html#Observation)||eCR-Profile|
|Travel History Dates|start|3284-295||[Observation.effectivePeriod](StructureDefinition-eicr-travelhistory-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Travel History Dates|end|3284-295||[Observation.effectivePeriod](StructureDefinition-eicr-travelhistory-definitions.html#Observation.effectivePeriod)||eCR-Profile|
|Travel History Location - Free Text||3284-269||[Observation.valueCodeableConcept](StructureDefinition-eicr-travelhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History Location - Coded|system|3284-263||[Observation.valueCodeableConcept](StructureDefinition-eicr-travelhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History Location - Coded|systemName|3284-263||[Observation.valueCodeableConcept](StructureDefinition-eicr-travelhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History Location - Coded|code|3284-263||[Observation.valueCodeableConcept](StructureDefinition-eicr-travelhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History Location - Coded|display|3284-263||[Observation.valueCodeableConcept](StructureDefinition-eicr-travelhistory-definitions.html#Observation.valueCodeableConcept)||eCR-Profile|
|Travel History Location - Address|||[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|Travel History Location - Address|streetaddress,  office or suite number (ifapplicable),|3284-264||[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|Travel History Location - Address|city|3284-264||[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|Travel History Location - Address|state|3284-264||[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|Travel History Location - Address|zip|3284-264||[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|Travel History Location - Address|country|3284-264||[Observation.extension(valueAddress)](StructureDefinition-extension-valueAddress.html)||eCR-Profile|
|History of Present Illness|||[Composition.section](StructureDefinition-eicr-composition-definitions.html#Composition.section)||||
|History of Present Illness|text|81-7851|[Composition.section.text](StructureDefinition-eicr-composition-definitions.html#Composition.section.text)||||
|History of Present Illness|system|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|History of Present Illness|code|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|History of Present Illness|display|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|Reason for Visit|||[Composition.section](StructureDefinition-eicr-composition-definitions.html#Composition.section)||||
|Reason for Visit|0|81-7839|[Composition.section.text](StructureDefinition-eicr-composition-definitions.html#Composition.section.text)||||
|Reason for Visit|system|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|Reason for Visit|code|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|Reason for Visit|display|#N/A|[Composition.section.code](StructureDefinition-eicr-composition-definitions.html#Composition.section.code)||||
|Signs and Symptom information||#N/A|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Condition](StructureDefinition-eicr-condition-definitions.html#Condition)|||
|Date of Onset|start|1198-15603||[Condition.onsetPeriod](StructureDefinition-eicr-condition-definitions.html#Condition.onsetPeriod)||eCR-Profile|
|Date of Onset|end|1198-15603||[Condition.onsetPeriod](StructureDefinition-eicr-condition-definitions.html#Condition.onsetPeriod)||eCR-Profile|
|Symptoms (list)|system|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Symptoms (list)|code|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Symptoms (list)|display|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Diagnoses|||[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Condition](StructureDefinition-eicr-condition-definitions.html#Condition)||eCR-Profile|
|Diagnosis (Trigger Code)||3284-106|[Composition.section.entry.extension](StructureDefinition-extension-trigger.html)|||
|Diagnoses|system|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Diagnoses|systemName|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Diagnoses|code|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Diagnoses|display|1198-9058||[Condition.code](StructureDefinition-eicr-condition-definitions.html#Condition.code)||eCR-Profile|
|Date of Diagnosis|start|1198-9050||[Condition.onsetPeriod](StructureDefinition-eicr-condition-definitions.html#Condition.onsetPeriod)||eCR-Profile|
|Date of Diagnosis|end|1198-9050||[Condition.onsetPeriod](StructureDefinition-eicr-condition-definitions.html#Condition.onsetPeriod)||eCR-Profile|
|Lab Order information||#N/A|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|||eCR-Profile|
|Lab Order Code (Trigger Code)||3284-325|[Composition.section.entry.extension](StructureDefinition-extension-trigger.html)|||
|Lab Order Code|system|1198-30453||[ProcedureRequest.code](StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.code)||eCR-Profile|
|Lab Order Code|code|1198-30453||[ProcedureRequest.code](StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.code)||eCR-Profile|
|Lab Order Code|display|1198-30453||[ProcedureRequest.code](StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.code)||eCR-Profile|
|Placer Order Number|namespace|1098-8584||[ProcedureRequest.identifier](StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.identifier)||eCR-Profile|
|Placer Order Number|id|1098-8584||[ProcedureRequest.identifier](StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.identifier)||eCR-Profile|
|Lab Result Information||#N/A|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Observation]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation) or [DiagnosticReport]({{site.data.fhir.uscore}}StructureDefinition-us-core-diagnosticreport-definitions.html#DiagnosticReport)|||
|Lab Order Code Results/Result Value (Trigger Code)||3284-271, 3284-273|[Composition.section.entry.extension](StructureDefinition-extension-trigger.html)|||
|Lab Order Code Results|system|1198-7133||[Observation.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.code) or [DiagnosticReport.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.code)||US-Core Profile|
|Lab Order Code Results|code|1198-7133||[Observation.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.code) or [DiagnosticReport.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.code)||US-Core Profile|
|Lab Order Code Results|display|1198-7133||[Observation.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.code) or [DiagnosticReport.code]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.code)||US-Core Profile|
|Laboratory Results|quantity-value|1198-7143||[Observation.valueQuantity]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueQuantity) or [DiagnosticReport.result]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.result)||US-Core Profile|
|Laboratory Results|quantity-unit|1198-7143||[Observation.valueQuantity]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueQuantity) or [DiagnosticReport.result]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.result)|[Observation.valueQuantity]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueQuantity)|US-Core Profile|
|Laboratory Results|code-system|1198-7143||[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept) or [DiagnosticReport.result]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.result)|[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept)|US-Core Profile|
|Laboratory Results|code-value|1198-7143||[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept) or [DiagnosticReport.result]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.result)|[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept)|US-Core Profile|
|Laboratory Results|code-display|1198-7143||[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept) or [DiagnosticReport.result]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.result)|[Observation.valueCodeableConcept]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.valueCodeableConcept)|US-Core Profile|
|Filler Order Number|namespace|1198-7127, 1198-7137||[Observation.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.identifier) or [DiagnosticReport.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.identifier)|||
|Filler Order Number|id|1198-7127, 1198-7137||[Observation.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#Observation.identifier) or [DiagnosticReport.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-observationresults-definitions.html#DiagnosticReport.identifier)|||
|Immunization Status||3284-149|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|[Immunization]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization)|||
|Immunization Status|vaccine.system|3284-149||[Immunization.vaccineCode]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.vaccineCode)||US-Core Profile|
|Immunization Status|vaccine.code|3284-149||[Immunization.vaccineCode]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.vaccineCode)||US-Core Profile|
|Immunization Status|vaccine.display|3284-149||[Immunization.vaccineCode]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.vaccineCode)||US-Core Profile|
|Immunization Status|manufacturer|3284-149||[Immunization.manufacturer]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.manufacturer)|[Organization.name](StructureDefinition-ecr-organization-definitions.html#Organization.name)|ECR Profile|
|Immunization Status|lot number|3284-149||[Immunization.lotNumber]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.lotNumber)||US-Core Profile|
|Immunization Status|date|3284-149||[Immunization.date]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.date)||US-Core Profile|
|Immunization Status|status|3284-149||[Immunization.status]({{site.data.fhir.uscore}}StructureDefinition-us-core-immunization-definitions.html#Immunization.status)||US-Core Profile|
|Medications Administered (list)||1098-7412|[Composition.section.entry](StructureDefinition-eicr-composition-definitions.html#Composition.section.entry)|MedicationAdministration or MedicationStatement or MedicationDispense||US-Core Profile|
|Medications Administered (list)|medication.system|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|US-Core Profile|
|Medications Administered (list)|medication.code|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|US-Core Profile|
|Medications Administered (list)|medication.display|1098-7412||MedicationAdministration.medicationCodeableConcept or MedicationStatement.medicationCodeableConcept or MedicationDispense.medicationCodeableConcept or MedicationAdministration.medicationReference or MedicationStatement.medicationReference or MedicationDispense.medicationReference|Medication.code|US-Core Profile|
|Medications Administered (list)|start|1098-7412||MedicationAdministration.effectivePeriod||US-Core Profile|
|Medications Administered (list)|end|1098-7412||MedicationAdministration.effectivePeriod or MedicationStatement.effectivePeriod||US-Core Profile|
|Medications Administered (list)|timing|1098-7412||MedicationAdministration.effectiveDateTime or MedicationStatement.effectiveDateTime||US-Core Profile|
|Medications Administered (list)|status|1098-7412||MedicationAdministration.status or MedicationStatement.status or MedicationDispense.status||US-Core Profile|
|Medications Administered (list)|dose.quantity|1098-7412||MedicationAdministration.dosage.dose or MedicationStatement.dosage.doseQuantity  or MedicationDispense.dosage.doseQuantity ||US-Core Profile|
|Medications Administered (list)|dose.unit|1098-7412||MedicationAdministration.dosage.dose or MedicationStatement.dosage.doseQuantity  or MedicationDispense.dosage.doseQuantity ||US-Core Profile|
|Medications Administered (list)|route.system|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||US-Core Profile|
|Medications Administered (list)|route.code|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||US-Core Profile|
|Medications Administered (list)|route.display|1098-7412||MedicationAdministration.dosage.route or MedicationStatement.dosage.route  or MedicationDispense.dosage.route||US-Core Profile|
|Trigger Code||3284-325, 3284-271, 3284-273, 3284-106|[Composition.section.entry.extension](StructureDefinition-extension-trigger.html)|||
|Lab Order Code (Trigger Code)|||||||
|Lab Order Code (Trigger Code)|||||||
|Lab Order Code (Trigger Code)|system|3284-325|||||
|Lab Order Code (Trigger Code)|code|3284-325|||||
|Lab Order Code (Trigger Code)|display|3284-325|||||
|Lab Order Code (Trigger Code)|valueset|3284-325|||||
|Lab Order Code (Trigger Code)|valueset-version|3284-325|||||
|Lab Order Code Results (Trigger Code)|||||||
|Lab Order Code Results (Trigger Code)|||||||
|Lab Order Code Results (Trigger Code)|system|3284-271|||||
|Lab Order Code Results (Trigger Code)|code|3284-271|||||
|Lab Order Code Results (Trigger Code)|display|3284-271|||||
|Lab Order Code Results (Trigger Code)|valueset|3284-271|||||
|Lab Order Code Results (Trigger Code)|valueset-version|3284-271|||||
|Laboratory Result (Trigger Code)|||||||
|Laboratory Result (Trigger Code)|||||||
|Laboratory Result (Trigger Code)|system|3284-273|||||
|Laboratory Result (Trigger Code)|code|3284-273|||||
|Laboratory Result (Trigger Code)|display|3284-273|||||
|Laboratory Result (Trigger Code)|valueset|3284-273|||||
|Laboratory Result (Trigger Code)|valueset-version|3284-273|||||
|Diagnosis (Trigger Code)|||||||
|Diagnosis (Trigger Code)|||||||
|Diagnosis (Trigger Code)|system|3284-106|||||
|Diagnosis (Trigger Code)|code|3284-106|||||
|Diagnosis (Trigger Code)|display|3284-106|||||
|Diagnosis (Trigger Code)|valueset|3284-106|||||
|Diagnosis (Trigger Code)|valueset-version|3284-106|||||
{:.grid}
