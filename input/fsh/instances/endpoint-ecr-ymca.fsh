Instance: endpoint-ecr-ymca
InstanceOf: USPublicHealthEndpoint
Title: "Endpoint - YMCA Center"
Description: "Example of a US Public Health Endpoint for the YMCA Center to receive Reportability Response messages via HL7 FHIR REST."
Usage: #example
* status = #active
* connectionType = $system-endpoint-connection-type#hl7-fhir-rest
* payloadType.text = "Reportability Response"
* address = "http://example.org/ymca/fhir"