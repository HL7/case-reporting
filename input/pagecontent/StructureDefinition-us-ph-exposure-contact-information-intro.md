The type of exposure/contact is contained in Observation.code (environmental, activity, event, location, person, animal, etc.). If the exposure/contact is an entity (person, animal, location) then it is represented in Observation.focus which is a reference to a Patient, RelatedPerson, Location, Group, etc.. (An animal would be represented by a RelatedPerson that contains the [Extension Practitioner Animal Species](https://www.hl7.org/fhir/extension-practitioner-animalspecies.html). Free text information about the exposure/contact can be recorded in Observation.valueString and the date or period of exposure is held in Observation.effective[x]. If an address where the exposure/contact took place is known then it can be contained in the address-extension.

The following are some exposures that might be captured in this profile:
* Environmental exposures
** Living facilities
** Work facilities
** School facilities

* Contact exposures
** Person 
** Animal

* Event Exposures
** Sporting event
** Rally
** Wedding
** Activity