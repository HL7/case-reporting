[Previous Page - eRSD Jurisdictions CodeSystem Configuration](ersd_jurisdictions_codesystem_configuration.html)

This document details the generation of CQL rule filters

### Overview

Determining reportability for a particular event is a complex process involving multiple considerations. To support the possibility of additional participation in that process by sites producing data, condition-specific filter criteria, including condition-specific value sets, as well as jurisdiction-level configuration information can be made available as part of the eRSD specification.

The general structure of the reportability decision is organized by condition. For each condition, a set of criteria are defined that characterize evidence involved in the decision. These criteria reference data from various sources, including laboratories, clinics and hospitals (provider facilities), and vital records. The condition-specific criteria are expressed in terms of various categories of data, including demographics, diagnoses and problems, laboratory orders and results, medication and immunization information, and vital statistics. These criteria are then combined in different ways to produce rules. In this way, different jurisdictions can have different rules about what constitutes a reportable event, by specifying different combinations of condition-specific criteria. Reporting sites can then participate in the reportability decision by considering jurisdiction configuration for the jurisdiction of residence and the jurisdiction of care in which the event occurred.

### Reportable Condition Trigger Categories

Condition-specific criteria are expressed in terms of data elements and characterized using standard terminologies. These condition-specific criteria terminologies are collected into value sets in the following six categories:

```cql
valueset "Example Diagnosis/Problem Triggers": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example'
valueset "Example Immunizations Triggers": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-iztc-example'
valueset "Example Lab Order Test Name Triggers": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example'
valueset "Example Lab Observation Test Name Triggers": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-lrtc-example'
valueset "Example Medications Triggers": 'http://hl7.org/fhir/us/ecr/ValueSet/valueset-mrtc-example'
valueset "Example Organism Substance Triggers": "http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
```

### Reportable Condition Trigger Representation within FHIR

These categories can be expressed within CQL as:

```cql
define "Condition Diagnosis/Problem Data":
  [Condition: code in "Example Diagnosis/Problem Triggers"] DX
    where DX.clinicalStatus in { 'active', 'recurrence', 'relapse' }
      and DX.verificationStatus in { 'unconfirmed', 'provisional', 'differential', 'confirmed' }

define "Encounter Diagnosis/Problem Data":
  [Encounter: reasonCode in "Example Diagnosis/Problem Triggers"] DX
    where DX.status in { 'arrived', 'triaged', 'in-progress', 'onleave', 'finished' }

define "Diagnosis/Problem Data":
  "Condition Diagnosis/Problem Data"
    union "Encounter Diagnosis/Problem Data"

define "Immunizations Data":      
  [Immunization: vaccineCode in "Example Immunizations Triggers"] IZ
    where IZ.status = 'completed'

define "Lab Order Test Name Data":
  [ServiceRequest: code in "Example Lab Order Test Name Triggers"] LO
    where LO.status in { 'draft', 'active', 'completed' }
      and LO.intent in { 'proposal', 'plan', 'order', 'original-order', reflex-order', 'filler-order', 'instance-order' }

define "Lab Observation Test Name Data":      
  [Observation: code in "Example Lab Observation Test Name Triggers"] LR
    where LR.status in { 'registered', 'preliminary', 'final', 'amended' }

define "Medications Data":  
  [MedicationAdministration: medicationCodeableConcept in "Example Medications Triggers"] MR
    where MR.status in { 'active', 'completed' }

define "Organism Substance Data":  
  [Observation: code in "Example Organism Substance Triggers"] OS
    where OS.status in { 'registered', 'preliminary', 'final', 'amended' }
```

NOTE: The status checks in the above are not necessarily appropriate, it may be that the initial triggering should ignore status entirely, leaving a status check to the more detailed condition-specific criteria. More on this in the data category patterns discussion below.

### Condition-Specific Value Sets

As of the most recent release of the eRSD specification, condition-specific value sets are available that specify, per condition (by name currently, but planned to be by code) the value sets that are used within criteria for that condition. These value sets are identified by specifying the "focus" within the useContext. For example:

```json
"useContext": [
  {
    "code": {
      "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code": "focus"
    },
    "valueCodeableConcept": {
      "text": "Chlamydia"
    }
  }
],
```

