Instance: observation-disability-status-eve-everywoman
InstanceOf: USPublicHealthDisabilityStatus
Title: "Disability Status Example: Eve Everywoman"
Description: "Example of Disability Status Profile (Eve Everywoman)"
Usage: #example
* status = #final
* category[us-core] = http://hl7.org/fhir/us/core/CodeSystem/us-core-category#disability-status "Disability Status"
* category[us-core].text = "Disability Status"
* code = $loinc#69856-3 "Are you deaf, or do you have serious difficulty hearing"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2020-11-10T22:33:22Z"
* performer.reference = "PractitionerRole/practitionerrole-henry-seven"
* valueCodeableConcept = $v2-0532#Y "Yes"