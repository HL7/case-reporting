### STU 3 (3.0.0)


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
            <td>eICR Composition</td>
            <td>Add optional Admission Diagnosis Section and Discharge Diagnosis Section slices to align the eICR Composition sections with the CDA eICR R3.1 document sections</td>
        </tr>
        <tr>
            <td>Background and Use Cases</td>
            <td>Add a <a href="background_and_use_cases.html">Background and Use Cases</a> page containing the background, scope, use case flow, assumptions, pre- and post-conditions, actors and roles, and eICR and Reportability Response scenarios previously only available in Volume 1 of the CDA eICR and CDA RR IGs</td>
        </tr>
        <tr>
            <td>eICR Composition</td>
            <td>Support both the Occupational Data for Health (ODH) Past or Present Job profile and the US Core Observation Occupation Profile for current occupation and industry in the Social History Section (the ODH Past or Present Job entry slice is renamed to Occupation and accepts either profile). Add a US Core Occupation example.</td>
        </tr>
        <tr>
            <td>Organism / Susceptibility Result Matching</td>
            <td>Add the <a href="StructureDefinition-eicr-organism-isolate-specimen.html">eICR Organism Isolate Specimen</a> profile (a derived isolate linked to its clinical specimen through Specimen.parent). The eICR Organism Susceptibility Observation now requires a reference to the isolate specimen so each susceptibility result is self-contained; the eICR Organism Detected Observation keeps the hasMember grouping, references the clinical specimen, and now requires the organism name (value[x] 1..1, CodeableConcept or string). Add guidance on populating Observation.specimen to the three profiles, and add urine and isolate Specimen examples.</td>
        </tr>
        <tr>
            <td>eICR Composition</td>
            <td>Allow every section, including optional sections, to state that it has no content: section.emptyReason is Must Support with guidance, and the Plan of Treatment, Immunizations, Procedures, and Pregnancy Sections no longer require an entry.</td>
        </tr>
        <tr>
            <td>eICR Composition</td>
            <td>Admission Medications Section entries now reference the US Public Health MedicationAdministration profile (instead of the base MedicationAdministration resource) and may also reference MedicationStatement and the US Core MedicationRequest profile. Medications Section entries likewise now reference the US Public Health MedicationAdministration profile.</td>
        </tr>
        <tr>
            <td>eICR Organism Susceptibility Observation</td>
            <td>Bind code (extensible) to the new VSAC <a href="http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1280.3">Antimicrobial Susceptibility Test Codes</a> value set instead of the broad US Core laboratory test codes. Bind interpretation (required) to the <a href="http://terminology.hl7.org/ValueSet/v3-ObservationInterpretationSusceptibility">v3 ObservationInterpretationSusceptibility</a> value set. The value data type remains unconstrained so that numeric or textual MIC results can be reported.</td>
        </tr>
    </tbody>
</table>

|JIRA Ticket|Ticket Description|
|---------|----------|
| [FHIR-56276](https://jira.hl7.org/browse/FHIR-56276) | Added Admission Diagnosis Section and Discharge Diagnosis Section to the eICR Composition so its sections match the CDA eICR IG |
| [FHIR-54720](https://jira.hl7.org/browse/FHIR-54720) | Copied the background and use case explanatory material from Volume 1 of the CDA eICR and CDA RR IGs into a new Background and Use Cases page so the IG is self-contained |
| [FHIR-54591](https://jira.hl7.org/browse/FHIR-54591) | Retained the ODH occupation profiles and added support for the US Core Observation Occupation Profile in the eICR Composition Social History Section |
| [FHIR-54422](https://jira.hl7.org/browse/FHIR-54422) | Retained the ODH occupation profiles and added support for the US Core Observation Occupation Profile in the eICR Composition Social History Section (same resolution as FHIR-54591) |
| [FHIR-54295](https://jira.hl7.org/browse/FHIR-54295) | Retained the ODH occupation profiles and added support for the US Core Observation Occupation Profile in the eICR Composition Social History Section (same resolution as FHIR-54591) |
| [FHIR-54439](https://jira.hl7.org/browse/FHIR-54439) | Kept hasMember modelling for organism susceptibility and added a derived eICR Organism Isolate Specimen (Specimen.parent) that each susceptibility observation references, following the Diagnostics module linking pattern |
| [FHIR-54348](https://jira.hl7.org/browse/FHIR-54348) | Aligned organism susceptibility modelling with the FHIR R5 Diagnostics module pattern: hasMember linking from the organism detected observation and a derived eICR Organism Isolate Specimen linked to the original specimen through Specimen.parent (same resolution as FHIR-54439) |
| [FHIR-54424](https://jira.hl7.org/browse/FHIR-54424) | Admission Medications Section entries changed to the US Public Health MedicationAdministration profile, with MedicationStatement and US Core MedicationRequest also allowed; Medications Section entries also changed to the US Public Health MedicationAdministration profile |
| [FHIR-54349](https://jira.hl7.org/browse/FHIR-54349) | Bound eICR Organism Susceptibility Observation.interpretation to the v3 ObservationInterpretationSusceptibility value set; left value[x] unconstrained to allow numeric or textual MIC results |
| [FHIR-54350](https://jira.hl7.org/browse/FHIR-54350) | Added guidance to the eICR Organism Susceptibility Observation (and the related Organism Detected Observation and Organism Isolate Specimen profiles) on populating Observation.specimen: susceptibility observations reference the isolate Specimen, which references the original specimen through Specimen.parent, per the Diagnostics module Microbiology guidance |
| [FHIR-54347](https://jira.hl7.org/browse/FHIR-54347) | Made eICR Organism Detected Observation.value[x] required (1..1) and constrained it to CodeableConcept or string |
| [FHIR-54302](https://jira.hl7.org/browse/FHIR-54302) | Ensured every eICR Composition section, including optional sections, can state that it has no content (section.emptyReason, no sections require an entry), with guidance and an example |
| [FHIR-54420](https://jira.hl7.org/browse/FHIR-54420) | Bound eICR Organism Susceptibility Observation.code (extensible) to the new VSAC Antimicrobial Susceptibility Test Codes value set (2.16.840.1.113762.1.4.1280.3) |


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
        <tr>
            <td>Design Considerations</td>
            <td>Add <a href="design_considerations.html#relevant-time-period-for-retrieving-data">Relevant Time Period for Retrieving Data</a></td>
        </tr>
        <tr>
            <td>Artifact Overview</td>
            <td>Add an <a href="artifact-overview.html">Artifact Overview</a> page</td>
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
