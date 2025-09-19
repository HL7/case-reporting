Profile: USPublicHealthTransportationDetails
Parent: Observation
Id: us-ph-transportation-details
Title: "US Public Health Transportation Details"
Description: "This Observation profile represents transportation details such as the type of transport (plane, train, ship, etc.) along with any associated information (e.g. name of cruise ship, flight number, airport, seat number, cabin number, etc.)."





* . ^short = "US Public Health Transportation Details"
* category 1..1 MS
* category = $v3-ActClass#TRNS
* category ^short = "Transportation"
* code 1..1 MS
* code = $sct#424483007
* code ^short = "Transportation details"
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^short = "Date or period of transportation"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from TransportVehicleType (required)
* value[x] ^short = "Type of transport vehicle"
* value[x] ^definition = "All codes in the hierarchy under: SNOMED: 36030000 |Transport vehicle, device (physical object)|"
* value[x] ^binding.description = "Transport Vehicle Type"
* component MS
* component ^short = "Information about the mode of transportation (ship name, flight number, seat number, etc.)"
* component ^definition = "Information about the mode of transportation (ship name, flight number, seat number, etc.)"
* component.code MS
* component.code ^short = "Type of transportation information"
* component.code ^definition = "Type of transportation information (ship name, flight number, seat number, etc.)"
* component.value[x] 1.. MS
* component.value[x] only Quantity or CodeableConcept or string or integer or time or dateTime or Period