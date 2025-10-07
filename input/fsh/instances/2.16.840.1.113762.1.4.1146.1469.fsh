Instance: 2.16.840.1.113762.1.4.1146.1469
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1469"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1469"
* version = "1.0.0"
* name = "EnterococcusfaeciumorEfaecalisOrganismorSubstanceinLabResults"
* title = "Enterococcus faecium or E. faecalis (Organism or Substance in Lab Results)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Enterococcus faecium or E. faecalis (Organism or Substance in Lab Results)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#406575008
* useContext[=].valueCodeableConcept.text = "Infection caused by vancomycin resistant enterococcus (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #416397000
* compose.include.concept[=].display = "Enterococcus faecalis variant (organism)"
* compose.include.concept[+].code = #708244002
* compose.include.concept[=].display = "Deoxyribonucleic acid of Enterococcus faecalis (substance)"
* compose.include.concept[+].code = #708245001
* compose.include.concept[=].display = "Deoxyribonucleic acid of Enterococcus faecium (substance)"
* compose.include.concept[+].code = #712664000
* compose.include.concept[=].display = "Vancomycin intermediate Enterococcus faecalis (organism)"
* compose.include.concept[+].code = #712666003
* compose.include.concept[=].display = "Vancomycin intermediate Enterococcus faecium (organism)"
* compose.include.concept[+].code = #78065002
* compose.include.concept[=].display = "Enterococcus faecalis (organism)"
* compose.include.concept[+].code = #782956001
* compose.include.concept[=].display = "Vancomycin susceptible Enterococcus faecium (organism)"
* compose.include.concept[+].code = #782958000
* compose.include.concept[=].display = "Vancomycin susceptible Enterococcus faecalis (organism)"
* compose.include.concept[+].code = #90272000
* compose.include.concept[=].display = "Enterococcus faecium (organism)"
* compose.include.concept[+].code = #928051771000087103
* compose.include.concept[=].display = "Enterococcus faecalis type 2 (organism)"
* compose.include.concept[+].code = #707768008
* compose.include.concept[=].display = "Enterococcus faecium genotype vanA (organism)"
* compose.include.concept[+].code = #707769000
* compose.include.concept[=].display = "Enterococcus faecium genotype vanB (organism)"
* compose.include.concept[+].code = #712663006
* compose.include.concept[=].display = "Vancomycin resistant Enterococcus faecalis (organism)"
* compose.include.concept[+].code = #712665004
* compose.include.concept[=].display = "Vancomycin resistant Enterococcus faecium (organism)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #416397000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #708244002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #708245001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #712664000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #712666003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #78065002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #782956001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #782958000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #90272000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #928051771000087103
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707768008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #707769000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #712663006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #712665004