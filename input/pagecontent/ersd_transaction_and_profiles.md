### electronic Reporting and Surveillance Distribution (eRSD) Transaction and Profiles

The eRSD transaction includes a constrained FHIR PlanDefinition resource profile and a family of actions. It supports the distribution of reporting guidance and parameters, trigger code value sets, and more complex reporting rules and clinician / reporter support resources. This work seeks to align with developing public health guidelines that cover the same conditions. The PlanDefinition includes guidance for the overall orchestration of electronic case reporting. Each member of the family of actions defined in the [US Public Health PlanDefinition Action Codes]({{site.data.fhir.ver.hl7fhirusphlibrary}}/CodeSystem-us-ph-codesystem-plandefinition-actions.html) code system aligns with what may be different healthcare information systems or modules involved in reporting. The narrative elements of this profile will be used to help structure and guide implementation until EHRs have the ability to automatically consume them.

The distribution of case reporting specifications involves two systems, the Implementing System (typically an Electronic Health Record (EHR)) and the Specification Repository, a repository that manages reporting specifications and the versions of those specifications over time:

<img style="width:100%" src="ersd-transaction-system-overview.png"/>

Conceptually, there are three transactions involved in the distribution of eRSD specifications:

1. Notification - The Specification Repository notifies Implementation System(s) that there is a new version of a reporting specification available
2. Request - The Implementation System requests a specific version of a reporting specification
3. Response - The Specification Repository responds to a request, providing the package containing a specific version of a reporting specification.

Notification may be accomplished in multiple ways such as simple email or text notifications.

Similarly, the Request and Response transactions may be implemented in multiple ways, including HTTP file download, as well as API access to a FHIR server acting as a repository.

At this time, this implementation guide is only prescriptive about the payload of the Response transaction, as defined by the following sections. We seek implementer feedback on the usefulness of more formal specification of these transactions.

#### eRSD Specifications

The eRSD specification is structured into two groups to facilitate two different levels of implementation of suspected reportability criteria:

1. Triggering - Suspected reportability criteria only involve data elements and associated triggering value sets
2. Supplemental - Suspected reportability criteria are extended to include additional rules processing

The contents of each of these specifications at a high level are:

* Specification Library [us-ph-specification-library]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-specification-library.html)
    * PlanDefinition - Defines the reporting workflow [us-ph-plandefinition]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-plandefinition.html)
    * Triggering Value Set Library - List of triggering value sets [us-ph-triggering-valueset-library]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset-library.html)
        * Triggering Value Sets [us-ph-triggering-valueset]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset.html)

* Supplemental Library [ersd-supplemental-library](StructureDefinition-ersd-supplemental-library.html)
    * Computable Library - Library containing the rules logic [CQLLibrary]({{site.data.fhir.ver.hl7fhiruvcql}}/StructureDefinition-cql-library.html)
    * Supplemental Value Set Library - List of additional value sets required for evaluation of rules logic [us-ph-supplemental-valueset-library]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-supplemental-valueset-library.html)
        * Supplemental Value Sets - Value sets referenced by rules logic [us-ph-supplemental-valueset]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-supplemental-valueset.html)
    * Jurisidictions - List of jurisdications and their configurations [us-ph-codesystem]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-codesystem.html)

Subsequent sections describe each of these specification components in more detail.

#### eRSD Representation Approach

The following diagram illustrates the general process for electronic Case Reporting as triggered from a patient encounter, highlighting each of the components involved in describing the process:

<img style="width:100%" src="eicr-triggering-and-transmission-guidance-components.png"/>

The components involved in representing the reporting process are:

* **Events** Clinical workflow events such as encounter start and end
* **Triggering Criteria** Terminology-based criteria for detecting potentially reportable events
* **Process** Actions, delays, and loops to orchestrate the process
* **Parameters** Parameters for varying timings of the process steps
* **Suspected Reportability Criteria** Additional criteria that are evaluated to determine suspected reportability

These components are represented using different elements of the PlanDefinition resource, as generally outlined in the following:

<img style="width:100%" src="ersd-plandefinition-structure.png"/>

