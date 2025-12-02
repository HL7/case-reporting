Instance: observation-eicr-organism-susceptibility-meropenem
InstanceOf: EICROrganismSusceptibilityObservation
Title: "Observation - Meropenem Susceptibility for Eve Everywoman"
Description: "Example of an eICR Organism Susceptibility observation documenting meropenem susceptibility for patient Eve Everywoman."
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#630-4 "Meropenem [Susceptibility]"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2025-03-07"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* valueString = "<0.25"
* interpretation = $v3-ObservationInterpretation#S "Susceptible"
