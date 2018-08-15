---
# jekyll header
title: Mappings the Reportability Response Data Elements to the FHIR Reportability Response Communication Profile
layout: fhir-artifact
template: mappings
level: 2
active: profiles
type: StructureDefinition
id: rr-communication
---

#### Table: Reportability Response Data Elements to Reportability Response Communication Profile
<!--
|1. Reportability Response Data Element|2. Published mappings to CDA Conformance ID|3. Reportability Response Communication Profile elements|4. Target FHIR Profile elements referenced by the element in column 3|5. Target FHIR Profile elements referenced by the element in column 4|6. Target Profile|
|---|---|---|---|---|---|---|
|Reportability Response||[Communication](StructureDefinition-rr-communication-definitions.html#Communication)|||eCR Profile|
|Reportability Response Unique Identifier||[Communication.identifier](StructureDefinition-rr-communication-definitions.html#Communication.identifier)|||ECR Profil|
|Reportable Condition||[Communication.reasonCode](StructureDefinition-rr-communication-definitions.html#Communication.reasonCode)|||ECR Profil|
|Date and time of eICR Receipt||[Communication.received](StructureDefinition-rr-communication-definitions.html#Communication.received)|||US-Core Profile|
|eICR Encompassing Encounter ID||[Communication.context](StructureDefinition-rr-communication-definitions.html#Communication.context)|[Encounter.identifier](StructureDefinition-eicr-encounter.html#Encounter.identifier)||US-Core Profile|
|Patient||[Communication.subject](StructureDefinition-rr-communication-definitions.html#Communication.subject)|[Patient]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient)||US-Core Profile|
|Patient ID Number|||[Patient.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.identifier)||US-Core Profile|
|Patient Name|||[Patient.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.name)||US-Core Profile|
|Patient Administrative Gender|||[Patient.gender]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.gender)||US-Core Profile|
|Patient Birth Date|||[Patient.birthDate]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.birthDate)||US-Core Profile|
|Patient Street Address|||[Patient.address]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.address)||US-Core Profile|
|Patient Email|||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Patient Phone|||[Patient.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.telecom)||US-Core Profile|
|Patient Preferred Language|||[Patient.communication.language]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.communication.language)||US-Core Profile|
|Patient Race|||[Patient.extension(US Core Race)]({{site.data.fhir.uscore}}StructureDefinition-us-core-race.html)||US-Core Profile|
|Patient Ethnicity|||[Patient.extension(US Core Ethnicity)]({{site.data.fhir.uscore}}StructureDefinition-us-core-ethnicity.html)||US-Core Profile|
|Parent/ Guardian Email|||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||US-Core Profile|
|Parent/ Guardian Name|||[Patient.contact.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.name)||US-Core Profile|
|Parent/ Guardian Phone|||[Patient.contact.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-patient-definitions.html#Patient.contact.telecom)||US-Core Profile|
|Provider (Source)||[Communication.sender](StructureDefinition-rr-communication-definitions.html#Communication.sender)|[PractitionerRole]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole)||US-Core Profile|
|Provider Address|||[PractitionerRole.organization]({{site.data.fhir}}StructureDefinition-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.address](StructureDefinition-ecr-organization-definitions.html#Organization.address)|eCR Profile|
|Provider Email|||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Fax|||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider ID|||[PractitionerRole.identifier]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.identifier)||US-Core Profile|
|Provider Name|||[PractitionerRole.practitioner]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.practitioner)|[Practitioner.name]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitioner-definitions.html#Practitioner.name)|US-Core Profile|
|Provider Phone|||[PractitionerRole.telecom]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.telecom)||US-Core Profile|
|Provider Facility/Office Name|||[PractitionerRole.organization]({{site.data.fhir.uscore}}StructureDefinition-us-core-practitionerrole-definitions.html#PractitionerRole.organization)|[Organization.name]StructureDefinition-ecr-organization-definitions.html#Organization.name)|eCR Profile|
|facility (source)||[Communication.sender](StructureDefinition-rr-communication-definitions.html#Communication.sender)|[Organization]StructureDefinition-ecr-organization#Organization)||eCR Profile|
|Facility Address|||[Organization.address]StructureDefinition-ecr-organization#Organization.address)||eCR Profile|
|Facility Fax|||[Organization.telecom]StructureDefinition-ecr-organization#Organization.telecom)||eCR Profile|
|Facility ID Number|||[Organization.identifier]StructureDefinition-ecr-organization#Organization.identifier)||eCR Profile|
|Facility Name|||[Organization.name]StructureDefinition-ecr-organization#Organization.name)||eCR Profile|
|Facility Phone|||[Organization.telecom]StructureDefinition-ecr-organization#Organization.telecom)||eCR Profile|
|Facility Type|||[Organization.type]StructureDefinition-ecr-organization#Organization.type)||eCR Profile|
|Responsible Agency (target)||[Communication.recipient](StructureDefinition-rr-communication-definitions.html#Communication.recipient)|[Organization]StructureDefinition-ecr-organization#Organization)||eCR Profile|
|Primary Responsible Agency (deprecated)|||||US-Core Profile|
|Location Relevance||[Communication.extension](StructureDefinition-extension-location-relevance.html)|||eCR Profile|
|Responsible Agency Address Information|||[Organization.address]StructureDefinition-ecr-organization#Organization.address)||eCR Profile|
|Responsible Agency Identifier|||[Organization.identifier]StructureDefinition-ecr-organization#Organization.identifier)||eCR Profile|
|Responsible Agency Contact Information|||[Organization.contact]StructureDefinition-ecr-organization#Organization.contact)||eCR Profile|
|Responsible Agency Description|||[Organization.type]StructureDefinition-ecr-organization#Organization.type)||eCR Profile|
|Responsible Agency Name|||[Organization.name]StructureDefinition-ecr-organization#Organization.name)||eCR Profile|
|routingEntity||[Communication.recipient](StructureDefinition-rr-communication-definitions.html#Communication.recipient)|[Organization]StructureDefinition-ecr-organization#Organization)||eCR Profile|
|Routing Entity Address Information|||[Organization.address]StructureDefinition-ecr-organization#Organization.address)||eCR Profile|
|Routing Entity Identifier|||[Organization.identifier]StructureDefinition-ecr-organization#Organization.identifier)||eCR Profile|
|Routing Entity Contact Information|||[Organization.contact]StructureDefinition-ecr-organization#Organization.contact)||eCR Profile|
|Routing Entity Description|||[Organization.type]StructureDefinition-ecr-organization#Organization.type)||eCR Profile|
|Routing Entity Name|||[Organization.name]StructureDefinition-ecr-organization#Organization.name)||eCR Profile|
|Reportability Response Priority||[Communication.category](StructureDefinition-rr-communication-definitions.html#Communication.category)|||eCR Profile|
|Reportability Response Subject||[Communication.topic.extension](StructureDefinition-extension-topic-subject.html)|||eCR Profile|
|Reportability Response Summary||[Communication.topic.extension](StructureDefinition-extension-topic-summary.html)|||eCR Profile|
|Determination of Reportability||[Communication.topic.extension](StructureDefinition-extension-topic-dor.html)|||eCR Profile|
|Determination of Reportability Reason||[Communication.topic.extension](StructureDefinition-extension-topic-dor-reason.html)|||eCR Profile|
|Determination of Reportability Rule||[Communication.topic.extension](StructureDefinition-extension-topic-dor-rule.html)|||US-Core Profile|
|eICR||[Communication.payload](StructureDefinition-rr-communication-definitions.html#Communication.payload)|||US-Core Profile|
|Reference to eICR CDA Document||[Communication.payload.contentReference](StructureDefinition-rr-communication-definitions.html#Communication.payload.contentReference)|||eCR Profile|
|eICR CDA Document ID||[Communication.payload.contentReference](StructureDefinition-rr-communication-definitions.html#Communication.payload.contentReference)|||eCR Profile|
|Filename of eICR||[Communication.payload.contentString](StructureDefinition-rr-communication-definitions.html#Communication.payload.contentReference.display)|||eCR Profile|
|Manually Initiated eICR||[Communication.payload.extension](StructureDefinition-extension-manual-init.html)|||eCR Profile|
|Initial Case Report Manual Initiation Reason||[Communication.payload.extension](StructureDefinition-extension-manual-init-reason.html)|||eCR Profile|
|Definition||[Communication.definition](StructureDefinition-rr-communication-definitions.html#Communication.definition)|[PlanDefinition](StructureDefinition-rr-plandefinition-definitions.html#PlanDefinition)||eCR Profile|
|External Resource Category|||[PlanDefinition.relatedArtifact.extension](StructureDefinition-extension-rel-artifact-category.html)||eCR Profile|
|External Resource Priority|||[PlanDefinition.relatedArtifact.extension](StructureDefinition-extension-rel-artifact-priority.html)||eCR Profile|
|External Resource Description|||[PlanDefinition.relatedArtifact](StructureDefinition-rr-plandefinition-definitions.html#PlanDefinition.relatedArtifact)|[RelatedArtifact.display]({{site.data.fhir.path}}metadatatypes-definitions.html#RelatedArtifact.type)|eCR Profile|
|External Resource Link||||[RelatedArtifact.url]({{site.data.fhir.path}}metadatatypes-definitions.html#RelatedArtifact.url)|US-Core Profile|
|Reporting Timeframe|||[PlanDefinition.action.timing](StructureDefinition-rr-plandefinition-definitions.html#PlanDefinition.action.timingTiming)||US-Core Profile|
|Authoring Agency|||[PlanDefinition.publisher.extension](StructureDefinition-extension-publisher-reference.html)|[Organization]StructureDefinition-ecr-organization)|eCR Profile|
|Authoring Agency Name||||[Organization.name]StructureDefinition-ecr-organization)|eCR Profile|
|Authoring Agency Identifier||||[Organization.identifier]StructureDefinition-ecr-organization)|eCR Profile|
|Authoring Agency Description||||[Organization.type]StructureDefinition-ecr-organization)|eCR Profile|
|Authoring Agency Contact Information||||[Organization.contact]StructureDefinition-ecr-organization)|eCR Profile|
|Authoring Agency Address Information||||[Organization.address]StructureDefinition-ecr-organization)|eCR Profile|
{:.grid}
!-->