Events are represented with the `trigger` element; Triggering Criteria are represented using the `input` data criteria; Parameters are represented using `offset` in `relatedAction` elements; Process steps are represented using the `action` element and the relationships between them are represented with the `relatedAction` element; and finally, Suspected Reportability Criteria are represented with the `condition` element.

Each of these are discussed in more detail in the following sections.

##### Events

Events are represented with the `trigger` element, using the `named-event` trigger type and bound to the [US Public Health TriggerDefinition Named Event]({{site.data.fhir.ver.hl7fhirusphlibrary}}/ValueSet-us-ph-valueset-triggerdefinition-namedevent.html) value set. In addition, since the `name` element of the trigger definition is a `uri`, the eRSD profile uses the [US Public Health Named Event Type Extension]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-named-eventtype-extension.html) to provide complete binding information for the value set, as illustrated in the eRSDPlanDefinition example:

<pre><code>&lt;trigger id=&quot;encounter-start&quot;&gt;
  &lt;extension url=&quot;http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension&quot;&gt;
    &lt;valueCodeableConcept&gt;
      &lt;coding&gt;
        &lt;system value=&quot;http://hl7.org/fhir/us/ecr/CodeSystem/us-ph-triggerdefinition-namedevents&quot;/&gt;
        &lt;code value=&quot;encounter-start&quot;/&gt;
        &lt;display value=&quot;Indicates the start of an encounter&quot;/&gt;
      &lt;/coding&gt;
    &lt;/valueCodeableConcept&gt;
  &lt;/extension&gt;
  &lt;type value=&quot;named-event&quot;/&gt;
  &lt;name value=&quot;encounter-start&quot;/&gt;
&lt;/trigger&gt;
</code></pre>

##### Triggering Criteria

Triggering criteria are specified by a combination of the `input` data elements, and the Reportable Condition Triggering Codes (RCTC) Value Set Library. Note carefully that the RCTC Value Sets included in this IG are examples to illustrate the structure and typical content of the Value Sets.

The triggering value sets will include any number of focus useContext slices to indicate which conditions the triggering codes are associated with. Each value set corresponds to a different type of information that may contain events that are triggers for potentially reportable events. The categories of information are mapped to FHIR resources using the `input` element. For example, the reportable conditions value set is mapped to the `Condition` resource:

<pre><code>&lt;input id=&quot;conditions&quot;&gt;
  &lt;type value=&quot;Condition&quot;/&gt;
  &lt;codeFilter&gt;
    &lt;path value=&quot;code&quot;/&gt;
    &lt;valueSet value=&quot;http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example&quot;/&gt;
  &lt;/codeFilter&gt;
&lt;/input&gt;</code></pre>

> Note to implementers: The logic used throughout the reporting workflow definition assumes the data provided as input is valid. For example, an Encounter with a status of in-progress is assumed to have a period element with a start date specified. Implementations may account for differences in the way the clinical system represents encounter information by adjusting the data using context in the reporting application to meet these assumptions.

##### Process

Process is represented using the `action` elements of the PlanDefinition. A PlanDefinition can have any number of `action` elements, and each action may have any number of child `action` elements, allowing a hierarchy of actions to be constructed. In addition, the `relatedAction` element of each action allows dependencies between actions to be expressed. For example, action A starts 5 minutes before action B.

To support a broad variety of use cases, the PlanDefinition resource provides a flexible mechanism for representing processes. To facilitate implementation, the US Public Health PlanDefinition profile introduces constraints that limit the set of elements that can be used to:

1. The PlanDefinition is of type `workflow-definition`, to indicate process semantics apply
1. Trigger elements are specified only on the actions that initiate a reporting workflow, using the `named-event` type
1. Relationships between actions are always expressed using a relatedAction element in the forward direction (so the relationship is "before-start").
1. All timings are expressed using the "offsetDuration" element of the relatedAction, simplifying timing representation throughout.
1. All repetition is expressed through recursive related actions, rather than trying to express the periodicity using a timing structure.

The eRSD PlanDefinition uses these structures to introduce a "loop" for the creation and submission of reports for a suspected reportable event. The following table describes each action, the code that identifies it, what causes it to run, and what it invokes next. Indented rows are child actions of the action above them.

