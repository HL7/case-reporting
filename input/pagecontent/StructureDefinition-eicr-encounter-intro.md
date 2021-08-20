This profile is based on and further constrains the US Public Health Encounter profile.

A trigger on an encounter diagnosis is indicated by the eICR Trigger Code Flag Extension in the diagnosis.

Where a trigger occurs outside of an encounter set Encounter.class to "PHC2237”, system=”2.16.840.1.114222.4.5.274” (External Encounter) and omit period, participant, location, and serviceProvider. In this case, the responsible provider and facility information is contained in the eICR Composition.author.