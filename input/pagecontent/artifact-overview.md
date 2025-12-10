 Complying with this implementation guide means complying with a number of profiles, extensions, value sets and custom search parameters. This page provides an overview of where this information can be found.

 The artifacts are of five types:

* [Profiles]({{site.data.fhir.path}}profiling.html) constrain FHIR resources to reflect requirements for US Public Health concepts.
* [Extensions]({{site.data.fhir.path}}extensibility.html) define additional data elements that can be conveyed as part of a resource.
* [Code Systems]({{site.data.fhir.path}}codesystem.html) define guide-specific terminologies to be used in one or more of the profiles.
* [Value Sets]({{site.data.fhir.path}}valueset.html) define the specific subsets of code systems that can be (or are recommended to be) used within one or more profile elements.
* Examples (instances) of the profiles defined in this guide and of profiles and resources defined elsewhere.

### Profiles

#### Profiles: Electronic Initial Case Reporting (eICR)

 * [eICR Composition](StructureDefinition-eicr-composition.html)
 * [eICR Country of Residence Observation](StructureDefinition-eicr-country-of-residence-observation.html)
 * [eICR Document Bundle](StructureDefinition-eicr-document-bundle.html)
 * [eICR Encounter](StructureDefinition-eicr-encounter.html)
 * [eICR Initiation Type Extension](StructureDefinition-eicr-initiation-type-extension.html)
 * [eICR Organism Detected Observation](StructureDefinition-eicr-organism-detected-observation.html)
 * [eICR Organism Susceptibility Observation](StructureDefinition-eicr-organism-susceptibility-observation.html)
 * [eICR Procedure](StructureDefinition-eicr-procedure.html)
 * [eICR ServiceRequest](StructureDefinition-eicr-servicerequest.html)
 * [eCR MessageHeader](StructureDefinition-ecr-messageheader.html)

#### Profiles: Reportability Response (RR)

 * [RR Composition](StructureDefinition-rr-composition.html)
 * [RR Document Bundle](StructureDefinition-rr-document-bundle.html)
 * [RR DocumentReference](StructureDefinition-rr-documentreference.html)
 * [eICR Processing Status Observation](StructureDefinition-rr-eicr-processing-status-observation.html)
 * [eICR Processing Status Reason Observation](StructureDefinition-rr-eicr-processing-status-reason-observation.html)
 * [eICR Receipt Time Extension](StructureDefinition-rr-eicr-receipt-time-extension.html)
 * [RR Relevant Reportable Condition Observation](StructureDefinition-rr-relevant-reportable-condition-observation.html)
 * [RR Reportability Information Observation](StructureDefinition-rr-reportability-information-observation.html)
 * [RR Responsible Agency Organization](StructureDefinition-rr-responsible-agency-organization.html)
 * [RRRouting Entity Organization](StructureDefinition-rr-routing-entity-organization.html)
 * [RRRules Authoring Agency Organization](StructureDefinition-rr-rules-authoring-agency-organization.html)
 * [RR Summary Observation](StructureDefinition-rr-summary-observation.html)

#### Profiles: Electronic Reporting and Surveillance Distribution (eRSD)

 * [eRSD PlanDefinition](StructureDefinition-ersd-plandefinition.html)
 * [eRSD Supplemental Library](StructureDefinition-ersd-supplemental-library.html)

#### Profiles: Extensions
  
 * [RR External Resource Extension](StructureDefinition-rr-external-resource-extension.html)
 * [Reportability Response Priority Extension](StructureDefinition-rr-priority-extension.html)
 * [eICR Processing Status Extension](StructureDefinition-rr-eicr-processing-status-extension.html)
 * [eICR Trigger Code Flag Extension](StructureDefinition-eicr-trigger-code-flag-extension.html)

### Examples

#### Examples: eICR Bundles & Compositions 
 * [Bundle - eCR Message for Zika Case](Bundle-bundle-ecr-message-zika.html)
 * [Bundle - eICR Document for Zika Case](Bundle-bundle-eicr-document-zika.html)
 * [Composition - Manually Initiated eICR for Zika Case](Composition-composition-eicr-zika-manual-initiation.html)
 * [Composition - eICR for Pertussis and Zika Case](Composition-composition-eicr-pertussis-zika.html)
 * [Composition - eICR for Zika Case](Composition-composition-eicr-zika.html)

