Instance: encounter-eicr-eve-everywoman-external-encounter
InstanceOf: USPublicHealthEncounter
Title: "US PH Encounter Example: encounter-eicr-eve-everywoman-external-encounter"
Description: "Example of US Public Health Encounter profile (Eve Everywoman, external encounter)"
Usage: #example
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "9937012"
* status = #finished
* class = urn:oid:2.16.840.1.114222.4.5.274#PHC2237 "External Encounter"
* type.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* type.extension.valueCode = #not-applicable
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* location.location.reference = "Location/location-ecr-salem-medical-center"
* location.location.display = "Clinic Bldg A, Salem Medical Center, 4646 Brown Rd, Salem, MA 02368"