### electronic Reporting and Surveillance Distribution (eRSD) Transaction and Profiles

The eRSD transaction includes a constrained FHIR PlanDefinition resource profile and a family of actions. It supports the distribution of reporting guidance and parameters, trigger code value sets, and more complex reporting rules and clinician / reporter support resources. This work seeks to align with developing public health guidelines that cover the same conditions. The PlanDefinition includes guidance for the overall orchestration of electronic case reporting. Each member of the family of actions defined in the [US Public Health PlanDefinition Action Codes](CodeSystem-us-ph-plandefinition-actions.html) code system aligns with what may be different healthcare information systems or modules involved in reporting. The narrative elements of this profile will be used to help structure and guide implementation until EHRs have the ability to automatically consume them.

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

* Specification Library [us-ph-specification-library](StructureDefinition-us-ph-specification-library.html)
    * PlanDefinition - Defines the reporting workflow [us-ph-plandefinition](StructureDefinition-us-ph-plandefinition.html)
    * Triggering Value Set Library - List of triggering value sets [us-ph-triggering-valueset-library](StructureDefinition-us-ph-triggering-valueset-library.html)
        * Triggering Value Sets [us-ph-triggering-valueset](StructureDefinition-us-ph-triggering-valueset.html)

* Supplemental Library [ersd-supplemental-library](StructureDefinition-ersd-supplemental-library.html)
    * Computable Library - Library containing the rules logic [us-ph-computable-library](StructureDefinition-us-ph-computable-library.html)
    * Supplemental Value Set Library - List of additional value sets required for evaluation of rules logic [us-ph-supplemental-valueset-library](StructureDefinition-us-ph-supplemental-valueset-library.html)
        * Supplemental Value Sets - Value sets referenced by rules logic [us-ph-supplemental-valueset](StructureDefinition-us-ph-supplemental-valueset.html)
    * Jurisidictions - List of jurisdications and their configurations [us-ph-codesystem](StructureDefinition-us-ph-codesystem.html)

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

Events are represented with the `trigger` element, using the `named-event` trigger type and bound to the [US Public Health TriggerDefinition Named Event](ValueSet-us-ph-triggerdefinition-namedevent.html) value set. In addition, since the `name` element of the trigger definition is a `uri`, the eRSD profile uses the [US Public Health Named Event Type Extension](StructureDefinition-us-ph-named-eventtype-extension.html) to provide complete binding information for the value set, as illustrated in the eRSDPlanDefinition example:

<pre><code>&lt;trigger id=&quot;encounter-start&quot;&gt;
  &lt;extension url=&quot;http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-named-eventtype-extension&quot;&gt;
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
    &lt;valueSet value=&quot;http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example&quot;/&gt;
  &lt;/codeFilter&gt;
&lt;/input&gt;</code></pre>

##### Process

Process is represented using the `action` elements of the PlanDefinition. A PlanDefinition can have any number of `action` elements, and each action may have any number of child `action` elements, allowing a hierarchy of actions to be constructed. In addition, the `relatedAction` element of each action allows dependencies between actions to be expressed. For example, action A starts 5 minutes before action B.

To support a broad variety of use cases, the PlanDefinition resource provides a flexible mechanism for representing processes. To facilitate implementation, the US Public Health PlanDefinition profile introduces constraints that limit the set of elements that can be used to:

1. The PlanDefinition is of type `workflow-definition`, to indicate process semantics apply
1. The only "trigger" element is specified on the "start" action as the "named-event" "encounter-start".
1. Relationships between actions are always expressed using a relatedAction element in the forward direction (so the relationship is "before-start").
1. All timings are expressed using the "offsetDuration" element of the relatedAction, simplifying timing representation throughout.
1. All repetition is expressed through recursive related actions, rather than trying to express the periodicity using a timing structure.

The eRSD PlanDefinition uses these structures to introduce a "loop" for the creation and submission of reports for a suspected reportable event:

* start-workflow
    - trigger: encounter-start
    - action: check-suspected-disorder in "A" hours

* check-suspected-disorder
    - if is-encounter-suspected-disorder, create-eicr
    - if continue-check-reportable, check-reportable in "B" hours

* check-reportable
    - if is-encounter-reportable, create-eicr
    - if check-update-eicr, create-eicr
    - if is-encounter-in-progress, check-reportable in "B" hours

* create-eicr
    - action: validate-eicr

* validate-eicr
    - route-and-send-eicr

* encounter-modified
    - trigger: encounter-modified
    - create-eicr

The `start-workflow` action is initiated by an `encounter-start` event, and specifies that `check-reportable` should be called in "A" hours.

The `check-suspected-disorder` action checks the encounter against a suspected disorders value set, and if a match is found, calls the `create-eicr` action immediately. If the encounter is in progress and still within the normal reporting duration ("E"), or less than "D" hours have elapsed since the encounter end, `check-reportable` is called.

The `check-reportable` action checks for suspected reportability and whether or not the encounter is within the normal reporting duration ("E"), and if true, calls the `create-eicr` action. If an eICR has not been sent for over "C" hours, then `create-eicr` is called. If the encounter is still in progress, `check-reportable` is called again with a delay of "B" hours and this continues until more than "D" hours have elapsed since the encounter end.

The `create-eicr` action involves the marshaling of FHIR resources needed to create the eICR profile included in this standard. It calls the `validate-eicr` action.

The `validate-eicr` action involves validating the created eICR conforms with all appropriate profiles and validation rules. It calls the `route-and-send-eicr` action.

