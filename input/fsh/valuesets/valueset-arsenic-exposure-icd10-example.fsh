ValueSet: ValueSetArsenicExposureICD10Example
Id: 2.16.840.1.113762.1.4.1146.1508-example
Title: "Arsenic Exposure and Toxicity (Disorders) (ICD10CM)"
Description: "Arsenic Exposure and Toxicity (Disorders) (ICD10CM)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1508-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1508"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#767146004
* ^useContext[=].valueCodeableConcept.text = "Toxic effect of arsenic and its compounds (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* http://hl7.org/fhir/sid/icd-10-cm#T57.0X "Toxic effect of arsenic and its compounds"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X1 "Toxic effect of arsenic and its compounds, accidental (unintentional)"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X1A "Toxic effect of arsenic and its compounds, accidental (unintentional), initial encounter"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X1D "Toxic effect of arsenic and its compounds, accidental (unintentional), subsequent encounter"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X1S "Toxic effect of arsenic and its compounds, accidental (unintentional), sequela"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X4 "Toxic effect of arsenic and its compounds, undetermined"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X4A "Toxic effect of arsenic and its compounds, undetermined, initial encounter"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X4D "Toxic effect of arsenic and its compounds, undetermined, subsequent encounter"
* http://hl7.org/fhir/sid/icd-10-cm#T57.0X4S "Toxic effect of arsenic and its compounds, undetermined, sequela"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X1
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X1A
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X1D
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X1S
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X4
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X4A
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X4D
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #T57.0X4S
