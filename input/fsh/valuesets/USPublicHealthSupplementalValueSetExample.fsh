ValueSet: USPublicHealthSupplementalValueSetExample
Id: valueset-us-ph-supplemental-valueset-example
Title: "US Public Health Supplemental Valueset Example"
Description: "This valueset is a simplified duplicate of the eRSD Endpoint Connection Type valueset created for the purposes of demonstraing, by example, the US Public Health Supplemental ValueSet profile."
* ^meta.profile = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-supplemental-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2020-12-02T00:00:00+10:00"
* ^publisher = "Association of Public Health Laboratories (APHL)"
* ^useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#supplemental "Supplemental"
* ^useContext[+].code = $USPublicHealthUsageContextType#priority "Priority"
* ^useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine "Routine"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^purpose = "Define the set of supported endpoint connection types."
* include codes from system EndpointConnectionType
* include codes from system Ersd_CodeSystem_Endpoint_Connection_Type