#### Examples: RR Bundles & Compositions 

 * [RR Document Bundle Example: One Condition, One PHA](Bundle-bundle-rr-document-one-cond-one-pha.html)
 * [Reportability Response - One Condition/One PHA with eICR Validation Output example](Composition-composition-rr-single-single-html-validation-output.html)
 * [Reportability Response Composition - One Condition/One PHA example](Composition-composition-rr-one-cond-one-pha.html)

#### Examples: eICR

 * [Condition - Common Cold for Eve Everywoman](Condition-condition-eicr-eve-everywoman-common-cold.html)
 * [Condition - Diabetes Mellitus for Eve Everywoman](Condition-condition-eicr-eve-everywoman-diabetes.html)
 * [Condition - Pertussis for Eve Everywoman](Condition-condition-eicr-eve-everywoman-pertussis.html)
 * [Condition - Zika Virus Disease for Eve Everywoman](Condition-condition-eicr-eve-everywoman-zika.html)
 * [Country of Nationality Observation Example: Eve Everywoman](Observation-observation-country-of-nationality-eve-everywoman.html)
 * [Country of Residence Observation Example: Eve Everywoman](Observation-observation-country-of-residence-eve-everywoman.html)
 * [Device - ACME Extracorporeal Membrane Oxygenator](Device-device-ecmo.html)
 * [Device - YMCA EHR Software](Device-device-ecr-software-ymca.html)
 * [DocumentReference - Electronic Initial Case Report](DocumentReference-documentreference-eicr-example.html)
 * [Encounter - Completed Inpatient Visit for Eve Everywoman](Encounter-encounter-eicr-eve-everywoman-completed-inpatient.html)
 * [Encounter - Current Inpatient Visit for Eve Everywoman](Encounter-encounter-eicr-eve-everywoman-current-inpatient.html)
 * [Encounter - Outpatient Visit for Eve Everywoman](Encounter-encounter-eicr-eve-everywoman-outpatient.html)
 * [Immunization - Pneumococcal Vaccine for Eve Everywoman](Immunization-immunization-ecr-pneumo.html)
 * [MedicationAdministration - Azithromycin for Eve Everywoman](MedicationAdministration-medicationadministration-eve-everywoman-azithromycin.html)
 * [MedicationAdministration - Naloxone for Eve Everywoman](MedicationAdministration-medicationadministration-eve-everywoman-naloxone-response.html)
 * [Observation - Blood Pressure for Eve Everywoman](Observation-observation-blood-pressure-eve-everywoman.html)
 * [Observation - Characteristics of Home Environment for Eve Everywoman](Observation-observation-characteristics-of-home-environment-eve-everywoman.html)
 * [Observation - Disability Status for Eve Everywoman](Observation-observation-disability-status-eve-everywoman.html)
 * [Observation - Lab Result Lymphocytes for Eve Everywoman](Observation-observation-us-ph-lab-result-eve-everywoman-lymphocytes.html)
 * [Observation - Lab Result Pertussis Antibody for Eve Everywoman](Observation-observation-us-ph-lab-result-eve-everywoman-pertussis.html)
 * [Observation - Last Menstrual Period for Eve Everywoman](Observation-observation-last-menstrual-period-eve-everywoman.html)
 * [Observation - Meropenem Susceptibility for Eve Everywoman](Observation-observation-eicr-organism-susceptibility-meropenem.html)
 * [Observation - ODH Employment Status for Eve Everywoman](Observation-observation-odh-employment-status-ecr-eve-everywoman.html)
 * [Observation - ODH Past or Present Job for Eve Everywoman](Observation-observation-odh-past-or-present-job-eve-everywoman.html)
 * [Observation - ODH Usual Work for Eve Everywoman](Observation-observation-odh-usual-work-eve-everywoman.html)
 * [Observation - Organism Detected Klebsiella-oxytoca for Eve Everywoman](Observation-observation-eicr-organism-detected-klebsiella-oxytoca.html)
 * [Observation - Pregnancy Outcome for Eve Everywoman](Observation-observation-pregnancy-outcome-eve-everywoman.html)
 * [Observation - Pregnancy Status for Eve Everywoman](Observation-observation-pregnancy-status-eve-everywoman.html)
 * [Observation - Travel History for Eve Everywoman (January 2018)](Observation-observation-travel-history-eve-everywoman-201801.html)
 * [Observation - Vaccine Credential Patient Assertion for Eve Everywoman](Observation-observation-vaccine-credential-assertion-eve-everywoman.html)
 * [Procedure - Extracorporeal Membrane Oxygenation (ECMO)](Procedure-procedure-ecmo.html)
 * [US PH Encounter Example: encounter-eicr-eve-everywoman-external-encounter](Encounter-encounter-eicr-eve-everywoman-external-encounter.html)
 * [US PH Encounter Example: encounter-eicr-eve-everywoman-external-historical](Encounter-encounter-eicr-eve-everywoman-external-historical.html)

