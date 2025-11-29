ValueSet: ValueSetSuspectedDisorderTriggersExample
Id: valueset-suspected-disorder-triggers-example
Title: "Example Suspected Disorder Triggers for Public Health Reporting"
Description: "This example set of values contains suspected diagnoses or problems that represent that the patient may have a potentially reportable condition. For example, these may be diagnoses recorded in an EHR problem list and diagnosis codes used for billing for the encounter."
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "ValueSet Author"

* ^url = "http://example.org/fhir/us/ecr/ValueSet/valueset-suspected-disorder-triggers-example"

* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1479.1"

* insert rsValueSetRequired

* ^date = "2021-10-05"
* ^publisher = "{site.data.fhir.ig.publisher}"
* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting "Reporting"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering "Triggering"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority "Priority"
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine "Routine"


* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* http://hl7.org/fhir/sid/icd-10-cm#A01 "Typhoid and paratyphoid fevers"
* http://hl7.org/fhir/sid/icd-10-cm#A01.0 "Typhoid fever"
* $sct#12591000132100 "Suspected severe acute respiratory syndrome (situation)"
* $sct#12601000132105 "Probable severe acute respiratory syndrome (situation)"
* $sct#722545003 "Suspected rabies (situation)"
* $sct#722546002 "Probable rabies (situation)"
* $sct#772147001 "Botulism suspected (situation)"
* $sct#772150003 "Diphtheria suspected (situation)"
* $sct#772151004 "Anthrax suspected (situation)"