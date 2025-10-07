Instance: 2.16.840.1.113762.1.4.1146.1601
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1601"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1601"
* version = "1.0.0"
* name = "HIVInfectionARVBoostersCYP3A4InhibitorRXNORM"
* title = "HIV Infection (ARV Boosters [CYP3A4 Inhibitor]) (RXNORM)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "HIV Infection (ARV Boosters [CYP3A4 Inhibitor]) (RXNORM)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#76981000119106
* useContext[=].valueCodeableConcept.text = "Human immunodeficiency virus (HIV) infection category B1 (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include.version = "2022-01"
* compose.include.concept[0].code = #1551993
* compose.include.concept[=].display = "cobicistat 150 MG Oral Tablet"
* compose.include.concept[+].code = #1551999
* compose.include.concept[=].display = "cobicistat 150 MG Oral Tablet [Tybost]"
* compose.include.concept[+].code = #152970
* compose.include.concept[=].display = "ritonavir 100 MG Oral Capsule [Norvir]"
* compose.include.concept[+].code = #152971
* compose.include.concept[=].display = "ritonavir 80 MG/ML Oral Solution [Norvir]"
* compose.include.concept[+].code = #1926066
* compose.include.concept[=].display = "ritonavir 100 MG Oral Powder"
* compose.include.concept[+].code = #1926069
* compose.include.concept[=].display = "ritonavir 100 MG Oral Powder [Norvir]"
* compose.include.concept[+].code = #199249
* compose.include.concept[=].display = "ritonavir 80 MG/ML Oral Solution"
* compose.include.concept[+].code = #317150
* compose.include.concept[=].display = "ritonavir 100 MG Oral Capsule"
* compose.include.concept[+].code = #900575
* compose.include.concept[=].display = "ritonavir 100 MG Oral Tablet"
* compose.include.concept[+].code = #900577
* compose.include.concept[=].display = "ritonavir 100 MG Oral Tablet [Norvir]"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #1551993
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #1551999
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #152970
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #152971
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #1926066
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #1926069
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #199249
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #317150
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #900575
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].version = "2022-01"
* expansion.contains[=].code = #900577