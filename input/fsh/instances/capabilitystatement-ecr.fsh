Instance: capabilitystatement-ecr
InstanceOf: CapabilityStatement
Title: "eCR CapabilityStatement"
Description: "This resource defines the expected capabilities for both client and server participating in eCR exchange"
Usage: #definition
* url = "http://hl7.org/fhir/us/ecr/CapabilityStatement/capabilitystatement-ecr"
* version = "1.0.0"
* name = "CapabilityStatement_eCR"
* title = "Capability Statement eCR"
* status = #active
* experimental = false
* date = "2019-06-25"
* publisher = "HL7 Public Health Work Group"
* description = "This resource defines the expected capabilities for both client and server participating in eCR exchange."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/xml
* format[+] = #application/json
* implementationGuide = "http://hl7.org/fhir/us/ecr/ImplementationGuide/hl7-fhir-us-ecr"
* rest[0].mode = #server
* rest[=].documentation = "This section describes the expected capabilities for the server participating in eCR exchange."
* rest[=].resource[0].type = #Composition
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-composition"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-composition"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Composition instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Composition instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Composition instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Composition instances"
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-responsible-agency-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-rules-authoring-agency-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-routing-entity-organization"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Organization instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Organization instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Organization instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Organization instances"
* rest[=].resource[+].type = #Encounter
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-encounter"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Encounter instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Encounter instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Encounter instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Encounter instances"
* rest[=].resource[+].type = #Location
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-location"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Location instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Location instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Location instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Location instances"
* rest[=].resource[+].type = #Observation
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-travel-history"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-eicr-processing-status-reason-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-eicr-processing-status-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-pregnancy-outcome-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-pregnancy-status-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-postpartum-status"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-relevant-reportable-condition-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-summary"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-reportability-information-observation"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Observation instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Observation instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Observation instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Observation instances"
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-patient"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Patient instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Patient instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Patient instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Patient instances"
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-practitionerrole"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of PractitionerRole instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific PractitionerRole instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of PractitionerRole instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of PractitionerRole instances"
* rest[=].resource[+].type = #ServiceRequest
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-servicerequest"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of ServiceRequest instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific ServiceRequest instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of ServiceRequest instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of ServiceRequest instances"
* rest[=].resource[+].type = #Bundle
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-document-bundle"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-reporting-bundle"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Bundle instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Bundle instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Bundle instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Bundle instances"
* rest[=].resource[+].type = #MessageHeader
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/ecr-messageheader"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of MessageHeader instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific MessageHeader instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of MessageHeader instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of MessageHeader instances"
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Practitioner instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Practitioner instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Practitioner instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Practitioner instances"
* rest[+].mode = #client
* rest[=].documentation = "This section describes the expected capabilities for the client participating in eCR exchange."
* rest[=].resource[0].type = #Composition
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-composition"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-composition"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Composition instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Composition instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Composition instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Composition instances"
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-responsible-agency-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-rules-authoring-agency-organization"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-routing-entity-organization"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Organization instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Organization instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Organization instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Organization instances"
* rest[=].resource[+].type = #Encounter
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-encounter"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Encounter instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Encounter instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Encounter instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Encounter instances"
* rest[=].resource[+].type = #Location
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-location"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Location instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Location instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Location instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Location instances"
* rest[=].resource[+].type = #Observation
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-travel-history"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-eicr-processing-status-reason-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-eicr-processing-status-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-pregnancy-outcome-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-pregnancy-status-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-postpartum-status"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-relevant-reportable-condition-observation"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-summary"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-reportability-information-observation"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Observation instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Observation instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Observation instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Observation instances"
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-patient"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Patient instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Patient instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Patient instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Patient instances"
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-practitionerrole"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of PractitionerRole instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific PractitionerRole instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of PractitionerRole instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of PractitionerRole instances"
* rest[=].resource[+].type = #ServiceRequest
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-servicerequest"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of ServiceRequest instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific ServiceRequest instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of ServiceRequest instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of ServiceRequest instances"
* rest[=].resource[+].type = #Bundle
* rest[=].resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-document-bundle"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-document-bundle"
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-reporting-bundle"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Bundle instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Bundle instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Bundle instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Bundle instances"
* rest[=].resource[+].type = #MessageHeader
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/ecr-messageheader"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of MessageHeader instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific MessageHeader instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of MessageHeader instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of MessageHeader instances"
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[=].documentation = "Allows creation of Practitioner instances"
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].documentation = "Allows retrieval of a specific Practitioner instance"
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[=].documentation = "Allows update of Practitioner instances"
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[=].interaction[=].documentation = "Allows deletion of Practitioner instances"