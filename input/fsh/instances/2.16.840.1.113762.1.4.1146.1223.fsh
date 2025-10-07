Instance: 2.16.840.1.113762.1.4.1146.1223
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1223"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1223"
* version = "1.0.0"
* name = "COVID_19TestsforSARS_CoV_2byCultureandIdentificationMethod"
* title = "COVID_19 (Tests for SARS_CoV_2 by Culture and Identification Method)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "COVID_19 (Tests for SARS_CoV_2 by Culture and Identification Method)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#840539006
* useContext[=].valueCodeableConcept.text = "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #94763-0
* compose.include.concept[=].display = "SARS-CoV-2 (COVID-19) [Presence] in Specimen by Organism specific culture"
* compose.include.concept[+].code = #94764-8
* compose.include.concept[=].display = "SARS-CoV-2 (COVID-19) whole genome [Nucleotide sequence] in Isolate or Specimen by Sequencing"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #94763-0
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #94764-8