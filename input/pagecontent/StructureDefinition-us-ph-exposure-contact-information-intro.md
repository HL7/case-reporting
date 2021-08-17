The type of exposure/contact is contained in Observation.code (environmental, activity, event, location, person, animal, etc.). If the exposure/contact is an entity (person, animal, location) then it is represented in Observation.focus which is a reference to a Patient, RelatedPerson, Location, Group, etc.. (An animal would be represented by a RelatedPerson that contains the Extension Practitioner Animal Species). This focus contains either:
* the patient's contact with an entity (person, animal, or substance) or presence at a location where exposure to an agent could have occurred (aquisition exposure)
* the patient's contact with an entity (person, animal, or substance) or presence at a location where transmission from the patient could have occurred (transmission exposure)

Free text information about the exposure/contact can be recorded in Observation.valueString and the date or period of exposure is held in Observation.effective[x]. If an address where the exposure/contact took place is known then it can be contained in the address-extension.

The agent of concern in the exposure is recorded in Observation.component.

The following are some exposures that might be captured in this profile:

* Environmental exposures
    * Living facilities
    * Work facilities
    * School facilities
* Contact exposures
    * Person
    * Animal
* Event Exposures
    * Sporting event
    * Rally
    * Wedding
    * Activity