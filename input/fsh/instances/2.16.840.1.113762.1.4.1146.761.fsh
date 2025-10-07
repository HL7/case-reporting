Instance: 2.16.840.1.113762.1.4.1146.761
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.761"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.761"
* version = "1.0.0"
* name = "MumpsTestPanelsformumpsvirusNucleicAcid"
* title = "Mumps (Test Panels for mumps virus Nucleic Acid)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Mumps (Test Panels for mumps virus Nucleic Acid)"
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#36989005
* useContext[=].valueCodeableConcept.text = "Mumps (disorder)"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #85808-4
* compose.include.concept[=].display = "Mumps virus RNA and SH gene panel - Specimen by NAA with probe detection"
* compose.include.concept[+].code = #93750-8
* compose.include.concept[=].display = "Mumps virus RNA and N gene panel - Specimen"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #85808-4
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #93750-8