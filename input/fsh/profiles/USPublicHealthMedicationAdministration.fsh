Profile: USPublicHealthMedicationAdministration
Parent: MedicationAdministration
Id: us-ph-medicationadministration
Title: "US Public Health MedicationAdministration"
Description: "This profile constrains the base MedicationAdministration resource. The constraints are based on the requirements laid out in USCDI Level 2 for Medication Administration."
* ^version = "0.1.0"
* ^status = #active


* extension only USPublicHealthTherapeuticMedicationResponseExtension
* extension MS
* identifier MS
* status MS
* medication[x] 1..1 MS
* medication[x] only CodeableConcept or Reference(USCoreMedicationProfile)
* medication[x] from MedicationClinicalDrug (extensible)
* subject only Reference(USPublicHealthPatient)
* subject MS
* effective[x] MS
* dosage MS
* dosage.route MS
* dosage.dose MS