Profile: EICROrganismDetectedObservation
Parent: USPublicHealthLaboratoryResultObservation
Id: eicr-organism-detected-observation  
Title: "eICR Organism Detected Observation"
Description: "This Observation profile is used to report a detected organism in an eICR laboratory result. It SHALL include at least one reference to an associated organism susceptibility observation."

* . ^short = "eICR Organism Detected Observation"

* code ^short = "Organism Detection Test"
* subject only Reference(USPublicHealthPatient)
* value[x] ^short = "Organism Detected Name"
* hasMember 1.. MS
* hasMember ^short = "Susceptibility Observation"
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains
    susceptibilityObservation 1..* MS
* hasMember[susceptibilityObservation] only Reference(EICROrganismSusceptibilityObservation)
* hasMember[susceptibilityObservation] ^sliceName = "susceptibilityObservation"
* hasMember[susceptibilityObservation] ^short = "Organism Susceptibility Observation"    
