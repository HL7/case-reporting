ValueSet: ValueSetDiphtheriaSNOMEDExample
Id: 2.16.840.1.113762.1.4.1146.6-example
Title: "Diphtheria (Disorders) (SNOMED)"
Description: "Diphtheria (Disorders) (SNOMED)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"


* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.6-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.6"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"

* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#276197005 "Infection caused by Corynebacterium diphtheriae (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#1086051000119107 "Cardiomyopathy due to diphtheria (disorder)"
* $sct#1086061000119109 "Diphtheria radiculomyelitis (disorder)"
* $sct#1086071000119103 "Diphtheria tubulointerstitial nephropathy (disorder)"
* $sct#1090211000119102 "Pharyngeal diphtheria (disorder)"
* $sct#129667001 "Diphtheritic peripheral neuritis (disorder)"
* $sct#13596001 "Diphtheritic peritonitis (disorder)"
* $sct#15682004 "Anterior nasal diphtheria (disorder)"
* $sct#186347006 "Diphtheria of penis (disorder)"
* $sct#18901009 "Cutaneous diphtheria (disorder)"
* $sct#194945009 "Acute myocarditis - diphtheritic (disorder)"
* $sct#230596007 "Diphtheritic neuropathy (disorder)"
* $sct#240422004 "Tracheobronchial diphtheria (disorder)"
* $sct#26117009 "Diphtheritic myocarditis (disorder)"
* $sct#276197005 "Infection caused by Corynebacterium diphtheriae (disorder)"
* $sct#3419005 "Faucial diphtheria (disorder)"
* $sct#397430003 "Diphtheria caused by Corynebacterium diphtheriae (disorder)"
* $sct#48278001 "Diphtheritic cystitis (disorder)"
* $sct#50215002 "Laryngeal diphtheria (disorder)"
* $sct#715659006 "Diphtheria of respiratory system (disorder)"
* $sct#75589004 "Nasopharyngeal diphtheria (disorder)"
* $sct#7773002 "Conjunctival diphtheria (disorder)"
* $sct#789005009 "Paralysis of uvula after diphtheria (disorder)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #1086051000119107
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #1086061000119109
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #1086071000119103
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #1090211000119102
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #129667001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #13596001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #15682004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #186347006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #18901009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #194945009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #230596007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #240422004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #26117009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #276197005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #3419005
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #397430003
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #48278001
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #50215002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #715659006
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #75589004
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #7773002
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #789005009
