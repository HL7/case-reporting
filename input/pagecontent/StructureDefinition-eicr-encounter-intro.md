This profile is based on and further constrains the US Public Health Encounter profile.

A trigger on an encounter diagnosis is indicated by the eICR Trigger Code Flag Extension in the diagnosis.

Where a trigger occurs outside of an encounter set Encounter.class to "PHC2237”, system=”2.16.840.1.114222.4.5.274” (External Encounter) and omit period, participant, location, and serviceProvider. In this case, the responsible provider and facility information is contained in the eICR Composition.author.

<table style="width:100%" border="1">
    <thead>
        <tr>
            <th style="width:auto">Data Element</th>
            <th>Note</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole]</td>
            <td>Provider: Provider responsible for the patient&#39;s care when the case was triggered.</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].practitioner[Practitioner].identifier</td>
            <td>Provider Id: Identifier of the provider responsible for the patient&#39;s care when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].location[Location].address</td>
            <td>Provider Address: Address of the provider responsible for the patient&#39;s care when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].telecom</td>
            <td>Provider Telecom: A telecom address (phone, email, fax, etc.) for the provider responsible for the patient&#39;s care when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].practitioner[Practitioner].identifier</td>
            <td>Provider Name: Name of the provider responsible for the patient&#39;s care when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].organization[Organization]</td>
            <td>Provider Facility/Office: The office or facility of the provider responsible for the patient&#39;s care when the case was triggered (where care was provided to the patient)</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].organization[Organization].name</td>
            <td>Provider Facility/Office Name: The name of the office or facility of the provider responsible for the patient&#39;s care when the case was triggered (where care was provided to the patient)</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].organization[Organization].address</td>
            <td>Provider Facility/Office Address: The address of the office or facility of the provider responsible for the patient&#39;s care when the case was triggered (where care was provided to the patient)</td>
        </tr>
        <tr>
            <td>Encounter.participant:sliceResponsibleProvider.individual[PractitionerRole].organization[Organization].telecom</td>
            <td>Provider Facility/Office Address: The telecom of the office or facility of the provider responsible for the patient&#39;s care when the case was triggered (where care was provided to the patient)</td>
        </tr>
        <tr>
            <td>Encounter.location[Location]</td>
            <td>Facility: The facility in which care was provided when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.location[Location].name</td>
            <td>Facility Name: The name of the facility in which care was provided when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.location[Location].identifier</td>
            <td>Facility Id: Identification code for the facility in which care was provided when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.location[Location].type</td>
            <td>Facility Type: The type of facility in which care was provided when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.location[Location].address</td>
            <td>Facility Address: The physical location of the facility in which care was provided when the case was triggered</td>
        </tr>
        <tr>
            <td>Encounter.serviceProvider[Organization]</td>
            <td>Healthcare Organization: The umbrella organization under which the facility where care was provided operates</td>
        </tr>
        <tr>
            <td>Encounter.serviceProvider[Organization].identifier</td>
            <td>Healthcare Organization Id: Identification code for the umbrella organization under which the facility where care was provided operates</td>
        </tr>
        <tr>
            <td>Encounter.serviceProvider[Organization].name</td>
            <td>Healthcare Organization Contact Name: The contact name for the for the umbrella organization under which the facility where care was provided operates</td>
        </tr>
        <tr>
            <td>Encounter.serviceProvider[Organization].telecom</td>
            <td>Healthcare Organization Contact Telecom: A contact telecom address (phone, email, fax, etc.) for the umbrella organization under which the facility where care was provided operates</td>
        </tr>
        <tr>
            <td>Encounter.serviceProvider[Organization].address</td>
            <td>Healthcare Organization Contact Address: The contact address for the umbrella organization under which the facility where care was provided operates</td>
        </tr>
    </tbody>
</table>