| Action | Code | Runs when | Invokes next |
| --- | --- | --- | --- |
| `start-workflow` | `initiate-reporting-workflow` | `encounter-start` event | `check-for-immediate-reporting`, after "A" |
| `check-for-immediate-reporting` | `execute-reporting-workflow` | invoked by `start-workflow` | — |
| &nbsp;&nbsp;`is-encounter-immediately-reportable` | `check-trigger-codes` | suspected disorder, lab order or diagnostic order matches | `create-eicr` |
| &nbsp;&nbsp;`continue-check-reportable` | `evaluate-condition` | encounter in progress and within the reporting duration | `check-reportable`, after "B" |
| &nbsp;&nbsp;`terminate-late-encounter` | `terminate-reporting-workflow` | encounter has passed its reporting window | — |
| &nbsp;&nbsp;`is-late-encounter-completed` | `complete-reporting` | encounter finished after its window had elapsed | — |
| `check-reportable` | `execute-reporting-workflow` | invoked by the check loop | — |
| &nbsp;&nbsp;`is-encounter-reportable` | `check-trigger-codes` | encounter data matches the trigger code value sets | `create-eicr` |
| &nbsp;&nbsp;`check-update-eicr` | `evaluate-condition` | more than "C" since the last eICR was sent | `create-eicr` |
| &nbsp;&nbsp;`is-encounter-in-progress` | `evaluate-condition` | inpatient encounter still in progress | `check-reportable`, after "B" |
| &nbsp;&nbsp;`is-amb-encounter-in-progress` | `evaluate-condition` | ambulatory encounter still in progress | `check-reportable`, after "B" |
| &nbsp;&nbsp;`terminate-encounter` | `terminate-reporting-workflow` | inpatient encounter past its window | — |
| &nbsp;&nbsp;`terminate-amb-encounter` | `terminate-reporting-workflow` | ambulatory encounter past its window | — |
| &nbsp;&nbsp;`is-encounter-completed` | `complete-reporting` | encounter finished | — |
| `create-eicr` | `create-report` | invoked when reportability is determined | `validate-eicr` |
| `validate-eicr` | `validate-report` | invoked by `create-eicr` | `route-and-send-eicr` |
| `route-and-send-eicr` | `submit-report` | invoked by `validate-eicr` | — |
| `encounter-modified` | `initiate-reporting-workflow` | `encounter-modified` event | `is-modified-encounter-reportable` |
| `is-modified-encounter-reportable` | `check-trigger-codes` | modified encounter data matches the trigger code value sets | `create-eicr` |

Three aspects of this structure are worth drawing out, because they are not evident from the table alone.

**The reporting loop.** `check-reportable` re-invokes itself through `is-encounter-in-progress` or `is-amb-encounter-in-progress`, with a delay of "B", for as long as the encounter remains in progress and within its reporting duration. This recursion is how periodic re-checking is expressed, rather than a timing structure.

**Ambulatory and inpatient encounters follow separate paths.** Ambulatory, virtual and home health encounters (`AMB`, `VR`, `HH`) use the ambulatory reporting duration, while inpatient, emergency and observation encounters (`IMP`, `EMER`, `OBSENC`) use the normal reporting duration. The two paths have their own in-progress and termination actions so that a short ambulatory encounter is not re-checked on an inpatient cadence.

**Termination and completion are explicit.** The `terminate-*` actions end the reporting workflow for an encounter that has passed its reporting window, and the `complete-reporting` actions record that an encounter finished. Together these let an implementing system stop scheduling checks for an encounter that can no longer produce a report, rather than relying on implicit completion.

The `create-eicr` action involves the marshaling of FHIR resources needed to create the eICR profile included in this standard, and produces an eICR document bundle as its `output`. That output is consumed as the `input` of `validate-eicr`, which validates the created eICR against the appropriate profiles and validation rules, and in turn passes it to `route-and-send-eicr`. The `route-and-send-eicr` action involves the transmission of the eICR to either a third party platform, a Public Health Agency (PHA), or a Health Information Exchange or Health Data Network on the way to a PHA.

