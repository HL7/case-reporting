Instance: Inline-Instance-for-bundle-eicr-document-zika-8
InstanceOf: USPublicHealthPregnancyStatusObservation
Usage: #inline
* id = "observation-pregnancy-status-eve-everywoman"
* meta.versionId = "8"
* meta.lastUpdated = "2021-08-17T07:59:00.824+00:00"
* meta.source = "#bBlVx7OsNPsZVCbu"
* extension[0].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-recorded-extension"
* extension[=].valueDateTime = "2017-10-01"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* extension[=].valueDateTime = "2017-10-01"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2017-08-26"
* valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* method = $sct#16310003 "Ultrasonography (procedure)"
* component[0].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* component[=].extension.valueDateTime = "2017-10-01"
* component[=].code = $loinc#53691-2 "Gestational age Estimated from patient reported estimated date of conception"
* component[=].valueQuantity.value = 143
* component[=].valueQuantity.unit = "d"
* component[+].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* component[=].extension.valueDateTime = "2017-10-01"
* component[=].code = $loinc#57064-8 "Delivery date Estimated from date fundal height reaches umb"
* component[=].valueDateTime = "2018-05-01"