NOTE: In addition to the condition, we will need to know the category in order to be able to accurately determine which resource template to use to construct the rule expression.

These condition-specific value sets can then be used to construct CQL expressions referencing the various categories:

```cql
valueset "VS: Chlamydia trachomatis Infection (Tests for Chlamydia trachomatis by Culture and Identification Method)": 'TBD'
valueset "VS: Chlamydia trachomatis Infection (Tests for Chlamydia trachomatis Nucleic Acid)": 'TBD'
valueset "VS: Chlamydia trachomatis Infection (Tests for Chlamydia trachomatis Antigen)": 'TBD'
valueset "VS: Chlamydia trachomatis Infection (Tests for Chlamydia species by Culture and Identification Method)": 'TBD'
valueset "VS: Chlamydia trachomatis Infection (Tests for Chlamydia species Nucleic Acid)": 'TBD'
valueset "Indeterminate or Equivocal Lab Result Value": 'TBD'
valueset "Negative or Undetected Lab Result Value": 'TBD'
```

NOTE: This needs to include value sets that are used across conditions as part of the criteria as well, the "Indeterminate or Equivocal Lab Result Value" and "Negative or Undetected Lab Result Value" value sets in this example.

### Data Categories

The reportability criteria are expressed in terms of a specific set of data categories (roughly analagous to the trigger categories, but slightly broader):

* **Demographic** Patient age, address
* **Clinical Diagnosis** Diagnosis entered on an encounter
* **Problem List** Condition entered on a problem list, with a specific status
* **Laboratory Test Order**
* **Laboratory Test Result** (test name, value, interpretation)
* **Medication Administration, Order, or Prescription**
* **Immunization Administration**
* **Vital Records** (death)
* **Epidemiologic**

For each of these categories, template CQL could be used to build a template expression for data elements used in criteria expressions. For example, for the Laboratory Test Result category, we could use a template:

```cql
define "<<Condition Name>> Laboratory Test Results":
  [Observation: <<Condition Valueset>>] O
    where O.status in { 'preliminary', 'final', 'amended', 'corrected' }
```

TODO: Need to identify the set of data patterns for each type of data category
This will involve walking through a representative sample of rules content and identifying the patterns of access for each of the data categories.

|DataTemplateId | Description |
| Active Diagnosis | Problem list items that are clinically active |
| Encounter Diagnosis | Encounter diagnosis codes |
| Negative lab result | Parameterizable query for this category of data |

### Data Criteria

With these building blocks, we can then construct criteria based on the criteria definitions. For example, consider the following negative test results criteria for Chlamydia:

* Negative results of tests for identification of Chlamydia trachomatis in a clinical specimen by organism-specific culture method, including identification tests performed on an isolate
* Negative results of tests for detection of Chlamydia trachomatis antigen in a clinical specimen by any organism-specific method
* Negative results of tests for detection of Chlamydia trachomatis nucleic acid in a clinical specimen by any organism-specific method
* Negative results of tests for identification of Chlamydia species in a clinical specimen by organism-specific culture method, including identification tests performed on an isolate
* Negative results of tests for detection of Chlamydia species antigen in a clinical specimen by any organism-specific method
* Negative results of tests for detection of Chlamydia species nucleic acid in a clinical specimen by any organism-specific method

Each of these criteria have an associated value set, and are referencing a particular data category. Combining these, we can generate appropriate CQL to express the rule:

```cql
define "Negative results of tests for identification of Chlamydia trachomatis in a clinical specimen by organism-specific culture method, including identification tests performed on an isolate":
  [Observation: VS: Chlamydia trachomatis Infection (Tests for Chlamydia trachomatis by Culture and Identification Method)] O
    where O.status in { 'preliminary', 'final', 'amended', 'corrected' }
      and (
        // TODO: More investigation into the Value here
        O.interpretation in "Indeterminate or Equivocal Lab Result Value"
          or O.value in "Indeterminate or Equivocal Lab Result Value"
      )
```

To support this generation, we need to identify, for each criteria of each condition, the data category, the associated condition-specific value set, and the criteria expression to be used. From the Chlamydia condition description on the RCKMS site, this rule is represented in the current platform as:

