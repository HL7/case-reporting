Instance: 2.16.840.1.113762.1.4.1146.1508
InstanceOf: USPublicHealthTriggeringValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "CSTE Author"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "CSTE Steward"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1508"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1508"
* version = "1.0.0"
* name = "ArsenicExposureandToxicityDisordersICD10CM"
* title = "Arsenic Exposure and Toxicity (Disorders) (ICD10CM)"
* status = #active
* experimental = true
* publisher = "eCR"
* description = "Arsenic Exposure and Toxicity (Disorders) (ICD10CM)"
* useContext[0].code = $usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#767146004
* useContext[=].valueCodeableConcept.text = "Toxic effect of arsenic and its compounds (disorder)"
* useContext[+].code = $USPublicHealthUsageContextType#reporting
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#triggering
* useContext[+].code = $USPublicHealthUsageContextType#priority
* useContext[=].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include.version = "Provisional_2022-01-12"
* compose.include.concept[0].code = #T57.0X
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds"
* compose.include.concept[+].code = #T57.0X1
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, accidental (unintentional)"
* compose.include.concept[+].code = #T57.0X1A
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, accidental (unintentional), initial encounter"
* compose.include.concept[+].code = #T57.0X1D
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, accidental (unintentional), subsequent encounter"
* compose.include.concept[+].code = #T57.0X1S
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, accidental (unintentional), sequela"
* compose.include.concept[+].code = #T57.0X4
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, undetermined"
* compose.include.concept[+].code = #T57.0X4A
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, undetermined, initial encounter"
* compose.include.concept[+].code = #T57.0X4D
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, undetermined, subsequent encounter"
* compose.include.concept[+].code = #T57.0X4S
* compose.include.concept[=].display = "Toxic effect of arsenic and its compounds, undetermined, sequela"
* expansion.timestamp = "2022-04-05T10:06:43-04:00"
* expansion.contains[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X1
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X1A
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X1D
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X1S
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X4
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X4A
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X4D
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].version = "Provisional_2022-01-12"
* expansion.contains[=].code = #T57.0X4S