Instance: 2.16.840.1.113762.1.4.1146.1035
InstanceOf: USPublicHealthSupplementalValueSet
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* extension[=].valueContactDetail.name = "eCR"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* extension[=].valueContactDetail.name = "eCR"
* url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1035"
* version = "0.1.0"
* name = "IndeterminateOrEquivocalLabResultValue"
* title = "Indeterminate or Equivocal Lab Result Value"
* status = #active
* experimental = true
* publisher = "Council of State and Territorial Epidemiologists Steward"
* description = "missing description"
* useContext[reportingContext].code = $USPublicHealthUsageContextType#reporting
* useContext[reportingContext].valueCodeableConcept = $USPublicHealthUsageContext#supplemental
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].valueCodeableConcept = $USPublicHealthUsageContext#routine
* compose.include.system = "http://snomed.info/sct"
* compose.include.concept[0].code = #280414007
* compose.include.concept[=].display = "Equivocal result (qualifier value)"
* compose.include.concept[+].code = #280416009
* compose.include.concept[=].display = "Indeterminate result (qualifier value)"
* compose.include.concept[+].code = #419984006
* compose.include.concept[=].display = "Inconclusive (qualifier value)"
* compose.include.concept[+].code = #42425007
* compose.include.concept[=].display = "Equivocal (qualifier value)"
* compose.include.concept[+].code = #64957009
* compose.include.concept[=].display = "Uncertain (qualifier value)"
* compose.include.concept[+].code = #82334004
* compose.include.concept[=].display = "Indeterminate (qualifier value)"