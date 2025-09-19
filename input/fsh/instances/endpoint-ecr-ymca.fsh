Instance: endpoint-ecr-ymca
InstanceOf: USPublicHealthEndpoint
Title: "Endpoint Example: endpoint-ecr-ymca"
Description: "Example of Endpoint resource (YMCA endpoint)"
Usage: #example
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* payloadType.text = "Reportability Response"
* address = "http://example.org/ymca/fhir"