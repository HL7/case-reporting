ValueSet: ValueSetERSDEndpointConnectionType
Id: valueset-ersd-endpoint-connection-type
Title: "eRSD Endpoint Connection Type Codes"
Description: "Set of endpoint connection types"
* ^meta.profile = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-expandedvalueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[=].valueMarkdown = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion."
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-08-06T00:00:00+10:00"
* ^publisher = "Association of Public Health Laboratories (APHL)"
* ^useContext.code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority "Priority"
* ^useContext.valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine "Routine"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^purpose = "Define the set of supported endpoint connection types."
* ^expansion.timestamp = "2020-10-14T17:39:10-06:00"
* ^expansion.contains[0].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #ihe-xcpd
* ^expansion.contains[=].display = "IHE XCPD"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #ihe-xca
* ^expansion.contains[=].display = "IHE XCA"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #ihe-xdr
* ^expansion.contains[=].display = "IHE XDR"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #ihe-xds
* ^expansion.contains[=].display = "IHE XDS"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #ihe-iid
* ^expansion.contains[=].display = "IHE IID"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #dicom-wado-rs
* ^expansion.contains[=].display = "DICOM WADO-RS"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #dicom-qido-rs
* ^expansion.contains[=].display = "DICOM QIDO-RS"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #dicom-stow-rs
* ^expansion.contains[=].display = "DICOM STOW-RS"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #dicom-wado-uri
* ^expansion.contains[=].display = "DICOM WADO-URI"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #hl7-fhir-rest
* ^expansion.contains[=].display = "HL7 FHIR"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #hl7-fhir-msg
* ^expansion.contains[=].display = "HL7 FHIR Messaging"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #hl7v2-mllp
* ^expansion.contains[=].display = "HL7 v2 MLLP"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #secure-email
* ^expansion.contains[=].display = "Secure email"
* ^expansion.contains[+].system = $system-endpoint-connection-type
* ^expansion.contains[=].code = #direct-project
* ^expansion.contains[=].display = "Direct Project"
* ^expansion.contains[+].system = "http://hl7.org/fhir/us/ecr/CodeSystem/codesystem-ersd-endpoint-connection-type"
* ^expansion.contains[=].code = #hl7-fhir-files
* ^expansion.contains[=].display = "HL7 FHIR Files"
* ^expansion.contains[+].system = "http://hl7.org/fhir/us/ecr/CodeSystem/codesystem-ersd-endpoint-connection-type"
* ^expansion.contains[=].code = #hl7-cql-files
* ^expansion.contains[=].display = "HL7 CQL Files"
* include codes from system EndpointConnectionType
* include codes from system CodeSystemERSDEndpointConnectionType