Profile: USPublicHealthTravelHistory
Parent: Observation
Id: us-ph-travel-history
Title: "US Public Health Travel History"
Description: """This Observation profile represents a patient's travel history.

The following data for a patient can be recorded:

* travel history as a string, an address, or a coded location
* the date or period of time spent in the location (Observation.effectiveTime)
    * it is important to accurately capture the most accurate dates possible
    * the focus should be on date of arrival and date of departure
    * the concepts of dates as related to travel are especially useful for determining need for Federal Public Health Notifications (FPHNs) and these dates are used to alert foreign ministries of health about their residents who may have been contacts of cases, or if a flight that was outbound from the USA had an infectious traveler on it
* most uses will involve a single location (Observation.component), however, it is possible to specify multiple locations (but there is only a single effectiveTime)
    * this allows for cases where a patient cannot remember exact dates of travel (e.g. I traveled to London, Paris, and Berlin in July and August 2016)
* free text describing the travel history details and location (Observation.component.valueCodeableConcept.text element)
* use Observation.component.codeableConcept to record a coded location
* use Observationcomponent.extension to record a specific address
* where a more granular address than state is known (e.g. city, street) it is appropriate to use the extension to record an address rather than using the coded location"""





* . ^short = "US Public Health Travel History"
* code = $sct#420008001
* code MS
* code ^isModifier = false
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* effective[x] 1.. MS
* effective[x] ^short = "Date or period of time spent in the location"
* effective[x] ^definition = "It is important to accurately capture the most accurate dates possible. The focus should be on date of arrival and date of departure."
* effective[x] ^isModifier = false
* hasMember only Reference(USPublicHealthTransportationDetails or USPublicHealthExposureContactInformation)
* hasMember MS
* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    travelLocation 1..* MS and
    travelPurpose 0..* MS
* component[travelLocation] ^short = "Travel location"
* component[travelLocation] ^definition = "Location of travel"
* component[travelLocation].extension MS
* component[travelLocation].extension ^slicing.discriminator.type = #value
* component[travelLocation].extension ^slicing.discriminator.path = "url"
* component[travelLocation].extension ^slicing.rules = #open
* component[travelLocation].extension contains USPublicHealthAddressExtension named travelHistoryAddress 0..1 MS
* component[travelLocation].extension[travelHistoryAddress] ^short = "Travel history address"
* component[travelLocation].extension[travelHistoryAddress] ^definition = "Where the patient traveled to as an address e.g.country, city, street address if applicable. At the least, address must contain the country."
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].code MS
* component[travelLocation].value[x] only CodeableConcept
* component[travelLocation].value[x] MS
* component[travelLocation].value[x].coding MS
* component[travelLocation].value[x].coding from PHVS_GeographicLocationHistory_CDC (extensible)
* component[travelLocation].value[x].coding ^binding.description = "Geographical Location History"
* component[travelLocation].value[x].text MS
* component[travelPurpose] ^short = "Purpose of travel"
* component[travelPurpose] ^definition = "Purpose of travel"
* component[travelPurpose].code = $sct#280147009
* component[travelPurpose].code MS
* component[travelPurpose].value[x] 1.. MS
* component[travelPurpose].value[x] only CodeableConcept
* component[travelPurpose].value[x] from PHVS_TravelPurpose_CDC (preferred)
* component[travelPurpose].value[x] ^binding.description = "Travel Purpose"