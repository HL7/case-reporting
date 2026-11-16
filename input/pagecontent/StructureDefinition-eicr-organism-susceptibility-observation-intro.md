This profile is based on and further constrains the [US Public Health Laboratory Result Observation]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-lab-result-observation.html) profile.

Each susceptibility observation is referenced (hasMember) from the [eICR Organism Detected Observation](StructureDefinition-eicr-organism-detected-observation.html) for the organism that was tested.

### Population of Observation.specimen

The population of Observation.specimen follows the FHIR [Diagnostics module (Microbiology)]({{site.data.fhir.path}}diagnostics-module.html#microbiology) guidance:

> All Observations either reference the overall Specimen or a Specimen Isolate as appropriate. The Specimen Isolate references the Specimen it was isolated from using Specimen.parent.

For organism susceptibility:

* Observation.specimen SHALL reference the [eICR Organism Isolate Specimen](StructureDefinition-eicr-organism-isolate-specimen.html) representing the organism that was tested (the derived isolate), not the original clinical specimen (for example, the throat swab or urine sample).
* The isolate Specimen references the original clinical specimen it was isolated from using Specimen.parent.
* The associated eICR Organism Detected Observation references the original clinical specimen in its Observation.specimen.

This makes each susceptibility observation self-contained: the isolate identifies what was tested, and following Specimen.parent identifies the source specimen, body site, and collection details.

### Value and interpretation

Observation.value[x] is not constrained to a single data type. Minimum inhibitory concentration (MIC) results reported against LOINC MIC susceptibility codes may be numeric (Quantity) or textual (string); other susceptibility methods may report a coded (CodeableConcept) result.

Observation.interpretation is bound (required) to the [v3 ObservationInterpretationSusceptibility](http://terminology.hl7.org/ValueSet/v3-ObservationInterpretationSusceptibility) value set (for example, Susceptible, Intermediate, Resistant, Non-susceptible, Susceptible-dose dependent).

See the [Meropenem Susceptibility](Observation-observation-eicr-organism-susceptibility-meropenem.html), [Klebsiella oxytoca Isolate](Specimen-specimen-eicr-klebsiella-oxytoca-isolate.html), [Urine Specimen](Specimen-specimen-eicr-urine-eve-everywoman.html), and [Organism Detected](Observation-observation-eicr-organism-detected-klebsiella-oxytoca.html) examples.
