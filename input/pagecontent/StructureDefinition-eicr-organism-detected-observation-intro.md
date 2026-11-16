This profile is based on and further constrains the [US Public Health Laboratory Result Observation]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) profile.

The organism detected observation groups its susceptibility results using hasMember, following the FHIR [Diagnostics module (Microbiology)]({{site.data.fhir.path}}diagnostics-module.html#microbiology) pattern:

* Observation.specimen references the original clinical specimen (for example, the throat swab or urine sample) in which the organism was detected.
* Each [eICR Organism Susceptibility Observation](StructureDefinition-eicr-organism-susceptibility-observation.html) referenced in hasMember references an [eICR Organism Isolate Specimen](StructureDefinition-eicr-organism-isolate-specimen.html), whose Specimen.parent is that original clinical specimen.

See the [Organism Detected](Observation-observation-eicr-organism-detected-klebsiella-oxytoca.html), [Urine Specimen](Specimen-specimen-eicr-urine-eve-everywoman.html), [Klebsiella oxytoca Isolate](Specimen-specimen-eicr-klebsiella-oxytoca-isolate.html), and [Meropenem Susceptibility](Observation-observation-eicr-organism-susceptibility-meropenem.html) examples.
