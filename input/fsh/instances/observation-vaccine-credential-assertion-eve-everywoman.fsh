Instance: observation-vaccine-credential-assertion-eve-everywoman
InstanceOf: EICRVaccineCredentialPatientAssertion
Title: "Observation - Vaccine Credential Patient Assertion for Eve Everywoman"
Description: "Example of an eICR Vaccine Credential Patient Assertion observation indicating immunization status reported for patient Eve Everywoman."
Usage: #example
* status = #final
* code = $loinc#11370-4 "Immunization status - Reported"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-10T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = $v2-0532#Y "Yes"