```drl
21.	Negative results of tests for identification of Chlamydia trachomatis in a clinical specimen by organism-specific culture method, including identification tests performed on an isolate (i.e., ‘negative’ culture results)
  IF
    Patient has lab result with test name of [VS: Chlamydia trachomatis Infection (Tests for Chlamydia trachomatis by Culture and Identification Method)]
    AND
    lab result value of [VS: Negative or Undetected Lab Result Value]
  THEN report
```

|CriteriaId | Description | Data Template Id | Condition Parameters (Condition-Specific Value Set for the Criteria) |
|xxx-123 | Chlamydial cervicitis and urethritis, and lymphogranuloma... | Diagnosis | 1.2.640... |

### Rules (Logic Sets)

NOTE: This is the most variable aspect of the system, so don't necessarily need this logic evaluated in every case. Could focus exclusively on the criteria that would indicate additional filtering, and by default a trigger match is potentially reportable, unless there is a condition-specific rule filter in place.

Individual data criteria can then be combined by jurisdictions in different ways to support the reportability determination. Criteria can be combined with:

* **S**: Sufficient, meaning that any of a set of criteria may be present. These are reflected by combining the results of individual criteria with `or`
* **N**: Necessary, meaning that each of a set of criteria must be present. These are reflected by combining the results of individual criteria with `and`
* **O**: One or more, used in conjunction with **N**, and meaning that in addition to the necessary criteria, one or more alternative criteria may be present. These are reflected by combining the **N** criteria and the result of the `or` of all the **O** criteria, with `and`

To support construction of the CQL representation of the rule, we need to identify the criteria and the combination method used for each criteria in the rule.

For example:

|Criteria |Combination Method |
|----|----|
|Chlamydial conjunctivitis (as diagnosis or active problem) |N |
|Patient age < 1 year |N |

For the Chlamydial conjunctivitis criteria:

```cql
define "Chlamydial conjunctivitis (as a diagnosis or active problem)":
  exists (
    [Encounter: reasonCode in "VS: Chlamydia trachomatis Infection [Conjunctivitis] (Disorders) (SNOMED)"]
    [Encounter: reasonCode in "VS: Chlamydia trachomatis Infection [Conjunctivitis] (Disorders) (ICD10CM)"]
  )
  or exists (
    [Diagnosis: "VS: Chlamydia trachomatis Infection [Conjunctivitis] (Disorders) (SNOMED)"]
      union [Diagnosis: "VS: Chlamydia trachomatis Infection [Conjunctivitis] (Disorders) (ICD10CM)"]
  ) Dx
    where Dx.clinicalStatus ~ "Active"
      and Dx.verificationStatus ~ "Confirmed"
```

And for the Patient age < 1 year criteria:

```cql
define "Patient age < 1 year":
  AgeInYears() < 1
```

And then combining them according to the combination method rules:

```cql
define "Chlamydial conjunctivitis (as a diagnosis or active problem) AND patient age < 1 year":
  "Chlamydial conjunctivitis (as a diagnosis or active problem)"
    and "Patient age < 1 year"
```

### Jurisdiction Determination

The final aspect of the decision is the configuration of different rules in different jurisdictions. Following the steps to this point, we have for each rule, an expression of CQL that returns true if the source data for the patient contains the configured criteria. Because reportability must be determined for both the jurisdiction of care and the jurisdiction of residence, we need to know Patient address, as well as the Location address where the care was provided. We access this information through the `Patient.address` element, and through the `Encounter.location.location` reference to a `Location` resource, and use the `address` element there.

Jurisdiction determination is a complex process, but a suitable determination algorithm for the local rules would be to use a zipcode if there is a jurisdiction configured for that zipcode, falling back to a state jurisdiction code. Note that this also needs to account for the possibility that a zipcode is in multiple jurisdictions, which would result in multiple reportability responses. Note that although this approach isn't 100% accurate, in that it will sometimes result in a report to a jurisdiction that will ultimately be determined not reportable, it at least provides a suitable first pass that can be evaluated locally.

