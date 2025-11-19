Instance: observation-country-of-nationality-eve-everywoman
InstanceOf: USPublicHealthCountryOfNationality
Title: "Country of Nationality Observation Example: Eve Everywoman"
Description: "Example of Country of Nationality Observation"
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = $sct#186034007 "Ethnicity / related nationality data (observable entity)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-10T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"