#### Examples: RR

 * [Observation - RR Relevant Reportable Condition](Observation-observation-rr-relevant-reportable-condition-observation.html)
 * [Observation - RR Reportability Information](Observation-observation-rr-reportability-information-observation.html)
 * [Observation - RR Summary](Observation-observation-rr-summary.html)
 * [RR DocumentReference example: Additional reporting needs](DocumentReference-documentreference-add-reporting-needs-pdf.html)
 * [RR DocumentReference example: Zika follow-up](DocumentReference-documentreference-zika-follow-up-pdf.html)
 * [RR DocumentReference example: Zika info](DocumentReference-documentreference-zika-info-pdf.html)
 * [RR One Condition One PHA DocumentReference](DocumentReference-documentreference-rr-one-cond-one-pha.html)
 * [RR eICR Processing Status Example: observation-rr-eicr-processing-status](Observation-observation-rr-eicr-processing-status.html)
 * [RR eICR Processing Status Reason Example: observation-rr-eicr-processing-status-reason](Observation-observation-rr-eicr-processing-status-reason.html)

#### Examples: eICR Entities

 * [Location - City Football Stadium](Location-location-ecr-city-football-stadium.html)
 * [Location - Salem Medical Center Clinic Building A](Location-location-ecr-salem-medical-center.html)
 * [Organization - Salem Medical Center](Organization-organization-ecr-salem-medical-center.html)
 * [Patient - Eve Everywoman](Patient-patient-ecr-eve-everywoman.html)
 * [Practitioner - Dr. Henry Seven](Practitioner-practitioner-us-core-henry-seven.html)
 * [PractitionerRole - Henry Seven](PractitionerRole-practitionerrole-henry-seven.html)
 
#### Examples: RR Entities

 * [RR Responsible Agency Organization Example: Health Authority West Responsible Agency](Organization-organization-rr-responsible-agency-haw.html)
 * [RR Routing Entity Organization Example: Health Authority West Routing Entity](Organization-organization-rr-routing-entity-haw.html)
 * [RR Rules Authoring Agency Organization Example: Health Authority West Rules Authoring Agency](Organization-organization-rr-rules-authoring-agency-haw.html)

#### Examples: eRSD

 * [Library - Reportable Condition Trigger Codes (RCTC)](Library-library-rctc-example.html)
 * [Library - US Public Health Specification Library](Library-library-us-ph-specification-library-example.html)
 * [Library - US Public Health Supplemental Library](Library-library-us-ph-supplemental-library-example.html)
 * [Library - US Public Health Supplemental ValueSet Library](Library-library-us-ph-supplemental-valueset-library-example.html)
 * [Library - US Public Health ValueSet Library](Library-library-us-ph-valueset-library-example.html)
 * [Library - eRSD Specification Library](Library-library-ersd-specification-library-example.html)
 * [Library - eRSD Supplemental Library](Library-library-ersd-supplemental-library-example.html)
 * [Library Packaging](OperationDefinition-operationdefinition-library-package.html)
 * [PlanDefinition - eRSD Instance with RelatedData Extension](PlanDefinition-plandefinition-ersd-instance-relateddata-extension-example.html)
 * [PlanDefinition Instance NamedEvent Example](PlanDefinition-plandefinition-ersd-instance-namedEvent-example.html)
 * [eRSD PlanDefinition Instance Example](PlanDefinition-plandefinition-ersd-instance-example.html)
 * [eRSD PlanDefinition Instance Simple Example](PlanDefinition-plandefinition-ersd-instance-simple-example.html)
 * [eRSD Specification Bundle Example](Bundle-bundle-ersd-specification-example.html)
 * [eRSD Supplemental Bundle Example](Bundle-bundle-ersd-supplemental-example.html)

