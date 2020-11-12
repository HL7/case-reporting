[Previous Page - Transaction Profiles](transaction_profiles.html)

### Electronic Initial Case Report (eICR) Transaction and Profiles

The eICR transaction involves the transmission of data identified by a Council of State and Territorial Epidemiologists Task Force as being important to a case report. 

eICR documents will usually be automatically initiated by matching EHR data against trigger codes. There are some circumstances, however, where they may be manually initiated by providers of care because they suspect there may be a reportable condition. They also may be alternately initiated by automated, forced reporting by the EHR to meet short term reporting needs. The following matrix illustrates these different types of initiation:

<table><tr><td><img src="InitiationTypeTable.jpg" style="width:100%;"/></td></tr></table>

The eICR also includes semi-structured travel history, pregnancy information, occupational data, therapeutic response to medication, homeless information and a vital signs snapshot. The eICR is conveyed through an unsolicited push transaction from healthcare to public health (see Transport Options for further details) using a basic RESTful submit and/or FHIR Messaging. The FHIR Messaging bundle can also be transmitted over legacy transport and networks. There may be several different intermediaries involved in the transmission including Health Information Exchanges, Health Data Networks, and the Association of Public Health Laboratories (APHL) AIMS platform.

A Reportability Response will always be returned to the sending healthcare organization for every eICR received. A Reportability Response may also be sent to PHAs with the FHIR eICR transaction to provide the PHAs with information about what has been determined to be reportable, what PHAs have been sent eICR information, and what else has been communicated to healthcare.

The following profiles and extensions have been defined for the eICR transactions. The eICR Composition profile (which is contained in a eICR Document Bundle) is the starting point for the transaction and all the other profiles are referenced from that profile (see diagram below for the main profile relationships).

#### Profiles
<ul>
  <li><b>Containing Bundle:</b> <a href="StructureDefinition-eicr-document-bundle.html">eICR Document Bundle</a></li>
  <li><b>Starting point:</b> <a href="StructureDefinition-eicr-composition.html">eICR Composition</a></li>
  <li><a href="StructureDefinition-us-ph-patient.html">eICR Patient</a></li>
  <li><a href="StructureDefinition-us-ph-practitionerrole.html">eICR PractitionerRole</a></li>
  <li><a href="StructureDefinition-us-ph-organization.html">eCR Organization</a></li>
  <li><a href="StructureDefinition-us-ph-encounter.html">eICR Encounter</a></li>
  <li><a href="StructureDefinition-eicr-condition.html">eICR Condition</a></li>
  <li><a href="StructureDefinition-eicr-servicerequest.html">eICR Lab Order</a></li>
  <li><a href="StructureDefinition-us-ph-location.html">eICR Location</a></li>
  <li><a href="StructureDefinition-pregnancy-status-observation.html">Pregnancy Status Observation</a></li>
  <li><a href="StructureDefinition-pregnancy-outcome-observation.html">Pregnancy Outcome Observation</a></li>
  <li><a href="StructureDefinition-last-menstrual-period.html">Last Menstrual Period</a></li>
  <li><a href="StructureDefinition-postpartum-status.html">Postpartum Status</a></li>
  <li><a href="StructureDefinition-travel-history-observation.html">Travel History Observation</a></li>
  <li><a href="StructureDefinition-characteristics-of-home-environment.html">Characteristics of Home Environment</a></li>
</ul>

#### Extensions
<ul>
  <li><a href="StructureDefinition-eicr-trigger-code-flag-extension.html">eICR Trigger Code Flag Extension</a></li>
  <li><a href="StructureDefinition-eicr-initiation-type-extension.html">eICR Initiation Type Extension</a></li>
  <li><a href="StructureDefinition-eicr-initiation-reason-extension.html">eICR Manually Initiated Reason Extension</a></li>
  <li><a href="StructureDefinition-travel-history-address-extension.html">Travel History Address Extension</a></li>
  <li><a href="StructureDefinition-therapeutic-medication-response-extension.html">Therapeutic Medication Response Extension</a></li>
  <li><a href="StructureDefinition-date-determined-extension.html">Date Determined Extension</a></li>
  <li><a href="StructureDefinition-date-recorded-extension.html">Date Recorded Extension</a></li>
</ul>

<table><tr><td><img src="FHIR eICR Profile Hierarchy.png" style="width:100%;" /></td></tr></table>

[Next Page - Reportability Response (RR) Transaction and Profiles](reportability_response_rr_transaction_and_profiles.html)