**Data gathered by `create-eicr`.** The `create-eicr` action carries a set of `input` data requirements that define the data an implementing system gathers in order to construct the eICR. Each input has an `id`, a resource `type`, and a default FHIR query supplied by the FHIR query pattern extension, and each is addressable within the action as a `%` variable using its `id`. The categories below reflect the specification currently in production; see the [eICR Data Elements](eicr_data_elements.html) topic for the corresponding eICR content.

| Category | Inputs |
| --- | --- |
| Core clinical | `patientdata`, `encounterdata`, `conditiondata` (problem list), `encounterDiagnosesData` (encounter diagnosis), `procdata` |
| Medications | `mrdata` (orders), `medAdmdata`, `medStatementdata`, `medDispensedata` |
| Immunizations | `immzdata` |
| Laboratory and diagnostics | `labOrderdata`, `labResultdata`, `diagnosticOrderdata`, `diagnosticResultdata` |
| Occupational data (ODH) | `odhData-loinc`, `odhData-snomed` |
| Pregnancy | `pregnancyObservations`, `pregnancyConditions`, `pregnancy-status`, `lmp-data`, `postpartum-status`, `pregnancy-outcome` |
| Social and contextual | `travelData-snomed`, `homeless-data`, `disability-data`, `nationality-data`, `residency-data`, `vaccine-cred-data` |
| Vital signs | `vitals-data`, scoped to the encounter |

Most inputs carry a query that selects by patient, and several narrow it further by category or by a specific set of codes. Where an input's query names another input rather than a search string, it reuses that input's result set instead of issuing a separate query.


##### Parameters
Because of variability in accumulation of data at the start of a patient encounter, the EHR implementer should implement a time-based delay in generating and sending the first encounter eICR to allow time for required data to be captured within the patient chart. This will ensure the eICR is better populated before sending and will reduce the number of case reports that are sent for a single patient encounter.

Full triggering timing can be described using the suggested parameters below from the eRSD:

**Parameter A** – The time from the start of the patient encounter to when the first eICR is constructed and sent. This eICR should include multiple triggers if they are identified.

- Example - <u>1 hour</u> after the encounter begins, EHR data matches a code in the eRSD diagnosis data trigger code set and other EHR data matches a code in the eRSD lab result trigger code set. Both of these trigger codes should be recorded in the appropriate eICR trigger code template and the eICR should be transmitted out.

**Parameter B** - The time period from a previous trigger code check to subsequent checking for new trigger code matches in a longer encounter. New trigger code matches do not include matches on an eRSD trigger code that have already been used to generate an eICR for that encounter.

- Example - <u>12 hours</u> after there was a trigger code match, the EHR data is checked against the eRSD trigger code sets again. If a new match is found (not a match against the same eRSD trigger code as had been already matched in that encounter) then a new eICR is generated that includes all of the new trigger codes that have been matched.

**Parameter C** - The time period from the send of previous eICRs to the send of an updated eICR during a longer encounter.

- Example - <u>72 hours</u> after a previous eICR was sent, there have been no new trigger code matches, but a new eICR is created and transmitted because there had been a match in the encounter previously and there is a need for public health to receive updated data about the patient.

**Parameter D** – The time period after the encounter ends through which trigger code checks and eICR updates should still occur.

- Example - For <u>72 hours</u> after the encounter ends, trigger code checks and / or updated eICR transmissions should still occur.

**Parameter E** - The normal reporting duration for the encounter. While an encounter is in progress and within the the normal reporting duration reportability will continue to be checked. Once the encounter has extended beyond the normal reporting duration, it will only be reported on in response to an 'encounter-modified' trigger.

- Example - For <u>2 weeks</u> after the encounter begins and while it is still in progress, continue to check for suspected reportability. Otherwise, once the encounter has extended beyond <u>2 weeks</u>, check for reportability and report only if the encounter has been modified.

> Note to implementers: The offset durations specified in related actions here are _relative_ durations, in that they contain a comparator to indicate that the action should be completed _at most X_. This allows implementations to support scheduling these actions during non-peak times to minimize load on the clinical system.

