Contained in the Encounter.participant is the provider in charge of care (represented by the PractitionerRole.Practitioner) and the provider facility (represented by the PractitionerRole.Organization). The location (facility) in which care was provided when the case was triggered is contained in the encounter.location.

A trigger on an encounter diagnosis is indicated by the eICR Trigger Code Flag Extension in the diagnosis.

Where a trigger occurs outside of an encounter use code="PHC2237" \| system="2.16.840.1.114222.4.5.274" (External Encounter) and omit period, participant, location, and serviceProvider. In this case, the responsible provider and facility information is contained in the eICR Composition.author.