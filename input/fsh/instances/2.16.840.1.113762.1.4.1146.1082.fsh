Instance: 2.16.840.1.113762.1.4.1146.1082
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1082"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1082"
* version = "1.0.0"
* name = "AnthraxVaccineRXNORM"
* title = "Anthrax Vaccine (RXNORM)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Anthrax Vaccine (RXNORM)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#409498004
* useContext[=].valueCodeableConcept.text = "Anthrax (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include.version = "2022-01"
* compose.include.concept[0].code = #832679
* compose.include.concept[=].display = "Bacillus anthracis strain V770-NP1-R antigens 0.1 MG/ML Injectable Suspension"
* compose.include.concept[+].code = #832682
* compose.include.concept[=].display = "Bacillus anthracis strain V770-NP1-R antigens 0.1 MG/ML Injectable Suspension [Biothrax]"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #832679
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #832682