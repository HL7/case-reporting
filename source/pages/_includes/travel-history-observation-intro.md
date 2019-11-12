This Observation profile represents the following for eCR:

* the Initial Case Report subject's travel history as a string, an address, or a coded location
* Observation.effectiveTime contains the date or period of time spent in the location
* it is possible to have multiple Observation.components, each containing a different location, but there is only a single effectiveTime. This allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016). However, most uses will involve a single component (location)
* free text describing the travel history details and location can be entered using the Observation.component.valueCodeableConcept.text element
* use component.codeableConcept to record a coded location
* use component.extension to record a specific address
* where a more granular address than state is known (e.g. city, street) it is appropriate to use the extension to record an address rather than using the coded location.