##### Suspected Reportability Criteria

To facilitate implementation, there are two levels of suspected reportability determination. The first level involves only checking for the existing of events with codes that match a code in the appropriate triggering value set. The second level involves additional filtering criteria that can include other elements of the data (such as status and lab values), as well as jurisdictional configuration.

The first level is generally termed `triggering` and is supported by the `triggering` profiles, while the second level is generally termed `supplemental` and is supported by the `supplemental` profiles.

###### Triggering eRSD Specification

The triggering level is represented using the `condition` element of the `check-reportable` action:

<pre><code>&lt;condition&gt;
  &lt;kind value=&quot;applicability&quot;/&gt;
  &lt;expression&gt;
    &lt;extension snipped/&gt;
    &lt;language value=&quot;text/fhirpath&quot;/&gt;
    &lt;expression value=&quot;%conditions.exists() or %encounters.exists() or %immunizations.exists() or %procedures.exists() or %procedureOrders.exists() or %labOrders.exists() or %labTests.exists() or %labResults.exists() or %medicationAdministrations.exists() or %medicationOrders.exists() or %medicationDispenses.exists()&quot;/&gt;&lt;/expression&gt;
&lt;/condition&gt;</code></pre>

This level uses a [FHIRPath](http://hl7.org/fhirpath) to test for existence of data in any of the `input` categories. Each `input` element is accessed by an _environment variable_ using the `%` syntax in FHIRPath.

The eRSD specification is delivered as an _asset collection library_ (a Library resource with a type of `asset-collection`) conforming to the [US Public Health Specification Library]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-specification-library.html) profile.

The eRSD Specification library is composed of the eRSD Plan Definition and the RCTC Library, a Value Set library that conforms to the [US Public Health Triggering Value Set Library]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset-library.html) profile:

<pre><code>&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/PlanDefinition/plandefinition-us-public-health-example&quot;/&gt;
&lt;/relatedArtifact&gt;
&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/Library/library-rctc-example&quot;/&gt;
&lt;/relatedArtifact&gt;</code></pre>

* [eRSD Specification Library Example](Library-library-ersd-specification-library-example.html)
* [eRSD PlanDefinition Instance Example](PlanDefinition-plandefinition-ersd-instance-example.html)
* [eRSD PlanDefinition Instance Simple Example](PlanDefinition-plandefinition-ersd-instance-simple-example.html)
* [RCTC ValueSet Library Example](Library-library-rctc-example.html)

Triggering value sets and metadata can be used for EHR implementations whether they are FHIR-based or not.

The [CRMIComputableValueset]({{site.data.fhir.ver.hl7fhiruvcrmi}}/StructureDefinition-crmi-computablevalueset.html) profile describes the requirements for computable representation of value set membership criteria, ensuring that value sets using this profile selectively support only one technique for defining the content of expansions.

The [CRMIExpandedValueSet]({{site.data.fhir.ver.hl7fhiruvcrmi}}/StructureDefinition-crmi-expandedvalueset.html) profile provides support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an $expand operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.

The value sets distributed in an eRSD package provide both a computable definition and a persisted expansion, so that a system may use the expansion as distributed or recalculate it from the definition. In the specification currently in production the grouping value sets conform to the [US Public Health Triggering ValueSet]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset.html) profile, and the leaf value sets that hold the trigger codes conform to [ShareableValueSet]({{site.data.fhir.path}}shareablevalueset.html) together with the computable and publishable value set profiles defined by the CQF Measures implementation guide. Alignment of these value sets with the CRMI profiles described above is intended, but has not yet been made; implementations should validate against the profiles the value sets actually declare.

###### Supplemental eRSD Specification

The supplemental level of integration enables sites to participate in the suspected reportability determination by considering additional elements of the event data such as status, lab values, and jurisdiction configuration.

