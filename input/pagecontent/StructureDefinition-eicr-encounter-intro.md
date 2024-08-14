This profile is based on and further constrains the US Public Health Encounter profile.

A trigger on an encounter diagnosis is indicated by the eICR Trigger Code Flag Extension in the diagnosis.

Where a trigger occurs outside of an encounter set Encounter.class to "PHC2237”, system=”2.16.840.1.114222.4.5.274” (External Encounter) and omit period, participant, location, and serviceProvider. In this case, the responsible provider and facility information is contained in the eICR Composition.author.

| Data Element  | Note  |
|---|---|
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole] | Provider: Provider responsible for the patient's care when the case was triggered.  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].practitioner\[Practitioner].identifier | Provider Id: Identifier of the provider responsible for the patient's care when the case was triggered  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].location\[Location].address | Provider Address: Address of the provider responsibe for the patient's care when the case was triggered  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].telecom |  Provider Telecom: A telecom address (phone, email, fax, etc.) for the provider responsibe for the patient's care when the case was triggered |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].practitioner\[Practitioner].identifier | Provider Name: Name of the provider responsibe for the patient's care when the case was triggered  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].organization\[Organization] | Provider Facility/Office: The office or facility of the provider responsible for the patient's care when the case was triggered (not necessarily where care was provided to the patient)  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].organization\[Organization].name | Provider Facility/Office Name: The name of the office or facility of the provider responsible for the patient's care when the case was triggered (not necessarily where care was provided to the patient)  |
| Encounter.participant:sliceResponsibleProvider.individual\[PractitionerRole].organization\[Organization].address | Provider Facility/Office Address: The address of the office or facility of the provider responsible for the patient's care when the case was triggered (not necessarily where care was provided to the patient)  |
| Encounter.location\[Location] | Facility: The facility in which care was provided when the case was triggered | 
| Encounter.location\[Location].identifier | Facility Id: Identification code for the facility in which care was provided when the case was triggered | 
| Encounter.location\[Location].type | Facility Type: The type of facility in which care was provided when the case was triggered |
| Encounter.location\[Location].address | Facility Address: The physical location of the facility in which care was provided when the case was triggered |
| Encounter.serviceProvider\[Organization]  | Healthcare Organization: The umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].identifier  | Healthcare Organization Id: Identification code for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].name  | Healthcare Organization Contact Name: The contact name for the for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].telecom  | Healthcare Organization Contact Telecom: A contact telecom address (phone, email, fax, etc.) for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].address  | Healthcare Organization Contact Address: The contact address for the umbrella organization under which the facility where care was provided operates  |












