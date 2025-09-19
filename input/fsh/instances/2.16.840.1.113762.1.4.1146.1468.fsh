Instance: 2.16.840.1.113762.1.4.1146.1468
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1468"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1468"
* version = "1.0.0"
* name = "EnterococcusgallinarumorEcasseliflavusEflavescensOrganismorSubstanceinLabResults"
* title = "Enterococcus gallinarum or E. casseliflavus/E. flavescens (Organism or Substance in Lab Results)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Enterococcus gallinarum or E. casseliflavus/E. flavescens (Organism or Substance in Lab Results)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#406575008
* useContext[=].valueCodeableConcept.text = "Infection caused by vancomycin resistant enterococcus (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #30949009
* compose.include.concept[=].display = "Enterococcus casseliflavus (organism)"
* compose.include.concept[+].code = #53233007
* compose.include.concept[=].display = "Enterococcus gallinarum (organism)"
* compose.include.concept[+].code = #703032005
* compose.include.concept[=].display = "Enterococcus casseliflavus or Enterococcus gallinarum (finding)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #30949009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #53233007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #703032005