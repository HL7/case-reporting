ValueSet: ValueSetHIVARVPostAttachExample
Id: 2.16.840.1.113762.1.4.1146.1602-example
Title: "HIV Infection (ARV Postattachment Inhibitors) (RXNORM)"
Description: "HIV Infection (ARV Postattachment Inhibitors) (RXNORM)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://example.org/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1602-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1602"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#86406008
* ^useContext[=].valueCodeableConcept.text = "Human immunodeficiency virus infection (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $rxnorm#2043317 "1.33 ML ibalizumab-uiyk 150 MG/ML Injection"
* $rxnorm#2043322 "1.33 ML ibalizumab-uiyk 150 MG/ML Injection [Trogarzo]"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2043317
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2043322
