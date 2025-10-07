Instance: 2.16.840.1.113762.1.4.1146.1505
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1505"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1505"
* version = "1.0.0"
* name = "AcanthamoebaDiseaseKeratitisDisordersSNOMED"
* title = "Acanthamoeba Disease [Keratitis] (Disorders) (SNOMED)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Acanthamoeba Disease [Keratitis] (Disorders) (SNOMED)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].valueCodeableConcept = $sct#49649001
* useContext[=].valueCodeableConcept.text = "Infection caused by Acanthamoeba (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.version = "Provisional_2022-01-10"
* compose.include.concept[0].code = #127631000119105
* compose.include.concept[=].display = "Corneal ulcer due to acanthamoeba (disorder)"
* compose.include.concept[+].code = #15693201000119102
* compose.include.concept[=].display = "Keratitis of bilateral eyes caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #15693241000119100
* compose.include.concept[=].display = "Keratitis of left eye caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #15693281000119105
* compose.include.concept[=].display = "Keratitis of right eye caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #15698841000119105
* compose.include.concept[=].display = "Ulcer of right cornea caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #15698881000119100
* compose.include.concept[=].display = "Ulcer of left cornea caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #231896005
* compose.include.concept[=].display = "Acanthamoeba keratitis (disorder)"
* compose.include.concept[+].code = #711645008
* compose.include.concept[=].display = "Corneal ulcer caused by Acanthamoeba (disorder)"
* compose.include.concept[+].code = #840444002
* compose.include.concept[=].display = "Dacryoadenitis due to Acanthamoeba keratitis (disorder)"
* compose.include.concept[+].code = #840484006
* compose.include.concept[=].display = "Conjunctivitis caused by Acanthamoeba (disorder)"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #127631000119105
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15693201000119102
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15693241000119100
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15693281000119105
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15698841000119105
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #15698881000119100
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #231896005
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #711645008
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #840444002
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].version = "Provisional_2022-01-10"
* expansion.contains[=].code = #840484006