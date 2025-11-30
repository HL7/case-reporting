Instance: observation-country-of-residence-eve-everywoman
InstanceOf: EICRCountryOfResidenceObservation
Title: "Country of Residence Observation Example: Eve Everywoman"
Description: "Example of Country of Residence Observation"
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = $loinc#77983-5 "Country of usual residence"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-10T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland"