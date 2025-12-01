Instance: capabilitystatement-ersd-client
InstanceOf: CapabilityStatement
Title: "eRSD Client CapabilityStatement"
Description: """This section describes the expected capabilities of a client consuming eRSD resources including the Reportable Conditions Trigger Codes (RCTC).

#### Conformance requirements for an eRSD Client

The eRSD Client **SHALL**:

- Support fetching the eRSD Bundle using the supported RESTful interactions.
- Support processing PlanDefinition and ValueSet resources that are included in the Bundle.

The eRSD Client **MAY**:

- Support fetching and reading a Person resource.
- Support fetching and reading Subscription resources associated with a Person."""
Usage: #definition
* url = "http://hl7.org/fhir/us/ecr/CapabilityStatement/capabilitystatement-ersd-client"
* insert rsVersion
* name = "CapabilityStatement_eRSD_Client"
* title = "Capability Statement eRSD Client"
* status = #active
* experimental = false
// * date = "2025-12-01"
* publisher = "HL7 Public Health Work Group"
* description = "This section describes the expected capabilities of a client consuming eRSD resources including the Reportable Conditions Trigger Codes (RCTC).\n\n#### Conformance requirements for an eRSD Client\n\nThe eRSD Client **SHALL**:\n\n- Support fetching the eRSD Bundle using the supported RESTful interactions.\n- Support processing PlanDefinition and ValueSet resources that are included in the Bundle.\n\nThe eRSD Client **MAY**:\n\n- Support fetching and reading a Person resource.\n- Support fetching and reading Subscription resources associated with a Person."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/xml
* format[+] = #application/json
* rest.mode = #client
* rest.resource[0].type = #Bundle
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-document-bundle"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-reporting-bundle"
* rest.resource[=].documentation = "The Bundle represents the artifacts that are to be distributed to subscribers. The Bundle contains the information necessary for implementers to update their systems. The Bundle typically includes PlanDefinition and ValueSet resources. The Bundle may also contain a message from the administrator that indicates the severity of the update."
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #ValueSet
* rest.resource[=].profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-valueset"
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #PlanDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/ersd-plandefinition"
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #Person
* rest.resource[=].documentation = "The Person resource is used by the eRSD server to associate one or more Subscriptions to an individual. The Person contains references to the Subscriptions associated with the Person."
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #Subscription
* rest.resource[=].documentation = "A Subscription is used to notify a Person using the specified channel (email, rest-hook or email-based SMS) that a Bundle has been updated on the FHIR Server."
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #Library
* rest.resource[=].profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-valueset-library"
* rest.resource[=].interaction.code = #read