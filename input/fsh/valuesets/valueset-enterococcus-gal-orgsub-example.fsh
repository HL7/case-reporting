ValueSet: ValueSetEnterococcusGalOrgSubExample
Id: 2.16.840.1.113762.1.4.1146.1468-example
Title: "Enterococcus gallinarum or E. casseliflavus/E. flavescens (Organism or Substance in Lab Results)"
Description: "Enterococcus gallinarum or E. casseliflavus/E. flavescens (Organism or Substance in Lab Results)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"


* ^url = "http://hl7.org/fhir/us/ecr/ValueSet/2.16.840.1.113762.1.4.1146.1468-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1468"


* insert rsValueSetRequired
* ^publisher = "ValueSet Steward/Publisher"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#406575008
* ^useContext[=].valueCodeableConcept.text = "Infection caused by vancomycin resistant enterococcus (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#30949009 "Enterococcus casseliflavus (organism)"
* $sct#53233007 "Enterococcus gallinarum (organism)"
* $sct#703032005 "Enterococcus casseliflavus or Enterococcus gallinarum (finding)"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #30949009
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #53233007
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "Provisional_2022-01-10"
* ^expansion.contains[=].code = #703032005
