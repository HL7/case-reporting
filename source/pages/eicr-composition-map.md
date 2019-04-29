---
# jekyll header
title: Mappings from the EICR Data Elements to the eCR Composition Profile
layout: fhir-artifact
level: 2
active: profiles
template: mappings
type: StructureDefinition
id: eicr-composition
---

#### Table: EICR Data Elements to eICR Composition Profile

<table class="grid" width="80%">
  <thead>
    <tr>
      <th style="text-align: left">Data Element</th>
      <th style="text-align: left">FHIR Contained by</th>
      <th style="text-align: left">FHIR Resource</th>
      <th style="text-align: left">FHIR Element Path</th>
      <th style="text-align: left">CDA Section</th>
      <th style="text-align: left">CDA Mapping</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: left">Date of the Report</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.date">date</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/effectiveTime</td>
    </tr>
    <tr>
      <td style="text-align: left">ID of the eICR Document</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.identifier">identifier</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/identifier</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider ID</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"]</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.identifier">identifier</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/assignedEntity/assignedEntity/id</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Name</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"]</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.name">name</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/assignedEntity/assignedPerson/name</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Phone</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"]</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.telecom">telecom[system="phone"]</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/assignedEntity/telecom[telecom:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Fax</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"]</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.telecom">telecom[system="fax"]</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/assignedEntity/telecom[fax:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Email</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"]</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.telecom">telecom[system="email"]</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/assignedEntity/telecom[email:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Facility/Office Name</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location[eicr-location]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.name">name</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/representedOrganization/name</td>
    </tr>
    <tr>
      <td style="text-align: left">Provider Address</td>
      <td style="text-align: left">“Encounter[eicr-encounter].participant[type="ATND"].PractitionerRole[ecr-practitionerrole].practitioner"</td>
      <td style="text-align: left">Practitioner[us-core-practitioner]</td>
      <td style="text-align: left"><a href="http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner-definitions.html#Practitioner.address">address</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/responsibleParty/representedOrganization/addr</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility ID Number</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.identifier">identifier</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/id</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility Name</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.name">name</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/serviceProviderOrganization/name</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility Type</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.type">type</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility Phone</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.telecom">telecom[system="phone"]</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/serviceProviderOrganization/telecom[tel:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility FAX</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.telecom">telecom[system="fax"]</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/serviceProviderOrganization/telecom[fax:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Facility Address</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.address">address</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClincalDocument/componentOf/encompassingEncounter/location/healthCareFacility/location/addr</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient ID Number</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.identifier">identifier</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/id</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Name</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.name">name</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/name</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Phone</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.telecom">telecom[system="phone"]</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/telecom[tel:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Email</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.telecom">telecom[system="email"]</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/telecom[mailto:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Parent/ Guardian Name</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.contact.name">contact.name</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">Clinical Document/record target/patientRole/patient/guardian/guardianPerson/name</td>
    </tr>
    <tr>
      <td style="text-align: left">Parent/ Guardian Phone</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.contact.telecom">contact.telecom[system="phone"]</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">Clinical Document/record target/patientRole/patient/guardian/telecom[tel:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Parent/ Guardian Email</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.contact.telecom">contact.telecom[system="email"]</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">Clinical Document/record target/patientRole/patient/guardian/telecom[mailto:]</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Street Address</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.address">address</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/addr</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Birth Date</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a name="96cea1bd-4932-4330-a19b-0ee426599307">​</a><a href="StructureDefinition-ecr-patient-definitions.html#Patient.birthDate">birthDate</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/birthTime</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Sex</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.extension:birthsex">us-core-birthsex</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Birth Sex Observation/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Race</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.extension:race">us-core-race</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/raceCode + ClinicalDocument/recordTarget/patientRole/patient/sdtc:raceCode</td>
    </tr>
    <tr>
      <td style="text-align: left">Patient Ethnicity</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.extension:ethnicity">us-core-ethnicity</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/ethnicGroupCode + ClinicalDocument/recordTarget/patientRole/patient/sdtc:ethnicGroupCode</td>
    </tr>
    <tr>
      <td style="text-align: left">Preferred Language</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.communication.language">communication.language</a></td>
      <td style="text-align: left">US Realm Header (V3)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/languageCommunication/languageCode</td>
    </tr>
    <tr>
      <td style="text-align: left">Occupation</td>
      <td style="text-align: left">Composition[eicr-composition].section</td>
      <td style="text-align: left">Observation[eicr-occupationhistory]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-occupationhistory-definitions.html#Observation">valueCodeableConcept</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Social History Observation (V3)/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Pregnant</td>
      <td style="text-align: left">Composition[eicr-composition].section[Social History Section].entry</td>
      <td style="text-align: left">Observation[pregnancy-status]</td>
      <td style="text-align: left"><a href="StructureDefinition-pregnancy-status-definitions.html#Observation">valueCodeableConcept</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Pregnancy Observation/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Hospital Unit</td>
      <td style="text-align: left">Encounter[eicr-encounter].location</td>
      <td style="text-align: left">Location(eicr-location)</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-location-definitions.html#Location.type">type</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Visit Date/Time</td>
      <td style="text-align: left">Composition[eicr-composition].encounter</td>
      <td style="text-align: left">Encounter[eicr-encounter]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-encounter-definitions.html#Encounter.period">period.start</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low</td>
    </tr>
    <tr>
      <td style="text-align: left">Admission Date/Time</td>
      <td style="text-align: left">Composition[eicr-composition].encounter</td>
      <td style="text-align: left">Encounter[eicr-encounter]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-encounter-definitions.html#Encounter.period">period.start</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low</td>
    </tr>
    <tr>
      <td style="text-align: left">Discharge Date/Time</td>
      <td style="text-align: left">Composition[eicr-composition].encounter</td>
      <td style="text-align: left">Encounter[eicr-encounter]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-encounter-definitions.html#Encounter.period">period.end</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high</td>
    </tr>
    <tr>
      <td style="text-align: left">History of Present Illness</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].section[History of Present Illness]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.section:sliceHistoryOfPresentIllnessSection.text">text</a></td>
      <td style="text-align: left">History of Present Illness Section</td>
      <td style="text-align: left">text</td>
    </tr>
    <tr>
      <td style="text-align: left">Reason for Visit</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].section[Reason for Visit]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.section:sliceReasonForVisitSection.text">text</a></td>
      <td style="text-align: left">Reason for Visit Section</td>
      <td style="text-align: left">text</td>
    </tr>
    <tr>
      <td style="text-align: left">Date of Onset</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry</td>
      <td style="text-align: left">Observation[eicr-condition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-condition-definitions.html#Condition.onset[x]">onset.start</a></td>
      <td style="text-align: left">Problem Section (entries required) (V3)</td>
      <td style="text-align: left">Problem Concern Act (V3)/Problem Observation (V3)/effectiveTime + Problem Concern Act (V3)/Initial Case Report Trigger Code Problem Observation/effectiveTime</td>
    </tr>
    <tr>
      <td style="text-align: left">Symptoms (list)</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry</td>
      <td style="text-align: left">Observation[eicr-condition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-condition-definitions.html#Condition.code">code</a></td>
      <td style="text-align: left">Problem Section (entries required) (V3)</td>
      <td style="text-align: left">Problem Concern Act (V3)/Problem Observation (V3)/value</td>
    </tr>
    <tr>
      <td style="text-align: left">Lab Order Code</td>
      <td style="text-align: left">Composition[eicr-composition].section[Plan of Treatment Section].entry</td>
      <td style="text-align: left">ProcedureRequest[eicr-procedurerequest]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-procedurerequest-definitions.html#ProcedureRequest.code">code</a></td>
      <td style="text-align: left">Plan of Treatment Section (V2)</td>
      <td style="text-align: left">Planned Observation (V2)/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Lab Order Code (Trigger)</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].section[Plan of Treatment Section].entry[eicr-procedurerequest]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.section:slicePlanOfTreatmentSection.entry:sliceEICRProcedureRequest.extension:sliceTriggerEICRProcedureRequest">extension-eicr-trigger-code-flag</a></td>
      <td style="text-align: left">Plan of Treatment Section (V2)</td>
      <td style="text-align: left">Initial Case Report Trigger Code Lab Test Order.code</td>
    </tr>
    <tr>
      <td style="text-align: left">Laboratory Results</td>
      <td style="text-align: left">Composition[eicr-composition].section[Plan of Treatment Section].entry</td>
      <td style="text-align: left">Observation[us-core-observationresults]</td>
      <td style="text-align: left"><a href="https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observationresults-definitions.html#Observation.code">code and/or valueCodeableConcept</a></td>
      <td style="text-align: left">Results Section (V3)</td>
      <td style="text-align: left">“Result Observation (V3).code and/or</td>
    </tr>
    <tr>
      <td style="text-align: left">Result Observation (V3).value[xsi:type="CD"]</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">Laboratory Result (Trigger)</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].section[Results Section].entry[us-core-observationresults]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.section:sliceResultsSection.entry:sliceUSCoreObservationResults.extension:sliceTriggerUSCoreObservationResults">extension-eicr-trigger-code-flag</a></td>
      <td style="text-align: left">Results Section (V3)</td>
      <td style="text-align: left">“Result Organizer (V3)/Intitial Case Report Trigger Code Result Observation.code and/or</td>
    </tr>
    <tr>
      <td style="text-align: left">Result Organizer (V3)/Intitial Case Report Trigger Code Result Observation.value[xsi:type="CD"]</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: left">Filler Order Number</td>
      <td style="text-align: left">Composition[eicr-composition].section[Results Section].entry[us-core-observationresults]</td>
      <td style="text-align: left">Observation[us-core-observationresults]</td>
      <td style="text-align: left"><a name="3b3898c2-c05a-453c-b486-374104f110ae">​</a><a href="https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observationresults-definitions.html#Observation.identifier">identifier</a></td>
      <td style="text-align: left">Results Section (V3)</td>
      <td style="text-align: left">Result Organizer (V3)/id</td>
    </tr>
    <tr>
      <td style="text-align: left">Diagnoses</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry</td>
      <td style="text-align: left">Observation[eicr-condition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-condition-definitions.html#Condition.code">code</a></td>
      <td style="text-align: left">Problem Section (entries required) (V3)</td>
      <td style="text-align: left">Problem Observation (V3)</td>
    </tr>
    <tr>
      <td style="text-align: left">Diagnosis (Trigger)</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry[eicr-condition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.section:sliceProblemSection.entry:sliceEICRCondition.extension:sliceTriggerCondition">extension-eicr-trigger-code-flag</a></td>
      <td style="text-align: left">Problem Section (entries required) (V3)</td>
      <td style="text-align: left">Initial Case Report Trigger Code Problem Observation</td>
    </tr>
    <tr>
      <td style="text-align: left">Date of Diagnosis</td>
      <td style="text-align: left">Composition[eicr-composition].section[Problems Section].entry</td>
      <td style="text-align: left">Observation[eicr-condition]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-condition-definitions.html#Condition.assertedDate">assertedDate</a></td>
      <td style="text-align: left">Problem Section (entries required) (V3)</td>
      <td style="text-align: left">Problem Observation (V3)</td>
    </tr>
    <tr>
      <td style="text-align: left">Medications Administered (list)</td>
      <td style="text-align: left">Composition[eicr-composition].section[Medications Administered Section].entry</td>
      <td style="text-align: left">MedicationStatement[us-core-medicationstatement]</td>
      <td style="text-align: left"><a href="https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-medicationstatement-definitions.html#MedicationStatement.medication[x]">medication[x]</a></td>
      <td style="text-align: left">Medications Administered Section (V2)</td>
      <td style="text-align: left">Medication Information (V2)</td>
    </tr>
    <tr>
      <td style="text-align: left">Death Date</td>
      <td style="text-align: left">Composition[eicr-composition].subject</td>
      <td style="text-align: left">Patient[ecr-patient]</td>
      <td style="text-align: left"><a href="StructureDefinition-ecr-patient-definitions.html#Patient.deceased[x]">deceasedDateTime</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">ClinicalDocument/recordTarget/patientRole/patient/sdtc:deceasedInd</td>
    </tr>
    <tr>
      <td style="text-align: left">Immunization Status</td>
      <td style="text-align: left">Composition[eicr-composition].section[Immunizations Section].entry</td>
      <td style="text-align: left">Immunization[us-core-immunization]</td>
      <td style="text-align: left"><a href="https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html"></a></td>
      <td style="text-align: left">Immunications Section (entries required) (V3)</td>
      <td style="text-align: left">Immunization Activity (V3)</td>
    </tr>
    <tr>
      <td style="text-align: left">Travel History Dates</td>
      <td style="text-align: left">Composition[eicr-composition].section[Social History Section].entry</td>
      <td style="text-align: left">Observation[eicr-travel-history]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-travel-history-definitions.html#Observation.effective[x]">effective[x]</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Travel History/effectiveTime</td>
    </tr>
    <tr>
      <td style="text-align: left">Travel History Location - Free Text</td>
      <td style="text-align: left">Composition[eicr-composition].section[Social History Section].entry</td>
      <td style="text-align: left">Observation[eicr-travel-history]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-travel-history-definitions.html#Observation.component.valueCodeableConcept:valueCodeableConcept.text">component.valueCodeableConcept.text</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Travel History/text</td>
    </tr>
    <tr>
      <td style="text-align: left">Travel History Location - Coded</td>
      <td style="text-align: left">Composition[eicr-composition].section[Social History Section].entry</td>
      <td style="text-align: left">Observation[eicr-travel-history]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-travel-history-definitions.html#Observation.component.valueCodeableConcept:valueCodeableConcept.coding">component.valueCodeableConcept.coding</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Travel History/participant/participantRole/code</td>
    </tr>
    <tr>
      <td style="text-align: left">Travel History Location - Address</td>
      <td style="text-align: left">Composition[eicr-composition].section[Social History Section].entry</td>
      <td style="text-align: left">Observation[eicr-travel-history]</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-travel-history-definitions.html#Observation.component.valueCodeableConcept:valueCodeableConcept.extension:travelHistoryAddress">component.valueCodeableConcept.coding.extension-eicr-travel-history-address</a></td>
      <td style="text-align: left">Social History Section (V3)</td>
      <td style="text-align: left">Travel History/participant/participantRole/addr</td>
    </tr>
    <tr>
      <td style="text-align: left">Manually Initiated eICR</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].extension</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.extension:extensionEICRManuallyInitiatedReason">extension-eicr-manually-initiated-reason</a></td>
      <td style="text-align: left">eICR Initial Public Health Case Report Document (V2)</td>
      <td style="text-align: left">“ClinicalDocument/documentationOf/serviceEvent/code[@code="PHC1464"]</td>
    </tr>
    <tr>
      <td style="text-align: left">Manually Initiated eICR Reason</td>
      <td style="text-align: left">&nbsp;</td>
      <td style="text-align: left">Composition[eicr-composition].extension</td>
      <td style="text-align: left"><a href="StructureDefinition-eicr-composition-definitions.html#Composition.extension:extensionEICRManuallyInitiatedReason">extension-eicr-manually-initiated-reason.valueString</a></td>
      <td style="text-align: left">Encounters Section (entries required) (V3)</td>
      <td style="text-align: left">Encounter Activity (V3)/Initial Case Report Manual Initiation Reason Observation.value</td>
    </tr>
  </tbody>
</table>

{:.grid}