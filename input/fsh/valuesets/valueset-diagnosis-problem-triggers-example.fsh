ValueSet: ValueSetDiagnosisProblemTriggersExample
Id: valueset-diagnosis-problem-triggers-example
Title: "Example Diagnosis Problem Triggers for Public Health Reporting"
Description: "This example set of values contains diagnoses or problems that represent that the patient may have a potentially reportable condition regardless of the clinical presentation of the condition"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
// 

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.627.1"
* insert rsValueSetRequired

* ^publisher = "Example Steward"
* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering "Triggering"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority "Priority"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine "Routine"
// 
// 
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* http://hl7.org/fhir/sid/icd-10-cm#A01 "Typhoid and paratyphoid fevers"
* http://hl7.org/fhir/sid/icd-10-cm#A01.0 "Typhoid fever"
* $sct#10750051000119105 "Chlamydia trachomatis infection in mother complicating childbirth (disorder)"
* $sct#10754031000119105 "Gonorrhea in mother complicating childbirth (disorder)"
* $sct#1084791000119106 "Cardiac disorder due to typhoid fever (disorder)"
* $sct#1086991000119103 "Gonococcal abscess of brain (disorder)"
* $sct#1087051000119109 "Gonococcal osteomyelitis (disorder)"
* $sct#1087061000119106 "Gonococcal pneumonia (disorder)"
* $sct#1092371000119103 "Salmonella pyelonephritis (disorder)"