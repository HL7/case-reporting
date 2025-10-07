Instance: 2.16.840.1.113762.1.4.1146.528
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.528"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.528"
* version = "1.0.0"
* name = "DengueVirusInfectionOrganismorSubstanceinLabResults"
* title = "Dengue Virus Infection (Organism or Substance in Lab Results)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Dengue Virus Infection (Organism or Substance in Lab Results)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#38362002
* useContext[=].valueCodeableConcept.text = "Dengue (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #121020003
* compose.include.concept[=].display = "Antigen of Dengue virus (substance)"
* compose.include.concept[+].code = #121182007
* compose.include.concept[=].display = "Deoxyribonucleic acid of Dengue virus (substance)"
* compose.include.concept[+].code = #121192004
* compose.include.concept[=].display = "Dengue virus types 1-4 ribonucleic acid (substance)"
* compose.include.concept[+].code = #243604005
* compose.include.concept[=].display = "Dengue virus subgroup (organism)"
* compose.include.concept[+].code = #34348001
* compose.include.concept[=].display = "Dengue virus (organism)"
* compose.include.concept[+].code = #36700002
* compose.include.concept[=].display = "Dengue virus, type 4 (organism)"
* compose.include.concept[+].code = #41328007
* compose.include.concept[=].display = "Dengue virus, type 2 (organism)"
* compose.include.concept[+].code = #60588009
* compose.include.concept[=].display = "Dengue virus, type 1 (organism)"
* compose.include.concept[+].code = #707875002
* compose.include.concept[=].display = "Ribonucleic acid of Dengue virus 1 (substance)"
* compose.include.concept[+].code = #707876001
* compose.include.concept[=].display = "Ribonucleic acid of Dengue virus 2 (substance)"
* compose.include.concept[+].code = #707877005
* compose.include.concept[=].display = "Ribonucleic acid of Dengue virus 3 (substance)"
* compose.include.concept[+].code = #707878000
* compose.include.concept[=].display = "Ribonucleic acid of Dengue virus 4 (substance)"
* compose.include.concept[+].code = #783725005
* compose.include.concept[=].display = "Ribonucleic acid of Dengue virus (substance)"
* compose.include.concept[+].code = #8467002
* compose.include.concept[=].display = "Dengue virus, type 3 (organism)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121020003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121182007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #121192004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #243604005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #34348001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #36700002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #41328007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #60588009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707875002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707876001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707877005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707878000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #783725005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #8467002