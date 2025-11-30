ValueSet: ValueSetIndeterminateLabResultExample
Id: 2.16.840.1.113762.1.4.1146.1035-example
Title: "Indeterminate or Equivocal Lab Result Value"
Description: "Codes that represent an indeterminate, equivocal, inconclusive, or uncertain laboratory result."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-supplemental-valueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "eCR"
* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1035-example"
* insert rsValueSetRequired
* ^publisher = "Council of State and Territorial Epidemiologists Steward"

* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#supplemental
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#280414007 "Equivocal result (qualifier value)"
* $sct#280416009 "Indeterminate result (qualifier value)"
* $sct#419984006 "Inconclusive (qualifier value)"
* $sct#42425007 "Equivocal (qualifier value)"
* $sct#64957009 "Uncertain (qualifier value)"
* $sct#82334004 "Indeterminate (qualifier value)"
