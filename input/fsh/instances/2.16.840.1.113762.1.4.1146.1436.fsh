Instance: 2.16.840.1.113762.1.4.1146.1436
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1436"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1436"
* version = "1.0.0"
* name = "MeaslesSuspectedDisordersSNOMED"
* title = "Measles [Suspected] (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Measles [Suspected] (Disorders) (SNOMED)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#14189004
* useContext[=].valueCodeableConcept.text = "Measles (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept.code = #772152006
* compose.include.concept.display = "Measles suspected (situation)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains.system = "http://snomed.info/sct"
* expansion.contains.version = "Provisional_2022-01-10"
* expansion.contains.code = #772152006