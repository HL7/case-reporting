Instance: practitionerrole-henry-seven
InstanceOf: USPublicHealthPractitionerRole
Title: "US PH PractitionerRole Example: Henry Seven"
Description: "Example of US Public Health PractitionerRole profile (Henry Seven)"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339108"
* practitioner.reference = "Practitioner/practitioner-us-core-henry-seven"
* practitioner.display = "Henry Seven, MD"
* organization.reference = "Organization/organization-ecr-salem-medical-center"
* organization.display = "Salem Medical Center"
* code = $provider-taxonomy#261QP2300X "Primary Care Clinic/Center"
* specialty = $sct#419772000 "Family practice"
* location.reference = "Location/location-ecr-salem-medical-center"
* location.display = "Salem Medical Center"
* telecom.system = #email
* telecom.value = "henry.seven@example.com"