Instance: 2.16.840.1.113762.1.4.1146.6
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.6"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.6"
* version = "1.0.0"
* name = "DiphtheriaDisordersSNOMED"
* title = "Diphtheria (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Diphtheria (Disorders) (SNOMED)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#276197005
* useContext[=].valueCodeableConcept.text = "Infection caused by Corynebacterium diphtheriae (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #1086051000119107
* compose.include.concept[=].display = "Cardiomyopathy due to diphtheria (disorder)"
* compose.include.concept[+].code = #1086061000119109
* compose.include.concept[=].display = "Diphtheria radiculomyelitis (disorder)"
* compose.include.concept[+].code = #1086071000119103
* compose.include.concept[=].display = "Diphtheria tubulointerstitial nephropathy (disorder)"
* compose.include.concept[+].code = #1090211000119102
* compose.include.concept[=].display = "Pharyngeal diphtheria (disorder)"
* compose.include.concept[+].code = #129667001
* compose.include.concept[=].display = "Diphtheritic peripheral neuritis (disorder)"
* compose.include.concept[+].code = #13596001
* compose.include.concept[=].display = "Diphtheritic peritonitis (disorder)"
* compose.include.concept[+].code = #15682004
* compose.include.concept[=].display = "Anterior nasal diphtheria (disorder)"
* compose.include.concept[+].code = #186347006
* compose.include.concept[=].display = "Diphtheria of penis (disorder)"
* compose.include.concept[+].code = #18901009
* compose.include.concept[=].display = "Cutaneous diphtheria (disorder)"
* compose.include.concept[+].code = #194945009
* compose.include.concept[=].display = "Acute myocarditis - diphtheritic (disorder)"
* compose.include.concept[+].code = #230596007
* compose.include.concept[=].display = "Diphtheritic neuropathy (disorder)"
* compose.include.concept[+].code = #240422004
* compose.include.concept[=].display = "Tracheobronchial diphtheria (disorder)"
* compose.include.concept[+].code = #26117009
* compose.include.concept[=].display = "Diphtheritic myocarditis (disorder)"
* compose.include.concept[+].code = #276197005
* compose.include.concept[=].display = "Infection caused by Corynebacterium diphtheriae (disorder)"
* compose.include.concept[+].code = #3419005
* compose.include.concept[=].display = "Faucial diphtheria (disorder)"
* compose.include.concept[+].code = #397428000
* compose.include.concept[=].display = "Diphtheria (disorder)"
* compose.include.concept[+].code = #397430003
* compose.include.concept[=].display = "Diphtheria caused by Corynebacterium diphtheriae (disorder)"
* compose.include.concept[+].code = #48278001
* compose.include.concept[=].display = "Diphtheritic cystitis (disorder)"
* compose.include.concept[+].code = #50215002
* compose.include.concept[=].display = "Laryngeal diphtheria (disorder)"
* compose.include.concept[+].code = #715659006
* compose.include.concept[=].display = "Diphtheria of respiratory system (disorder)"
* compose.include.concept[+].code = #75589004
* compose.include.concept[=].display = "Nasopharyngeal diphtheria (disorder)"
* compose.include.concept[+].code = #7773002
* compose.include.concept[=].display = "Conjunctival diphtheria (disorder)"
* compose.include.concept[+].code = #789005009
* compose.include.concept[=].display = "Paralysis of uvula after diphtheria (disorder)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #1086051000119107
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #1086061000119109
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #1086071000119103
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #1090211000119102
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #129667001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #13596001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15682004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #186347006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #18901009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #194945009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #230596007
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #240422004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #26117009
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #276197005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #3419005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #397428000
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #397430003
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #48278001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #50215002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #715659006
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #75589004
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #7773002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #789005009