ValueSet: ValueSetNegativeLabResultExample
Id: 2.16.840.1.113762.1.4.1146.1034-example
Title: "Negative or Undetected Lab Result Value"
Description: "missing description"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-supplemental-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "eCR"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "eCR"
* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1034-example"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^publisher = "Council of State and Territorial Epidemiologists Steward"

* ^useContext[0].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#supplemental
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $sct#131194007 "Non-Reactive (qualifier value)"
* $sct#168230009 "Sample direct microscopy no organism seen"
* $sct#17621005 "Normal (qualifier value)"
* $sct#23506009 "Normal flora (finding)"
* $sct#260385009 "Negative (qualifier value)"
* $sct#260389003 "No reaction (qualifier value)"
* $sct#260394003 "Normal limits (qualifier value)"
* $sct#260395002 "Normal range (qualifier value)"
* $sct#260415000 "Not detected (qualifier value)"
* $sct#264868006 "No growth (qualifier value)"
* $sct#264887000 "Not isolated (qualifier value)"
* $sct#2667000 "Absent (qualifier value)"
* $sct#272519000 "Absence findings (qualifier value)"
* $sct#27863008 "No organisms seen (finding)"
* $sct#280413001 "Normal result (qualifier value)"
* $sct#281297005 "Analyte not detected (qualifier value)"
* $sct#371928007 "Not significant (qualifier value)"
* $sct#373067005 "No (qualifier value)"
* $sct#435151000124100 "No acid fast organisms seen (finding)"
* $sct#444991000124106 "Repeatedly non-reactive (qualifier value)"
* $sct#47492008 "Not seen (qualifier value)"