The `route-and-send-eicr` action involves the transmission of the eICR to either a third party platform, a Public Health Agency (PHA), or a Health information Exchange or Health Data Network on the way to a PHA.

The `encounter-modified` action is initiated by an 'encounter-modified' event, and specifies that if the encounter has extended beyond the normal reporting duration ("E") `create-eicr` should be called.

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

The eRSD specification is delivered as an _asset collection library_ (a Library resource with a type of `asset-collection`) conforming to the [US Public Health Specification Library](StructureDefinition-us-ph-specification-library.html) profile.

The eRSD Specification library is composed of the eRSD Plan Definition and the RCTC Library, a Value Set library that conforms to the [US Public Health Triggering Value Set Library](StructureDefinition-us-ph-triggering-valueset-library.html) profile:

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

The [ComputableValueSet](StructureDefinition-us-ph-computable-valueset.html) profile describes the requirements for computable representation of value set membership criteria, ensuring that value sets using this profile selectively support only one technique for defining the content of expansions.

The [ExecutableValueSet](StructureDefinition-us-ph-executable-valueset.html) profile provides support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an $expand operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.

The ValueSets in the RCTC Library are distributed conforming to both these profiles, enabling systems to make use of expansions, or recalculate expansions based on the computable value set definition if necessary.

###### Supplemental eRSD Specification

The supplemental level of integration enables sites to participate in the suspected reportability determination by considering additional elements of the event data such as status, lab values, and jurisdiction configuration.

The suspected reportability criteria are also represented with the `condition` element, but using the [US Public Health Alternative Expression](StructureDefinition-us-ph-alternative-expression-extension.html) to provide the CQL expression for suspected reportability:

<pre><code>&lt;extension url=&quot;http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-alternative-expression-extension&quot;&gt;
  &lt;valueExpression&gt;
    &lt;language value=&quot;text/cql-identifier&quot;/&gt;
    &lt;expression value=&quot;Is Reportable&quot;/&gt;
    &lt;reference value=&quot;http://hl7.org/fhir/us/ecr/Library/RuleFilters|1.0.0&quot;/&gt;
  &lt;/valueExpression&gt;
&lt;/extension&gt;</code></pre>

This extension indicates that the `Is Reportable` expression of the [RuleFilters](Library-RuleFilters.html) library should be used to evaluate whether the event is suspected reportable.

For a complete description of the logic used to determine suspected reportability, refer to the [Rule Filter Generation](rule_filter_generation.html) topic.

For a detailed discussion of how jurisdiction is determined, see the [Jurisdictions Code System Query](ersd_jurisdictions_codesystem_query.html) topic.

For a detailed discussion of how this code system is structured, see the [Jurisdictions Code System Description](ersd_jurisdictions_codesystem_description.html) topic.

The eRSD Supplemental Library is composed of the RuleFilters library and the Supplemental Value Set library, which contains any additional value sets and code systems (including the Jurisdictions code system) beyond the RCTC value sets that are required by the RuleFilters logic:

<pre><code>&lt;relatedArtifact&gt;
  &lt;type value=&quot;composed-of&quot;/&gt;
  &lt;resource value=&quot;http://hl7.org/fhir/us/ecr/Library/RuleFilters&quot;/&gt;
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
* [RuleFilters Library](Library-RuleFilters.html)
* [Supplemental Value Set Library Example](Library-library-us-ph-supplemental-valueset-library-example.html)
* [Jurisdictions CodeSystem Example](CodeSystem-ersd-jurisdictions-example.html)

#### Packaging and Distribution

As noted in the overview section above, this implementation is not prescriptive about the absolute mechanisms for distribution, only about the contents of the specification in the form of Library, PlanDefinition, CodeSystem, and ValueSet resources conforming to the required profiles. The complete specification may be distributed via files (e.g. a zip of the specification as a FHIR bundle), via API (e.g. as a Bundle resource directly, or as the result of a packaging operation), or via notification.

When packaging as a Bundle, the expectation is that the Bundle would include the Library as the first entry, followed by all the component resources as entries, and finally all the referenced ValueSet resources. If the specification is too large for one Bundle, the specification may be split into multiple Bundles. The following examples illustrate complete bundles of both the Specification and Supplemental distributions:

* [Specification (i.e. Triggering) Bundle](Bundle-bundle-ersd-specification-example.html)
* [Supplemental (i.e. Rules Logic) Bundle](Bundle-bundle-ersd-supplemental-example.html)

#### Profiles
<ul>
  <li><a href="StructureDefinition-ersd-plandefinition.html">eRSD PlanDefinition</a></li>
  <li><a href="StructureDefinition-us-ph-specification-library.html">US Public Health Specification Library</a></li>
  <li><a href="StructureDefinition-us-ph-supplemental-library.html">US Public Health Supplemental Library</a></li>
  <li><a href="StructureDefinition-us-ph-supplemental-valueset.html">US Public Health Supplemental ValueSet</a></li>  
  <li><a href="StructureDefinition-us-ph-supplemental-valueset-library.html">US Public Health Supplemental ValueSet Library</a></li>  
  <li><a href="StructureDefinition-us-ph-triggering-valueset.html">US Public Health Triggering ValueSet</a></li>
  <li><a href="StructureDefinition-us-ph-triggering-valueset-library.html">US Public Health Triggering ValueSet Library</a></li>
  <li><a href="StructureDefinition-us-ph-valueset-library.html">US Public Health ValueSet Library</a></li>
  <li><a href="StructureDefinition-us-ph-valueset.html">US Public Health ValueSet</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-us-ph-usagewarning-extension.html">US Public Health Usage Warning Extension</a></li>
</ul>
