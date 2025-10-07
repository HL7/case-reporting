Instance: 2.16.840.1.113762.1.4.1146.1034
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "eCR"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "eCR"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1034"
* version = "0.1.0"
* name = "NegativeOrUndetectedLabResultValue"
* title = "Negative or Undetected Lab Result Value"
* status = #active
* experimental = true
* publisher = "Council of State and Territorial Epidemiologists Steward"
* description = "missing description"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.concept[0].code = #131194007
* compose.include.concept[=].display = "Non-Reactive (qualifier value)"
* compose.include.concept[+].code = #168230009
* compose.include.concept[=].display = "Sample direct microscopy no organism seen (finding)"
* compose.include.concept[+].code = #17621005
* compose.include.concept[=].display = "Normal (qualifier value)"
* compose.include.concept[+].code = #23506009
* compose.include.concept[=].display = "Normal flora (finding)"
* compose.include.concept[+].code = #260385009
* compose.include.concept[=].display = "Negative (qualifier value)"
* compose.include.concept[+].code = #260389003
* compose.include.concept[=].display = "No reaction (qualifier value)"
* compose.include.concept[+].code = #260394003
* compose.include.concept[=].display = "Normal limits (qualifier value)"
* compose.include.concept[+].code = #260395002
* compose.include.concept[=].display = "Normal range (qualifier value)"
* compose.include.concept[+].code = #260415000
* compose.include.concept[=].display = "Not detected (qualifier value)"
* compose.include.concept[+].code = #264868006
* compose.include.concept[=].display = "No growth (qualifier value)"
* compose.include.concept[+].code = #264887000
* compose.include.concept[=].display = "Not isolated (qualifier value)"
* compose.include.concept[+].code = #2667000
* compose.include.concept[=].display = "Absent (qualifier value)"
* compose.include.concept[+].code = #272519000
* compose.include.concept[=].display = "Absence findings (qualifier value)"
* compose.include.concept[+].code = #27863008
* compose.include.concept[=].display = "No organisms seen (finding)"
* compose.include.concept[+].code = #280413001
* compose.include.concept[=].display = "Normal result (qualifier value)"
* compose.include.concept[+].code = #281297005
* compose.include.concept[=].display = "Analyte not detected (qualifier value)"
* compose.include.concept[+].code = #371928007
* compose.include.concept[=].display = "Not significant (qualifier value)"
* compose.include.concept[+].code = #373067005
* compose.include.concept[=].display = "No (qualifier value)"
* compose.include.concept[+].code = #435151000124100
* compose.include.concept[=].display = "No acid fast organisms seen (finding)"
* compose.include.concept[+].code = #444991000124106
* compose.include.concept[=].display = "Repeatedly non-reactive (qualifier value)"
* compose.include.concept[+].code = #47492008
* compose.include.concept[=].display = "Not seen (qualifier value)"