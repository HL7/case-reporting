Instance: Inline-Instance-for-bundle-ersd-specification-example-2
InstanceOf: USPublicHealthTriggeringValueSetLibrary
Usage: #inline
* id = "library-rctc-example"
* meta.versionId = "2"
* meta.lastUpdated = "2021-08-20T01:12:21.049-06:00"
* meta.source = "#zJ5jHSo1bnD4qTAW"
* url = "http://hl7.org/fhir/us/ecr/Library/library-rctc-example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.114222.4.11.7508"
* version = "2019-06-17"
* name = "Reportable_Condition_Trigger_Codes"
* title = "Reportable Condition Trigger Codes (RCTC) Example Library"
* status = #active
* experimental = true
* type = $library-type#asset-collection
* publisher = "{site.data.fhir.ig.publisher}"
* description = "This release includes code updates for the existing conditions and adds codes for Parkinson’s disease and 13 enteric conditions. Medication codes have also been added to this version."
* useContext[0].code = $USPublicHealthUsageContextType#reporting "Reporting"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering "Triggering"
* useContext[+].code = $USPublicHealthUsageContextType#specification-type "Specification Type"
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#value-set-library "ValueSet Library"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* purpose = "Triggers for initiating decision support for electronic case reports"
* effectivePeriod.start = "2019-11-01"
* relatedArtifact[0].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-lrtc-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example"
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-sdtc-example"