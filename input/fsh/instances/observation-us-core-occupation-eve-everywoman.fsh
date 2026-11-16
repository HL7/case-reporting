Instance: observation-us-core-occupation-eve-everywoman
InstanceOf: USCoreObservationOccupationProfile
Title: "Observation - US Core Occupation for Eve Everywoman"
Description: "Example of a US Core Observation Occupation profile for Eve Everywoman as a certified nursing assistant in home nursing services. This is the USCDI-constrained alternative to the Occupational Data for Health (ODH) Past or Present Job profile."
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#11341-5 "History of Occupation"
* subject = Reference(Patient/patient-ecr-eve-everywoman) "Eve Everywoman"
* effectivePeriod.start = "2015-04-24"
* valueCodeableConcept = $PHOccupationalDataForHealthODH#31-1014.00.007136 "Certified Nursing Assistant (CNA) [Nursing Assistants]"
* component[industry].code = $loinc#86188-0 "History of Occupation industry"
* component[industry].valueCodeableConcept = $PHOccupationalDataForHealthODH#621610.008495 "Home nursing services"
