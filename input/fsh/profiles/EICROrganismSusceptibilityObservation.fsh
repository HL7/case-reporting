Profile: EICROrganismSusceptibilityObservation
Parent: USPublicHealthLaboratoryResultObservation
Id: eicr-organism-susceptibility-observation  
Title: "eICR Organism Susceptibility Observation"
Description: "This Observation profile is used to report organism susceptibility in eICR laboratory results. It is referenced (hasMember) from the eICR Organism Detected Observation for the organism tested and SHALL reference an eICR Organism Isolate Specimen so that the susceptibility result is self-contained: the isolate identifies what was tested and its parent identifies the clinical specimen from which the organism was isolated."

* . ^short = "eICR Organism Susceptibility Observation"

* code from $2.16.840.1.113762.1.4.1280.3 (extensible)
* code ^short = "Susceptibility Test"
* code ^definition = "The antimicrobial susceptibility test performed, bound (extensible) to the Antimicrobial Susceptibility Test Codes value set (VSAC OID 2.16.840.1.113762.1.4.1280.3), which limits the broad US Core laboratory test codes to susceptibility tests."
* subject only Reference(USPublicHealthPatient)
* value[x] ^short = "Susceptibility Test Result"
* value[x] ^definition = "The result of the susceptibility test. The data type is not constrained: minimum inhibitory concentration (MIC) results reported against LOINC MIC susceptibility codes may be numeric (Quantity, which may carry a comparator such as <=) or textual (string, for example \"<0.25\"), while other susceptibility methods may report a coded (CodeableConcept) result."
* interpretation MS
* interpretation from http://terminology.hl7.org/ValueSet/v3-ObservationInterpretationSusceptibility (required)
* interpretation ^short = "Susceptibility Interpretation"
* interpretation ^definition = "The categorical interpretation of the susceptibility result (for example, Susceptible, Intermediate, Resistant, Non-susceptible, Susceptible-dose dependent), bound to the susceptibility subset of the v3 ObservationInterpretation code system. The same value set is bound in the CDA eICR IG."
* specimen 1..1 MS
* specimen only Reference(EICROrganismIsolateSpecimen)
* specimen ^short = "Organism isolate the susceptibility test was performed on"
* specimen ^definition = "The eICR Organism Isolate Specimen the susceptibility test was performed on. Its parent is the clinical specimen referenced by the associated eICR Organism Detected Observation."
