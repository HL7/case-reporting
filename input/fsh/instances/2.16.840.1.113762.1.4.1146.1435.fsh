Instance: 2.16.840.1.113762.1.4.1146.1435
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1435"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1435"
* version = "1.0.0"
* name = "DiphtheriaSuspectedDisordersSNOMED"
* title = "Diphtheria [Suspected] (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Diphtheria [Suspected] (Disorders) (SNOMED)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#276197005
* useContext[=].valueCodeableConcept.text = "Infection caused by Corynebacterium diphtheriae (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept.code = #772150003
* compose.include.concept.display = "Diphtheria suspected (situation)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains.system = "http://snomed.info/sct"
* expansion.contains.version = "Provisional_2022-01-10"
* expansion.contains.code = #772150003