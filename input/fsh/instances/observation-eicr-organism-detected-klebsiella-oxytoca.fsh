Instance: observation-eicr-organism-detected-klebsiella-oxytoca
InstanceOf: EICROrganismDetectedObservation
Title: "Observation - Organism Detected Klebsiella-oxytoca for Eve Everywoman"
Description: "Example of an EICR Organism Detected Observation documenting the detection of Klebsiella oxytoca in a urine culture for patient Eve Everywoman."
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#630-4 "Bacteria identified in Urine by Culture"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2025-03-07"
* performer.reference = "Organization/organization-ecr-acme-laboratory"
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* hasMember[susceptibilityObservation] = Reference(Observation/observation-eicr-organism-susceptibility-meropenem) "Meropenem Susceptibility Observation"