Instance: 2.16.840.1.113762.1.4.1146.1603
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1603"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1603"
* version = "1.0.0"
* name = "HIVInfectionARVAttachmentInhibitorsRXNORM"
* title = "HIV Infection (ARV Attachment Inhibitors) (RXNORM)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "HIV Infection (ARV Attachment Inhibitors) (RXNORM)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#76981000119106
* useContext[=].valueCodeableConcept.text = "Human immunodeficiency virus (HIV) infection category B1 (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include.version = "2022-01"
* compose.include.concept[0].code = #2380549
* compose.include.concept[=].display = "12 HR fostemsavir 600 MG Extended Release Oral Tablet"
* compose.include.concept[+].code = #2380551
* compose.include.concept[=].display = "12 HR fostemsavir 600 MG Extended Release Oral Tablet [Rukobia]"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #2380549
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #2380551