To support local determination of jurisdiction, we need, for each jurisdiction, a unique identifier, a description, whether the jurisdiction is a state or local jurisdiction, and what the state and configured zipcodes are for that jurisdiction:

TODO: Define this codesystem (jurisdiction-types)
Jurisdiction Type:
BURROUGH
CITY
COUNTY
DISTRICT
PARISH
STATE

State/Territory is covered by the STATE code and any non-state code is considered "local" for the purposes of matching, and matching at the local level is always done by zipcode/postalcode.

Use State value set for the value of State column

|Identifier |Description |Type | State |Zipcodes |
|---|---|---|---|---|
|UT | Utah State Health Department |State | UT | 84057,84058,84059 |
|UTC | Utah County Health Department |Local | UT | 84057,84058,84059 |
|ID | Idaho |State | ID | |
|IDC | Idaho County Health Department |Local | ID | 83701 |

For a given event:
* If the event occurs in a zipcode that is configured, any local or state jurisdiction with that zipcode indicates a reportable event
* Otherwise, if the event occurs in a state that is configured, any state jurisdiction with that state indicates a reportable event

Event processing needs to know for jurisdiction of residence and jurisdiction of care, what rules to run

NOTE: The feature to provide a copy of a reportable event from a local jurisdiction to a state jurisdiction is implemented in the reporting platform, not part of this site-based jurisdiction determination logic

Given the above example configuration, the following examples illustrate the expected behavior, assuming that the jurisdiction or residence and the jurisdiction of care are the same:

Example 1: An event occurring in Orem UT, 84057
* { UT, UTC }

Example 2: An event occurring in Moab UT, 84532
* { UT }

Example 3: An event occurring in Boise ID, 83701
* { IDC }

Example 4: An event occurring in Idaho Falls ID, 83403
* { ID }

TODO: Create a profile of code system for inclusion in the ersd spec to describe how the jurisdiction code system works
TODO: Include documentation of the ersd code system and the configuration capabilities it enables described above
TODO: Include documentation of the GetJurisdictions algorithm to go from an Address to a set of applicable jurisdictions
TODO: Create tooling to generate the ersd-jurisdiction CodeSystem using the csv file as input
NOTE: CSV may have lowercase jurisdiction codes, convert those to uppercase for inclusion in the code system
NOTE: CSV will have uppercase state names for the value of the State column, convert those to US Core State Code value set codes for inclusion in the code system

### Jurisdiction Configuration

Once we know the set of rules, and the set of configurations of those rules for each jurisdiction, and the rules for determining which jurisdictions are applicable for patient and encounter data, then we can apply that information to construct a complete CQL expression of the site-specific reportability decision criteria. For example:

```cql
define "Chlamydial conjunctivitis (as a diagnosis or active problem) AND patient age < 1 year (with Jurisdictions)":
  "Chlamydial conjunctivitis (as a diagnosis or active problem) AND patient age < 1 year"
    and exists ((
      GetJurisdictionCodes(Patient.address)
        union GetJurisdictionCodes(GetLocation(Encounter.location.location))
    ) JC
      where JC in { 'A', 'B', 'C' }
```

Note that GetJurisdictionCodes will need to account for the possibility of multiple addresses for both the patient and location.
Note explicitly that since there is no requirement for address use, type, and period, the logic will ignore those elements of addresses and process for any address it is given.

In this example, assume a list of hypothetical jurisdictions 'A', 'B', and 'C' are all configured to report with this rule.

To construct this, we would need to identify, for each jurisdiction, which rules they are configured to run.

### Evaluation

The criteria for each condition can then be combined into a single, non-condition-specific expression that could be run on any event, and would return true if that event was reportable according to any condition-specific criteria configured for the jurisdictions of care and residence of the event:

```cql
define "IsReportable":
  "Chlamydial conjunctivitis (as a diagnosis or active problem) AND patient age < 1 year (with Jurisdictions)"
    or "Identification of Chlamydia species in a clinical specimen by culture method, including identification tests performed on an isolate (with Jurisdictions)"
    or <other Chlamydia condition criteria>...
    or <other condition criteria>...
```

[Next Page - Relationship to Other Standards](relationship_to_other_standards.html)