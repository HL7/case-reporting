ValueSet: ValueSetPoliomyelitisSuspectedExample
Id: 2.16.840.1.113762.1.4.1146.1438-example
Title: "Poliomyelitis [Suspected] (Disorders) (SNOMED)"
Description: "Poliomyelitis [Suspected] (Disorders) (SNOMED)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://example.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1438-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1438"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#398102009
* ^useContext[=].valueCodeableConcept.text = "Acute poliomyelitis (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#772155008 "Acute poliomyelitis suspected (situation)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains.system = "http://snomed.info/sct"
* ^expansion.contains.version = "Provisional_2022-01-10"
* ^expansion.contains.code = #772155008
