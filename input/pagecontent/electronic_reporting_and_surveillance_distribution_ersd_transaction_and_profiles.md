[Previous Page - Reportability Response (RR) Transaction and Profiles](reportability_response_rr_transaction_and_profiles.html)

[Previous Page - Reportability Response (RR) Transaction and Profiles](reportability_response_rr_transaction_and_profiles.html)

### electronic Reporting and Surveillance Distribution (eRSD) Transaction and Profiles

The eRSD transaction includes a constrained FHIR PlanDefinition resource profile, a family of actions, and a [FHIR Subscription service](subscription_service.html). It supports the distribution of reporting guidance and parameters, trigger code value sets, and more complex reporting rules and clinician / reporter support resources. This work seeks to align with developing public health guidelines that cover the same conditions. The PlanDefinition includes guidance for the overall orchestration of electronic case reporting. Each member of the family of actions (Match Trigger, Create eICR, Periodic Update eICR, Close Out eICR, Validate eICR, Route and Send eICR) aligns with what may be different healthcare information systems or modules involved in reporting. The narrative elements of this profile will be used to help structure and guide implementation until EHRs have the ability to automatically consume them.

Triggering value sets and metadata can be used for EHR implementations whether they are FHIR-based or not.

The ComputableValueSet profile describes the requirements for computable representation of value set membership criteria, ensuring that value sets using this profile selectively support only one technique for defining the content of expansions.

The ExecutableValueSet profile provides support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an $expand operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.

The Create eICR action involves the marshaling of FHIR resources needed to create the eICR profile included in this standard and the Route and Send eICR action involves the transmission of the eICR to either the APHL AIMS Platform, a Public Health Agency (PHA), or a Health information Exchange or Health Data Network on the way to a PHA.

The [FHIR Subscription service](subscription_service.html) (also see Subscription examples on the <a href="artifacts.html">Artifacts Index page</a>) supports public health needs for the routine and emergent distribution of the eRSD. The Subscription does not require FHIR implementation on the receiving (EHR) end of the transaction, but can provide XML or JSON formats via RESTful query or proactive notification channels.

##### Workflow Definition

The current PlanDefinition uses ECA Rules, we propose using Workflow Definition instead. The execution semantics of an ECA Rule are such that it would be difficult to fully orchestrate the reporting process without multiple PlanDefinition ECA Rules that were coordinated via state. By using a Workflow Definition, we can describe the overall process and take advantage of the execution semantics provided by worfklows to simplify the representation. Specifically, we make the following proposed changes:

1. The only "trigger" element is specified on the "start" action as the "named-event" "encounter-start".
2. Relationships between actions are always expressed using a relatedAction element in the forward direction (so the relationship is "before-start").
3. All timings are expressed using the "offsetDuration" element of the relatedAction, simplifying timing representation throughout.
4. All repetition is expressed through recursive related actions, rather than trying to express the periodicity using a timing structure.
5. Introduction of two different "loops" in the structure, one for the reportability check, and one for the creation and send of reports for a suspected reportable event.
6. All logic for determining reportability of an event is expressed in a single library associated with the PlanDefinition.

#### Profiles
<ul>
  <li><a href="StructureDefinition-ersd-plandefinition.html">eRSD PlanDefinition</a></li>
  <li><a href="StructureDefinition-us-ph-specification-bundle.html">US Public Health Specification Bundle</a></li>
  <li><a href="StructureDefinition-us-ph-supplemental-bundle.html">US Public Health Supplemental Bundle</a></li>
  <li><a href="StructureDefinition-us-ph-supplemental-valueset.html">US Public Health Supplemental ValueSet</a></li>  
  <li><a href="StructureDefinition-us-ph-supplemental-valueset-library.html">US Public Health Supplemental ValueSet Library</a></li>  
  <li><a href="StructureDefinition-us-ph-triggering-valueset.html">US Public Health Triggering ValueSet</a></li>
  <li><a href="StructureDefinition-us-ph-triggering-valueset-library.html">US Public Health Triggering ValueSet Library</a></li>
  <li><a href="StructureDefinition-us-ph-valueset-library.html">US Public Health ValueSet Library</a></li>
  <li><a href="StructureDefinition-us-ph-valueset.html">US Public Health ValueSet</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-us-ph-usageWarning.html">US Public Health Usage Warning Extension</a></li>
</ul>

*  When applying the eRSD each action may be represented using a Task, but in order to do this there is a need to relate the Tasks in some temporal way.  relativeTo is a complex extension on the StructureDefinition Task to reference the resource type, path to the timing element of that resource, and optional offset duration.  This would allow us to create a task 24 hours after the Encounter begins for example.

### Reporting Process

[ERSD Narrative Guidance](ersd_narrative_guidance.html)

### Jurisdiction Determination

<a href="ersd_jurisdictions_codesystem_query.html">Jurisdiction Code System Query</a>

### Suspected Reportable Determination Logic

<a href="rule_filter_generation.html">Rule Filter Generation</a>

### Additional Links
<ul>
  <li><a href="StructureDefinition-ersd-plandefinition.html">eRSD PlanDefinition</a></li>
</ul>

<ul>
  <li><a href="StructureDefinition-us-ph-valueset-library.html">US Public Health ValueSet Library</a></li>
	<li><a href="StructureDefinition-us-ph-valueset.html">US Public Health ValueSet</a></li>
</ul>

[Next Page - Subscription Service](subscription_service.html)

[Next Page - Subscription Service](subscription_service.html)