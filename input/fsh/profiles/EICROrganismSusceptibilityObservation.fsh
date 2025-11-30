Profile: EICROrganismSusceptibilityObservation
Parent: USPublicHealthLaboratoryResultObservation
Id: eicr-organism-susceptibility-observation  
Title: "eICR Organism Susceptibility Observation"
Description: "This Observation profile is used to report organism susceptibility in eICR laboratory results."

* . ^short = "eICR Organism Susceptibility Observation"

* code ^short = "Susceptibility Test"
* subject only Reference(USPublicHealthPatient)
* value[x] ^short = "Susceptibility Test Result"
* interpretation ^short = "Susceptibility Interpretation"