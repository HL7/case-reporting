Instance: observation-travel-history-eve-everywoman-201610
InstanceOf: USPublicHealthTravelHistory
Title: "Travel History Observation Example: observation-travel-history-eve-everywoman-201610"
Description: "Example of Travel History Observation profile (Eve Everywoman - October 2016)"
Usage: #example
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectivePeriod.start = "2016-10-22"
* effectivePeriod.end = "2016-10-30"
* component.extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-address-extension"
* component.extension.valueAddress.line = "1170 N Rancho Robles Rd"
* component.extension.valueAddress.city = "Oracle"
* component.extension.valueAddress.state = "AZ"
* component.extension.valueAddress.postalCode = "8562"
* component.extension.valueAddress.country = "US"
* component.code = $v3-ParticipationType#LOC "Location"