# case-reporting
This project will determine and document a core, "Population/Public Health Case" standard for use in reporting from Electronic Health Records (EHR) to health departments and a "Reportability Response Report" from health departments to EHRs.

This repository consists of:

- Source material
  - FHIR Conformance Resources (StructureDefinitions, CodeSystem, ValueSet, etc)
  - Examples
  - Markdown and HTML files which provide the context and guidance
  - Definitions file for configuring the publication tooling
  - bash scripts for publication of the IG using the [IG-Publisher tool](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)
  - Publication output files (in the `docs` folder)
  
In order to Run these source files using the IG-Publisher another module is needed which contains the templates and static html files for created this ig.

TODO: add module for publishing the IG
