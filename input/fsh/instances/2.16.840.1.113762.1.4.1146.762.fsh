Instance: 2.16.840.1.113762.1.4.1146.762
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.762"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.762"
* version = "1.0.0"
* name = "MumpsTestPanelsformumpsvirusIgMIgGAntibody"
* title = "Mumps (Test Panels for mumps virus IgM IgG Antibody)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Mumps (Test Panels for mumps virus IgM IgG Antibody)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#36989005
* useContext[=].valueCodeableConcept.text = "Mumps (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://loinc.org"
* compose.include.version = "Provisional_2021-12-30"
* compose.include.concept[0].code = #77250-9
* compose.include.concept[=].display = "Mumps virus IgG and IgM panel - Serum"
* compose.include.concept[+].code = #77398-6
* compose.include.concept[=].display = "Mumps virus IgG and IgM index panel - Serum"
* compose.include.concept[+].code = #88458-5
* compose.include.concept[=].display = "Mumps virus Ab.IgG and IgM panel - Cerebral spinal fluid by Immunofluorescence"
* compose.include.concept[+].code = #92929-9
* compose.include.concept[=].display = "Measles, Mumps and Rubella virus IgG panel [Units/volume] - Serum or Plasma"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #77250-9
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #77398-6
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #88458-5
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].version = "Provisional_2021-12-30"
* expansion.contains[=].code = #92929-9