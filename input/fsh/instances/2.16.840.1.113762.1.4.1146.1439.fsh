Instance: 2.16.840.1.113762.1.4.1146.1439
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1439"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1439"
* version = "1.0.0"
* name = "RabiesSuspectedDisordersSNOMED"
* title = "Rabies [Suspected] (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Rabies [Suspected] (Disorders) (SNOMED)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#14168008
* useContext[=].valueCodeableConcept.text = "Rabies (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #722545003
* compose.include.concept[=].display = "Suspected rabies (situation)"
* compose.include.concept[+].code = #722546002
* compose.include.concept[=].display = "Probable rabies (situation)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #722545003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #722546002