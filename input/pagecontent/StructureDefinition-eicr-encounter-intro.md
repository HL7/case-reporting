This profile is based on and further constrains the US Public Health Encounter profile.

A trigger on an encounter diagnosis is indicated by the eICR Trigger Code Flag Extension in the diagnosis.

Where a trigger occurs outside of an encounter set Encounter.class to "PHC2237”, system=”2.16.840.1.114222.4.5.274” (External Encounter) and omit period, participant, location, and serviceProvider. In this case, the responsible provider and facility information is contained in the eICR Composition.author.


| Data Element  | Note  |
|---|---|
| Encounter.location\[Location] | Facility: The facility in which care was provided when the case was triggered | 
| Encounter.location\[Location].identifier | Facility Id: Identification code for the facility in which care was provided when the case was triggered | 
| Encounter.location\[Location].type | Facility Type: The type of facility in which care was provided when the case was triggered |
| Encounter.location\[Location].address | Facility Address: The physical location of the facility in which care was provided when the case was triggered |
| Encounter.serviceProvider\[Organization]  | Healthcare Organization: The umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].identifier  | Healthcare Organization Id: Identification code for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].name  | Healthcare Organization Contact Name: The contact name for the for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].telecom  | Healthcare Organization Contact Telecom: A contact telecom address (phone, email, fax, etc.) for the umbrella organization under which the facility where care was provided operates  |
| Encounter.servicieProvider\[Organization].address  | Healthcare Organization Contact Address: The contact address for the umbrella organization under which the facility where care was provided operates  |