#### Examples: Subscription

 * [Subscription - Diagnosis Problem Trigger Codes](Subscription-subscription-dxtc.html)
 * [Subscription - Lab Order Test Trigger Codes](Subscription-subscription-lotc.html)
 * [Subscription - Organism Substance Trigger Codes](Subscription-subscription-ostc.html)

#### Examples: Transport

 * [Endpoint - Salem Medical Center](Endpoint-endpoint-ecr-salem-medical-center.html)
 * [Endpoint - YMCA Center](Endpoint-endpoint-ecr-ymca.html)
 * [MessageHeader - Requested eICR](MessageHeader-messageheader-ecr-requested-eicr.html)

#### Examples: Supporting

 * [Parameters - eCR Expansion Parameters](Parameters-expansion-parameters-ecr.html)
 * [US PH Organization Example: Acme Labs](Organization-organization-ecr-acme-laboratory.html)
 * [US PH Organization Example: Health Authority West](Organization-organization-ecr-health-authority-west.html)
 * [US PH Organization Example: YMCA](Organization-organization-ecr-ymca-center.html)
 * [US Public Health Emergency Outbreak Information Example: Eve Everywoman](Observation-observation-us-ph-emergency-outbreak-info-eve-everywoman.html)
 * [US Public Health Exposure Contact Information Example: Football Game](Observation-observation-us-ph-exposure-contact-info-football-game.html)
 * [US Public Health PlanDefinition Example](PlanDefinition-plandefinition-us-public-health-example.html)
 * [US Public Health Postpartum Status Example: observation-postpartum-status-eve-everywoman](Observation-observation-postpartum-status-eve-everywoman.html)
 * [US Public Health Transportation Example: Eve Everywoman](Observation-observation-us-ph-transportation-details-eve-everywoman.html)

### Terminology

