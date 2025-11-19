ValueSet: ValueSetAcanthamoebaICD10Example
Id: 2.16.840.1.113762.1.4.1146.1506-example
Title: "Acanthamoeba Disease [Keratitis] (Disorders) (ICD10CM)"
Description: "Acanthamoeba Disease [Keratitis] (Disorders) (ICD10CM)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1506-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1506"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#49649001
* ^useContext[=].valueCodeableConcept.text = "Infection caused by Acanthamoeba (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* http://hl7.org/fhir/sid/icd-10-cm#B60.12 "Conjunctivitis due to Acanthamoeba"
* http://hl7.org/fhir/sid/icd-10-cm#B60.13 "Keratoconjunctivitis due to Acanthamoeba"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #B60.12
* ^expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* ^expansion.contains[=].version = "Provisional_2022-01-12"
* ^expansion.contains[=].code = #B60.13
