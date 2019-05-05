---
title: StructureDefinition-eicr-travel-history-intro
layout: default
active: StructureDefinition-eicr-travel-history-intro
---

The Electronic Case Reporting Travel History profile establishes the core elements, extensions, vocabularies and value sets for representing the following for electronic case reporting:

-  The Initial Case Report subject's travel history as a string, an address or a coded location.
-  Observation.effectiveTime contains the date or period of time spent in the location.
-  It is possible to have multiple Observation.components, each containing a different location, but there is only a single effectiveTime. This allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016). However, most uses will involve a single component (location).
-  Free text describing the travel history details and location can be entered using the Observation.component.valueCodeableConcept.text element
-  Use component.codeableConcept to record a coded location
-  Use component.extension to record a specific address