### STU 3 - Ballot (3.0.0)


#### Changes

<table border="1">
    <thead>
       <tr style="background-color:#DCDCDC">
            <th style="text-align: center; vertical-align: middle;">Artifact</th>
            <th style="text-align: center; vertical-align: middle;">Change Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Whole IG</td>
            <td>Update dependency on US Core to <a href="https://hl7.org/fhir/us/core/STU6.1/index.html">US Core 6.1.0</a></td>
        </tr>
        <tr>
            <td>Whole IG</td>
            <td>Remove the US Public Health Profile Library profiles from this IG. Align with, depend on, and update references and examples to the analogous profiles in the latest version of the US Public Health Profiles Library <a href="https://build.fhir.org/ig/HL7/fhir-us-ph-library/en/index.html">US Public Health Profiles Library 2.0.0</a> Note: The ballot version depends on a snapshot of the USPHPL, this will be updated to the published version before publication of this IG.</td>
        </tr>
        <tr>
            <td>Whole IG</td>
            <td>Update to the latest version of the Occupational Data for Health FHIR IG <a href="https://hl7.org/fhir/us/odh/">HL7 FHIR Profile: Occupational Data for Health (ODH), Release 1, STU 1.3 (Standard for Trial Use)</a></td>
        </tr>
        <tr>
            <td>Procedure Triggers</td>
            <td>Remove Procedure Trigger profiles</td>
        </tr>
        <tr>
            <td>Organism / Susceptibilty Result Matching</td>
            <td>Add profiles to allow susceptibility testing result to match the organisms tested</td>
        </tr>
    </tbody>
</table>

|JIRA Ticket|Ticket Description|
|---------|----------|
| [FHIR-38836](https://jira.hl7.org/browse/FHIR-38836) | Updated example id and url values in eRSD Specification Bundle example |

### Second Techincal Correction - STU 2.1.2 (2.1.2)


|JIRA Ticket|Ticket Description|
|---------|----------|
| [FHIR-46585](https://jira.hl7.org/browse/FHIR-46585) | Update mapping/description type guidance |
| [FHIR-46686](https://jira.hl7.org/browse/FHIR-46686) | Correct misapplied jira: [FHIR-37429](https://jira.hl7.org/browse/FHIR-37429) |
| [FHIR-46687](https://jira.hl7.org/browse/FHIR-46687) | eICR Composition required sections - relax required (1..x) entry |


### First Techincal Correction - STU 2.1.1 (2.1.1)


|JIRA Ticket|Ticket Description|
|---------|----------|
| [FHIR-41711](https://jira.hl7.org/browse/FHIR-41711) | Remove SMART on FHIR Backend Services Authorization section from "The Specification" page |


### Unballoted STU Update - STU 2.1 (2.1)


|JIRA Ticket|Ticket Description|
|---------|----------|
| [FHIR-37438](https://jira.hl7.org/browse/FHIR-37438) | Add a MedicationAdministration profile |
| [FHIR-37437](https://jira.hl7.org/browse/FHIR-37437) | Update Gender Identity extension to latest US Core Gender Identity extension |
| [FHIR-37436](https://jira.hl7.org/browse/FHIR-37436) | Update Facility Id (location.identifier) from 0..1 to 1..1 |
| [FHIR-37435](https://jira.hl7.org/browse/FHIR-37435) | Update Capability Statements |
| [FHIR-37434](https://jira.hl7.org/browse/FHIR-37434) | Add language around the dependency on USPHPL |
| [FHIR-37433](https://jira.hl7.org/browse/FHIR-37433) | Update binding to tribal affiliation value set from required to extensible |
| [FHIR-37432](https://jira.hl7.org/browse/FHIR-37432) | Update to new Travel Purpose value set  |
| [FHIR-37431](https://jira.hl7.org/browse/FHIR-37431) | Update IG with guidance around off hours/long encounters triggering |
| [FHIR-37430](https://jira.hl7.org/browse/FHIR-37430) | Add FHIR supportingInfo extension to Relevant Reportable Condition Observation |
| [FHIR-37429](https://jira.hl7.org/browse/FHIR-37429) | Add Specimen type |
| [FHIR-37428](https://jira.hl7.org/browse/FHIR-37428) | Update language in IG around rules application location |
| [FHIR-37427](https://jira.hl7.org/browse/FHIR-37427) | Update implementation guide to remove mentions of proprietary infrastruction/system names |
| [FHIR-37421](https://jira.hl7.org/browse/FHIR-37421) | Loop timing offset changes |
| [FHIR-37420](https://jira.hl7.org/browse/FHIR-37420) | Need a mechanism to distinguish specification and value set libraries other than by profile |
| [FHIR-37419](https://jira.hl7.org/browse/FHIR-37419) | Remove redundant value set slices from specification and supplemental library profiles |
| [FHIR-36776](https://jira.hl7.org/browse/FHIR-36776) | Characterize the focus lsice for useContext in a us-ph-valueset |
| [FHIR-36663](https://jira.hl7.org/browse/FHIR-36663) | Add a relatedData extension to the eRSD PlanDefinition profile |
| [FHIR-36662](https://jira.hl7.org/browse/FHIR-36662) | Clarify distribution approaches for eRSD |
| [FHIR-36661](https://jira.hl7.org/browse/FHIR-36661) | Profile bundle-level examples for the specification and supplemental bundles |
| [FHIR-36660](https://jira.hl7.org/browse/FHIR-36660) | Add a routine vs emergent indicator for value sets |
| [FHIR-36658](https://jira.hl7.org/browse/FHIR-36658) | Add missing slices for supplemental and specification profiles |
| [FHIR-36171](https://jira.hl7.org/browse/FHIR-36171) | Add ODH Employment Status |
| [FHIR-33054](https://jira.hl7.org/browse/FHIR-33054) | eCR - eRSD Query Option |
