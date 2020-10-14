[Previous Page - Reportability Response (RR) Transaction and Profiles](reportability_response_rr_transaction_and_profiles.html)

### electronic Reporting and Surveillance Distribution (eRSD) Transaction and Profiles

The eRSD transaction includes a constrained FHIR PlanDefinition resource profile, a family of actions, and a [FHIR Subscription service](Subscription_Service.html). It supports the distribution of reporting guidance and parameters, trigger code value sets, and more complex reporting rules and clinician / reporter support resources. This work seeks to align with developing public health guidelines that cover the same conditions. The PlanDefinition includes guidance for the overall orchestration of electronic case reporting. Each member of the family of actions (Match Trigger, Create eICR, Periodic Update eICR, Close Out eICR, Validate eICR, Route and Send eICR) aligns with what may be different healthcare information systems or modules involved in reporting. The narrative elements of this profile will be used to help structure and guide implementation until EHRs have the ability to automatically consume them. 

Triggering value sets and metadata can be used for EHR implementations whether they are FHIR-based or not.

The Create eICR action involves the marshaling of FHIR resources needed to create the eICR profile included in this standard and the Route and Send eICR action involves the transmission of the eICR to either the APHL AIMS Platform, a Public Health Agency (PHA), or a Health information Exchange or Health Data Network on the way to a PHA.

The [FHIR Subscription service](Subscription_Service.html) (also see Subscription examples on the <a href="other.html">examples page</a>) supports public health needs for the routine and emergent distribution of the eRSD. The Subscription does not require FHIR implementation on the receiving (EHR) end of the transaction, but can provide XML or JSON formats via RESTful query or proactive notification channels. 

<ul>
  <li><a href="StructureDefinition-ersd-plandefinition.html">eRSD PlanDefinition</a></li>
</ul>

<ul>
  <li><a href="StructureDefinition-ersd-valueset-library.html">eRSD ValueSet Library</a></li>
	<li><a href="StructureDefinition-ersd-valueset.html">eRSD ValueSet</a></li>
</ul>

[Next Page - Subscription Service](subscription_service.html)