#### Examples: ValueSets

 * [Acanthamoeba Disease \[Keratitis\] (Disorders)(ICD10CM)](ValueSet-2.16.840.1.113762.1.4.1146.1506-example.html)
 * [Acanthamoeba Disease \[Keratitis\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1505-example.html)
 * [Anthrax (Tests for Bacillis anthracis Antibody)](ValueSet-2.16.840.1.113762.1.4.1146.481-example.html)
 * [Anthrax (Tests for Bacillis anthracis Antigen)](ValueSet-2.16.840.1.113762.1.4.1146.480-example.html)
 * [Anthrax Vaccine (RXNORM)](ValueSet-2.16.840.1.113762.1.4.1146.1082-example.html)
 * [Arsenic Exposure and Toxicity (Disorders)(ICD10CM)](ValueSet-2.16.840.1.113762.1.4.1146.1508-example.html)
 * [Arsenic Exposure and Toxicity (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1507-example.html)
 * [California Serogroup Virus Diseases (Tests for California Serogroup Virus Antibody \[Quantitative\])](ValueSet-2.16.840.1.113762.1.4.1146.1184.html)
 * [COVID\_19 (Tests for SARS\_CoV\_2 by Culture and Identification Method)](ValueSet-2.16.840.1.113762.1.4.1146.1223-example.html)
 * [Dengue Virus Infection (Organism or Substance in Lab Results)](ValueSet-2.16.840.1.113762.1.4.1146.528-example.html)
 * [Diphtheria (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.6-example.html)
 * [Diphtheria \[Suspected\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1435-example.html)
 * [Eastern Equine Encephalitis Virus Disease (Tests for Eastern Equine Encephalitis Virus Antibody \[Quantitative\])](ValueSet-2.16.840.1.113762.1.4.1146.1181-example.html)
 * [Enterococcus faecium or E. faecalis (Organism or Substance in Lab Results)](ValueSet-2.16.840.1.113762.1.4.1146.1469-example.html)
 * [Enterococcus gallinarum or E. casseliflavus/E. flavescens (Organism or Substance in Lab Results)](ValueSet-2.16.840.1.113762.1.4.1146.1468-example.html)
 * [Example Chlamydia Lab Obs Test Name Triggers for Public Health Reporting](ValueSet-valueset-chlamydia-triggering-example.html)
 * [eRSD ValueSet - Jurisdiction Types Example](ValueSet-valueset-ersd-jurisdiction-types-example.html)
 * [Example Chlamydia Supplemental Value Set for Public Health Reporting](ValueSet-valueset-chlamydia-supplemental-example.html)
 * [Example DXTC for Public Health Reporting](ValueSet-valueset-dxtc-example.html)
 * [Example Diagnosis Problem Triggers for Public Health Reporting](ValueSet-valueset-diagnosis-problem-triggers-example.html)
 * [Example LOTC Triggers for Public Health Reporting](ValueSet-valueset-lotc-example.html)
 * [Example LRTC Triggers for Public Health Reporting](ValueSet-valueset-lrtc-example.html)
 * [Example Lab Obs Test Name Triggers for Public Health Reporting](ValueSet-valueset-lab-obs-test-name-triggers-example.html)
 * [Example Lab Order Test Triggers for Public Health Reporting](ValueSet-valueset-lab-order-test-triggers-example.html)
 * [Example MRTC Triggers for Public Health Reporting](ValueSet-valueset-mrtc-example.html)
 * [Example Medications Triggers for Public Health Reporting](ValueSet-valueset-medications-triggers-example.html)
 * [Example OSTC Triggers for Public Health Reporting](ValueSet-valueset-ostc-example.html)
 * [Example Organism Substance Triggers for Public Health Reporting](ValueSet-valueset-organism-substance-triggers-example.html)
 * [Example Procedure Triggers for Public Health Reporting](ValueSet-valueset-procedure-triggers-example.html)
 * [Example SDTC Triggers for Public Health Reporting](ValueSet-valueset-sdtc-example.html)
 * [Example Suspected Disorder Triggers for Public Health Reporting](ValueSet-valueset-suspected-disorder-triggers-example.html)
 * [Executable Rule Filters Example Library](Library-library-executable-rule-filters-example.html)
 * [HIV Infection (ARV Attachment Inhibitors)(RXNORM)](ValueSet-2.16.840.1.113762.1.4.1146.1603-example.html)
 * [HIV Infection (ARV Boosters \[CYP3A4 Inhibitor\])(RXNORM)](ValueSet-2.16.840.1.113762.1.4.1146.1601-example.html)
 * [HIV Infection (ARV Integrase Strand Transfer Inhibitors \[INSTIs\])(RXNORM)](ValueSet-2.16.840.1.113762.1.4.1146.1600-example.html)
 * [HIV Infection (ARV Postattachment Inhibitors)(RXNORM)](ValueSet-2.16.840.1.113762.1.4.1146.1602-example.html)
 * [Hepatitis B Virus Infection (Organism or Substance in Lab Results)](ValueSet-2.16.840.1.113762.1.4.1146.408-example.html)
 * [Hepatitis C Virus Infection (Organism or Substance in Lab Results)](ValueSet-2.16.840.1.113762.1.4.1146.409-example.html)
 * [Indeterminate or Equivocal Lab Result Value](ValueSet-2.16.840.1.113762.1.4.1146.1035-example.html)
 * [Measles \[Suspected\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1436-example.html)
 * [Mumps (Test Panels for mumps virus IgM IgG Antibody)](ValueSet-2.16.840.1.113762.1.4.1146.762-example.html)
 * [Mumps (Test Panels for mumps virus Nucleic Acid)](ValueSet-2.16.840.1.113762.1.4.1146.761-example.html)
 * [Negative or Undetected Lab Result Value](ValueSet-2.16.840.1.113762.1.4.1146.1034-example.html)
 * [Poliomyelitis \[Suspected\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1438-example.html)
 * [Powassan Virus Disease (Tests for Powassan Virus Antibody \[Quantitative\])](ValueSet-2.16.840.1.113762.1.4.1146.1182-example.html)
 * [Rabies \[Suspected\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1439-example.html)
 * [US Public Health ValueSet - Example](ValueSet-valueset-us-ph-example.html)
 * [Viral Hemorrhagic Fever \[Suspected\] (Disorders)(SNOMED)](ValueSet-2.16.840.1.113762.1.4.1146.1446-example.html)

#### Examples: CodeSystems

 * [CodeSystem Properties Example](CodeSystem-codesystem-properties-example.html)
 * [eRSD Jurisdiction Types Example](CodeSystem-codesystem-ersd-jurisdiction-types-example.html)
 * [eRSD Jurisdictions Example](CodeSystem-codesystem-ersd-jurisdictions-example.html)