The suspected reportability criteria are also represented with the `condition` element, but using the [CQF Alternative Expression Extension](http://hl7.org/fhir/extensions/StructureDefinition-cqf-alternativeExpression.html) to provide the CQL expression for suspected reportability:

<pre><code>&lt;extension url=&quot;http://hl7.org/fhir/StructureDefinition/cqf-alternativeExpression&quot;&gt;
  &lt;valueExpression&gt;
    &lt;language value=&quot;text/cql-identifier&quot;/&gt;
    &lt;expression value=&quot;Is Reportable&quot;/&gt;
    &lt;reference value=&quot;http://hl7.org/fhir/us/ecr/Library/library-executable-rule-filters-example|2.1.0&quot;/&gt;
  &lt;/valueExpression&gt;
&lt;/extension&gt;</code></pre>

This extension indicates that the `Is Reportable` expression of the [library-executable-rule-filters-example](Library-library-executable-rule-filters-example.html) library should be used to evaluate whether the event is suspected reportable.

For a complete description of the logic used to determine suspected reportability, refer to the [Rule Filter Generation](rule_filter_generation.html) topic.

For a detailed discussion of how jurisdiction is determined, see the [Jurisdictions Code System Query](ersd_jurisdictions_codesystem_query.html) topic.

For a detailed discussion of how this code system is structured, see the [Jurisdictions Code System Description](ersd_jurisdictions_codesystem_description.html) topic.

The eRSD Supplemental Library is composed of the library-executable-rule-filters-example library and the Supplemental Value Set library, which contains any additional value sets and code systems (including the Jurisdictions code system) beyond the RCTC value sets that are required by the library-executable-rule-filters-example logic:

<pre><code>&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/Library/library-executable-rule-filters-example&quot;/&gt;
&lt;/relatedArtifact&gt;
&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/Library/library-us-ph-supplemental-valueset-library-example&quot;/&gt;
&lt;/relatedArtifact&gt;
&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/CodeSystem/ersd-jurisdictions-example&quot;/&gt;
&lt;/relatedArtifact&gt;</code></pre>

* [eRSD Supplemental Library Example](Library-library-ersd-supplemental-library-example.html)
* [library-executable-rule-filters-example Library](Library-library-executable-rule-filters-example.html)
* [Supplemental Value Set Library Example](Library-library-us-ph-supplemental-valueset-library-example.html)
* [Jurisdictions CodeSystem Example](CodeSystem-codesystem-ersd-jurisdictions-example.html)

#### Packaging and Distribution

As noted in the overview section above, this implementation is not prescriptive about the absolute mechanisms for distribution, only about the contents of the specification in the form of Library, PlanDefinition, CodeSystem, and ValueSet resources conforming to the required profiles. The complete specification may be distributed via files (e.g. a zip of the specification as a FHIR bundle), via API (e.g. as a Bundle resource directly, or as the result of a packaging operation), or via notification.

When packaging as a Bundle, the Bundle contains the specification library, the resources it is composed of, and the value sets those resources reference. Consumers should locate resources within the Bundle by canonical URL rather than relying on the order in which entries appear. If the specification is too large for one Bundle, it may be split into multiple Bundles. The arrangement of a package, and how to navigate it, is described in the [eRSD Package Structure](ersd_package_structure.html) topic. The following examples illustrate complete bundles of both the Specification and Supplemental distributions:

* [Specification (i.e. Triggering) Bundle](Bundle-bundle-ersd-specification-example.html)
* [Supplemental (i.e. Rules Logic) Bundle](Bundle-bundle-ersd-supplemental-example.html)

#### Profiles
<ul>
  <li><a href="StructureDefinition-ersd-plandefinition.html">eRSD PlanDefinition</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-specification-library.html">US Public Health Specification Library</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-supplemental-library.html">US Public Health Supplemental Library</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-supplemental-valueset.html">US Public Health Supplemental ValueSet</a></li>  
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-supplemental-valueset-library.html">US Public Health Supplemental ValueSet Library</a></li>  
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset.html">US Public Health Triggering ValueSet</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-triggering-valueset-library.html">US Public Health Triggering ValueSet Library</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-valueset-library.html">US Public Health ValueSet Library</a></li>
  <li><a href="{{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-valueset.html">US Public Health ValueSet</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="http://hl7.org/fhir/extensions/StructureDefinition-valueset-warning.html">ValueSet Warning Extension</a></li>
</ul>
