Instance: specimen-eicr-klebsiella-oxytoca-isolate
InstanceOf: EICROrganismIsolateSpecimen
Title: "Specimen - Klebsiella oxytoca Isolate for Eve Everywoman"
Description: "Example of an eICR Organism Isolate Specimen: the Klebsiella oxytoca isolate derived from Eve Everywoman's urine specimen, on which the meropenem susceptibility test was performed."
Usage: #example
* accessionIdentifier.system = "http://example.org/labs/accession-ids"
* accessionIdentifier.value = "20250307-00417-ISO1"
* status = #available
* type = $sct#119303007 "Microbial isolate specimen"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* parent = Reference(Specimen/specimen-eicr-urine-eve-everywoman) "Urine specimen"
* collection.collectedDateTime = "2025-03-07T08:30:00-05:00"
