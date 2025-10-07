Instance: 2.16.840.1.113762.1.4.1146.1506
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1506"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1506"
* version = "1.0.0"
* name = "AcanthamoebaDiseaseKeratitisDisordersICD10CM"
* title = "Acanthamoeba Disease [Keratitis] (Disorders) (ICD10CM)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Acanthamoeba Disease [Keratitis] (Disorders) (ICD10CM)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#49649001
* useContext[=].valueCodeableConcept.text = "Infection caused by Acanthamoeba (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include.version = "Provisional_2022-01-12"
* compose.include.concept[0].code = #B60.12
* compose.include.concept[=].display = "Conjunctivitis due to Acanthamoeba"
* compose.include.concept[+].code = #B60.13
* compose.include.concept[=].display = "Keratoconjunctivitis due to Acanthamoeba"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #B60.12
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #B60.13