Instance: bundle-rr-document-one-cond-one-pha
InstanceOf: RRDocumentBundle
Title: "RR Document Bundle Example: One Condition, One PHA"
Description: "Example RR Document Bundle: One Condition, One PHA"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2be4b4e4-6df1-4cb2-a947-c70fa0eda34d"
* type = #document
* timestamp = "2021-08-02T22:13:23Z"
* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-rr-one-cond-one-pha"
* entry[=].resource = composition-rr-one-cond-one-pha
* entry[+].fullUrl = "http://example.org/fhir/Bundle/bundle-eicr-document-zika"
* entry[=].resource = bundle-eicr-document-zika
* entry[+].fullUrl = "http://example.org/fhir/Observation/observation-rr-relevant-reportable-condition-observation"
* entry[=].resource = observation-rr-relevant-reportable-condition-observation
* entry[+].fullUrl = "http://example.org/fhir/Encounter/encounter-eicr-eve-everywoman-outpatient"
* entry[=].resource = encounter-eicr-eve-everywoman-outpatient
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-ecr-health-authority-west"
* entry[=].resource = organization-ecr-health-authority-west
* entry[+].fullUrl = "http://example.org/fhir/Observation/observation-rr-summary"
* entry[=].resource = observation-rr-summary
* entry[+].fullUrl = "http://example.org/fhir/DocumentReference/documentreference-eicr-example"
* entry[=].resource = documentreference-eicr-example
* entry[+].fullUrl = "http://example.org/fhir/Patient/patient-ecr-eve-everywoman"
* entry[=].resource = patient-ecr-eve-everywoman
* entry[+].fullUrl = "http://example.org/fhir/Observation/observation-rr-reportability-information-observation"
* entry[=].resource = observation-rr-reportability-information-observation
* entry[+].fullUrl = "http://example.org/fhir/PractitionerRole/practitionerrole-henry-seven"
* entry[=].resource = practitionerrole-henry-seven
* entry[+].fullUrl = "http://example.org/fhir/Condition/condition-eicr-eve-everywoman-common-cold"
* entry[=].resource = condition-eicr-eve-everywoman-common-cold
* entry[+].fullUrl = "http://example.org/fhir/Location/location-ecr-salem-medical-center"
* entry[=].resource = location-ecr-salem-medical-center
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-ecr-salem-medical-center"
* entry[=].resource = organization-ecr-salem-medical-center
* entry[+].fullUrl = "http://example.org/fhir/Condition/condition-eicr-eve-everywoman-zika"
* entry[=].resource = condition-eicr-eve-everywoman-zika
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-rr-routing-entity-haw"
* entry[=].resource = organization-rr-routing-entity-haw
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-rr-rules-authoring-agency-haw"
* entry[=].resource = organization-rr-rules-authoring-agency-haw
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-rr-responsible-agency-haw"
* entry[=].resource = organization-rr-responsible-agency-haw
* entry[+].fullUrl = "http://example.org/fhir/Practitioner/practitioner-us-core-henry-seven"
* entry[=].resource = practitioner-us-core-henry-seven
* entry[+].fullUrl = "http://example.org/fhir/Observation/observation-rr-eicr-processing-status"
* entry[=].resource = observation-rr-eicr-processing-status
* entry[+].fullUrl = "http://example.org/fhir/Observation/observation-rr-eicr-processing-status-reason"
* entry[=].resource = observation-rr-eicr-processing-status-reason
* entry[+].fullUrl = "http://example.org/fhir/DocumentReference/documentreference-add-reporting-needs-pdf"
* entry[=].resource = documentreference-add-reporting-needs-pdf
* entry[+].fullUrl = "http://example.org/fhir/DocumentReference/documentreference-zika-follow-up-pdf"
* entry[=].resource = documentreference-zika-follow-up-pdf
* entry[+].fullUrl = "http://example.org/fhir/DocumentReference/documentreference-zika-info-pdf"
* entry[=].resource = documentreference-zika-info-pdf