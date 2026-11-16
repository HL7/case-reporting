This profile is based on and further constrains the [US Public Health Specimen]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-specimen.html) profile.

It represents a microbial isolate derived from a clinical specimen, following the FHIR [Diagnostics module (Microbiology)]({{site.data.fhir.path}}diagnostics-module.html#microbiology) pattern in which a Specimen Isolate references the Specimen it was isolated from using Specimen.parent.

* Specimen.type is fixed to SNOMED CT 119303007 (Microbial isolate specimen).
* Specimen.parent SHALL reference the original clinical specimen (a [US Public Health Specimen]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-specimen.html)) from which the organism was isolated.
* Each [eICR Organism Susceptibility Observation](StructureDefinition-eicr-organism-susceptibility-observation.html) references the isolate in its Observation.specimen.

See the [Klebsiella oxytoca Isolate](Specimen-specimen-eicr-klebsiella-oxytoca-isolate.html) and [Urine Specimen](Specimen-specimen-eicr-urine-eve-everywoman.html) examples.
