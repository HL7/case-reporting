Instance: observation-vaccine-credential-assertion-eve-everywoman
InstanceOf: EICRVaccineCredentialPatientAssertion
Title: "eICR Vaccine Credential Patient Assertion Observation Example: Eve Everywoman"
Description: "Example of eICR Vaccine Credential Patient Assertion Observation"
Usage: #example
* status = #final
* code = $loinc#11370-4 "Immunization status - Reported"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-10T22:33:22Z"
* valueCodeableConcept = $v2-0532#Y "Yes"