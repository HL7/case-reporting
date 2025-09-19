Profile: USPublicHealthCharacteristicsOfHomeEnvironment
Parent: Observation
Id: us-ph-characteristics-of-home-environment
Title: "US Public Health Characteristics of Home Environment"
Description: """This Observation profile represents characteristics of the patient's home environment.

Such characteristics include, but are not limited to, type of residence (trailer, single family home, assisted living), living arrangement (e.g., alone, with parents), and housing status (e.g., evicted, homeless, home owner). Congregate living situations would be represented in this profile - such shared housing includes a broad range of settings, such as apartments, condominiums, student or faculty housing, national and state park staff housing, transitional housing, and domestic violence and abuse shelters."""





* . ^short = "US Public Health Characteristics of Home Environment"
* code = $loinc#75274-1 "Characteristics of residence"
* code MS
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from ResidenceAndAccommodationType (extensible)
* value[x] ^short = "Characteristic of home environment"
* value[x] ^definition = "Characteristic of home environment"
* value[x] ^example.label = "Example for \"homeless\""
* value[x] ^example.valueCodeableConcept = $sct#32911000 "Homeless"
* value[x] ^binding.description = "Residence and Accommodation Type"