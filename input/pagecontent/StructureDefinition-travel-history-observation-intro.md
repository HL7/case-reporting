The following data for a patient can be recorded:

* travel history as a string, an address, or a coded location
* the date or period of time spent in the location (Observation.effectiveTime)
* most uses will involve a single location (Observation.component), however, it is possible to specify multiple locations (but there is only a single effectiveTime)
    * this allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016) 
* free text describing the travel history details and location (Observation.component.valueCodeableConcept.text element)
* use Observation.component.codeableConcept to record a coded location
* use Observationcomponent.extension to record a specific address
* where a more granular address than state is known (e.g. city, street) it is appropriate to use the extension to record an address rather than using the coded location