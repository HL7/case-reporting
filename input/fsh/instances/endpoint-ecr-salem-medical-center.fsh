Instance: endpoint-ecr-salem-medical-center
InstanceOf: USPublicHealthEndpoint
Title: "Endpoint - Salem Medical Center"
Description: "Example of a US Public Health Endpoint for Salem Medical Center to receive Reportability Response messages via HL7 FHIR REST."
Usage: #example
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* payloadType.text = "Reportability Response"
* address = "http://example.org/salem-medical-center/fhir"