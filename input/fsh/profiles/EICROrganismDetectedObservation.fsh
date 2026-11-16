Profile: EICROrganismDetectedObservation
Parent: USPublicHealthLaboratoryResultObservation
Id: eicr-organism-detected-observation  
Title: "eICR Organism Detected Observation"
Description: "This Observation profile is used to report a detected organism in an eICR laboratory result. It SHALL include at least one reference (hasMember) to an associated eICR Organism Susceptibility Observation. The organism detected observation references the clinical specimen the organism was detected in; each susceptibility observation references an eICR Organism Isolate Specimen whose parent is that clinical specimen. This follows the FHIR Diagnostics module pattern of grouping related results with hasMember and linking a derived isolate to its source specimen through Specimen.parent."

* . ^short = "eICR Organism Detected Observation"

* code ^short = "Organism Detection Test"
* subject only Reference(USPublicHealthPatient)
* value[x] 1..1 MS
* value[x] only CodeableConcept or string
* value[x] ^short = "Organism Detected Name"
* value[x] ^definition = "The name of the organism detected, preferably coded (for example, SNOMED CT organism concepts) or as text where no code is available. An organism detected observation is not meaningful without the organism name, so this element is required."
* specimen MS
* specimen ^short = "Clinical specimen the organism was detected in"
* specimen ^definition = "The clinical specimen (for example, urine, blood, or a wound swab) in which the organism was detected. This is the parent of the eICR Organism Isolate Specimen referenced by the associated susceptibility observations."
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
