Instance: medicationadministration-eve-everywoman-azithromycin
InstanceOf: USPublicHealthMedicationAdministration
Title: "MedicationAdministration - Azithromycin for Eve Everywoman"
Description: "Example of a US Public Health MedicationAdministration documenting the administration of Azithromycin 500 MG oral tablets to patient Eve Everywoman."
Usage: #example
* status = #completed
* medicationCodeableConcept = $rxnorm#248656 "Azithromycin 500 MG Oral Tablet"
* medicationCodeableConcept.text = "Azithromycin 500 MG Oral Tablet"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2018-03-07"
* effectivePeriod.end = "2018-03-07"
* dosage.text = "Two tablets at once"
* dosage.route = $sct#26643006 "Oral route"
* dosage.method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"
* dosage.dose = 2 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB "TAB"