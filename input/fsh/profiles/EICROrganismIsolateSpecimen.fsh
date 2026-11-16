Profile: EICROrganismIsolateSpecimen
Parent: USPublicHealthSpecimen
Id: eicr-organism-isolate-specimen
Title: "eICR Organism Isolate Specimen"
Description: "This Specimen profile represents a microbial isolate derived from a clinical specimen (for example, an organism isolated from a urine culture). It is referenced as the specimen of each eICR Organism Susceptibility Observation so that a susceptibility result is self-contained: the isolate identifies what was tested and its parent identifies the clinical specimen (source, body site, and collection details) from which the organism was isolated. This follows the FHIR Diagnostics module pattern of linking a derived specimen to its source specimen through Specimen.parent."

* . ^short = "eICR Organism Isolate Specimen"

* type 1..1 MS
* type = $sct#119303007 "Microbial isolate specimen"
* type ^short = "Microbial isolate specimen"
* subject 1..1 MS
* parent 1..1 MS
* parent only Reference(USPublicHealthSpecimen)
* parent ^short = "Clinical specimen the organism was isolated from"
* parent ^definition = "The clinical specimen (for example, urine, blood, or a wound swab) from which this organism isolate was derived."
