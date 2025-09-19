Instance: 2.16.840.1.113762.1.4.1146.1507
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1507"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1507"
* version = "1.0.0"
* name = "ArsenicExposureandToxicityDisordersSNOMED"
* title = "Arsenic Exposure and Toxicity (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Arsenic Exposure and Toxicity (Disorders) (SNOMED)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#767146004
* useContext[=].valueCodeableConcept.text = "Toxic effect of arsenic and its compounds (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #212516009
* compose.include.concept[=].display = "Arsenical anti-infective poisoning (disorder)"
* compose.include.concept[+].code = #216792005
* compose.include.concept[=].display = "Accidental poisoning caused by arsenic and its compounds and fumes (disorder)"
* compose.include.concept[+].code = #216794006
* compose.include.concept[=].display = "Accidental poisoning caused by arsenic compound (disorder)"
* compose.include.concept[+].code = #216795007
* compose.include.concept[=].display = "Accidental poisoning caused by arsenic fumes (disorder)"
* compose.include.concept[+].code = #241770003
* compose.include.concept[=].display = "Trivalent arsenic compound causing toxic effect (disorder)"
* compose.include.concept[+].code = #241771004
* compose.include.concept[=].display = "Pentavalent arsenic compound causing toxic effect (disorder)"
* compose.include.concept[+].code = #360406006
* compose.include.concept[=].display = "Arsenic-induced nail damage (disorder)"
* compose.include.concept[+].code = #36730005
* compose.include.concept[=].display = "Arsenical tremor (finding)"
* compose.include.concept[+].code = #403740003
* compose.include.concept[=].display = "Skin disease caused by arsenic (disorder)"
* compose.include.concept[+].code = #403741004
* compose.include.concept[=].display = "Arsenical keratosis (disorder)"
* compose.include.concept[+].code = #403743001
* compose.include.concept[=].display = "Arsenic-induced skin pigmentation (disorder)"
* compose.include.concept[+].code = #403744007
* compose.include.concept[=].display = "Arsenic-induced \"rain-drop\" hypomelanosis (disorder)"
* compose.include.concept[+].code = #403745008
* compose.include.concept[=].display = "Skin sign from acute arsenic toxicity (finding)"
* compose.include.concept[+].code = #418685002
* compose.include.concept[=].display = "Poisoning caused by arsenic or its compounds of undetermined intent (disorder)"
* compose.include.concept[+].code = #62210001
* compose.include.concept[=].display = "Inorganic arsenic poisoning (disorder)"
* compose.include.concept[+].code = #72501006
* compose.include.concept[=].display = "Anemia caused by arsenic hydride (disorder)"
* compose.include.concept[+].code = #767146004
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds (disorder)"
* compose.include.concept[+].code = #871783000
* compose.include.concept[=].display = "Adverse reaction to arsenic and arsenic compound (disorder)"
* compose.include.concept[+].code = #89738003
* compose.include.concept[=].display = "Organic arsenic poisoning (disorder)"
* compose.include.concept[+].code = #403742006
* compose.include.concept[=].display = "Malignant neoplasm of skin caused by arsenic (disorder)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #212516009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #216792005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #216794006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #216795007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #241770003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #241771004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #360406006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #36730005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403740003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403741004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403743001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403744007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403745008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #418685002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #62210001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #72501006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #767146004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #871783000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #89738003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #403742006