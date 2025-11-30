Profile: EICRComposition
Parent: USPublicHealthComposition
Id: eicr-composition
Title: "eICR Composition"
Description: "This Composition profile represents an Electronic Initial Case Report (eICR). It is based on and further constrains the US Public Health Composition."
* . MS
* . ^short = "eICR Composition Profile"
* . ^definition = "This Composition profile represents an Electronic Initial Case Report (eICR). It is based on and further constrains the US Public Health Composition."

// * extension 2.. MS
// * extension ^slicing.discriminator.type = #value
// * extension ^slicing.discriminator.path = "url"
// * extension ^slicing.rules = #open
* extension contains
    EICRInitiationTypeExtension named extensionEICRInitiationType 0..1 MS and
    USPublicHealthInitiationReasonExtension named extensionEICRInitiationReason 0..* MS
* extension[extensionEICRInitiationType] ^short = "Initial Case Report Initiation Type"
* extension[extensionEICRInitiationType] ^definition = "When set to \"PHC1464: Manually Initiated eICR\", indicates that this document is manually initiated. When set to \"PHC2235: Alternately Initiated eICR\", indicates that this eICR document was initiated by automated process and is intended to force reporting to the responsible Public Health Agency (PHA) for the jurisdiction of care. Unlike eICRs manually initiated by a provider, which are force reported to all relevant jurisdictions, PHC2235 will be sent to, and only to, the PHA of the jurisdiction of care. If a reportable condition is found by public health decision support then the alternately initiated eICR may also be reported to the jurisdiction of residence PHA."
* extension[extensionEICRInitiationReason] ^short = "Initial Case Report Initiation Reason"
* extension[extensionEICRInitiationReason] ^definition = "An explanation for the manual or alternate initiation of the eICR."
* type = $loinc#55751-2
* type MS
* type ^short = "Public Health Case Report"
* type ^definition = "The type of this Composition is a Public Health Case Report"
* subject only Reference(USPublicHealthPatient)
* encounter only Reference(EICREncounter)
* encounter ^short = "eICR Encounter"
* encounter ^definition = "The encounter during which the eICR was triggered."
* author ^short = "The author(s) of the document. Where a trigger occurs outside of an encounter the author will be a US Public Health PractitionerRole and represent the Provider and Facility for reporting purposes."
* custodian 1..
// * relatesTo MS
// * relatesTo ^slicing.discriminator.type = #value
// * relatesTo ^slicing.discriminator.path = "code"
// * relatesTo ^slicing.rules = #open
// * relatesTo contains
//     sliceTransformed 0..1 MS and
//     sliceReplaced 0..1 MS
// // * relatesTo[sliceTransformed] 0..1 MS
// * relatesTo[sliceTransformed] ^short = "Document or Composition that this Composition is transformed from"
// * relatesTo[sliceTransformed] ^definition = "Document of Composition that this Composition is transformed from"
// * relatesTo[sliceTransformed].code = #transforms (exactly)
// * relatesTo[sliceTransformed].target[x] only Identifier
// * relatesTo[sliceTransformed].target[x] ^short = "Identifier of the Document or Composition transformed"
// * relatesTo[sliceTransformed].target[x] ^definition = "Identifier of the Document or Composition transformed"
// // * relatesTo[sliceReplaced] 0..1 MS
// * relatesTo[sliceReplaced] ^short = "Document or Composition that this Composition replaces"
// * relatesTo[sliceReplaced] ^definition = "Document or Composition that this Composition replaces"
// * relatesTo[sliceReplaced].code = #replaces (exactly)
// * relatesTo[sliceReplaced].target[x] ^short = "Identifier/Reference to the Document or Composition transformed"
// * relatesTo[sliceReplaced].target[x] ^definition = "Identifier/Reference to the Document or Composition transformed"
* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    sliceReasonForVisitSection 1..1 MS and
    sliceChiefComplaintSection 1..1 MS and
    sliceHistoryOfPresentIllnessSection 1..1 MS and
    sliceProblemSection 1..1 MS and
    sliceMedicationsAdministeredSection 1..1 MS and
    sliceAdmissionMedicationsSection 0..1 MS and
    sliceMedicationsSection 0..1 MS and
    sliceResultsSection 1..1 MS and
    slicePlanOfTreatmentSection 0..1 MS and
    sliceImmunizationsSection 0..1 MS and
    sliceProceduresSection 0..1 MS and
    sliceVitalSignsSection 0..1 MS and
    sliceSocialHistorySection 1..1 MS and
    slicePregnancySection 0..1 MS and
    sliceEmergencyOutbreakInformationSection 0..1 MS and
    slicePastMedicalHistorySection 0..1 MS and
    sliceReviewOfSystemsSection 0..1 MS and
    sliceCareTeamsSection 0..1 MS and
    sliceReportabilityResponseInformationSection 0..1 MS
* section[sliceReasonForVisitSection] ^short = "Reason for Visit Section"
* section[sliceReasonForVisitSection] ^definition = "This section records the reason for the patient's visit (the provider’s description of the reason for visit)."
* section[sliceReasonForVisitSection].code 1.. MS
* section[sliceReasonForVisitSection].code = $loinc#29299-5
* section[sliceReasonForVisitSection].code ^short = "Reason for Visit code"
* section[sliceReasonForVisitSection].code ^definition = "Reason for Visit code"
* section[sliceReasonForVisitSection].text 1.. MS
* section[sliceReasonForVisitSection].text ^short = "Reason for Visit narrative"
* section[sliceReasonForVisitSection].text ^definition = "Reason for Visit narrative"

* section[sliceChiefComplaintSection] ^short = "Chief Complaint Section"
* section[sliceChiefComplaintSection] ^definition = "This section records the patient's chief complaint (the patient’s own description)."
* section[sliceChiefComplaintSection].code 1.. MS
* section[sliceChiefComplaintSection].code = $loinc#10154-3
* section[sliceChiefComplaintSection].code ^short = "Chief Complaint code"
* section[sliceChiefComplaintSection].code ^definition = "Chief Complaint code"
* section[sliceChiefComplaintSection].text 1.. MS
* section[sliceChiefComplaintSection].text ^short = "Chief Complaint narrative"
* section[sliceChiefComplaintSection].text ^definition = "Chief Complaint narrative"

* section[sliceHistoryOfPresentIllnessSection] ^short = "History of Present Illness Section"
* section[sliceHistoryOfPresentIllnessSection] ^definition = "The History of Present Illness section describes the history related to the reason for the encounter. It contains the historical details leading up to and pertaining to the patient’s current complaint or reason for seeking medical care."
* section[sliceHistoryOfPresentIllnessSection].code 1.. MS
* section[sliceHistoryOfPresentIllnessSection].code = $loinc#10164-2
* section[sliceHistoryOfPresentIllnessSection].code ^short = "History of Present Illness code"
* section[sliceHistoryOfPresentIllnessSection].code ^definition = "History of Present Illness code"
* section[sliceHistoryOfPresentIllnessSection].text 1.. MS
* section[sliceHistoryOfPresentIllnessSection].text ^short = "History of Present Illness narrative"
* section[sliceHistoryOfPresentIllnessSection].text ^definition = "History of Present Illness narrative"

* section[sliceProblemSection] ^short = "Problem Section"
* section[sliceProblemSection] ^definition = "This section lists and describes all the patient's current problems on the maintained problem list."
* section[sliceProblemSection].code 1.. MS
* section[sliceProblemSection].code = $loinc#11450-4
* section[sliceProblemSection].code ^short = "Problem Section code"
* section[sliceProblemSection].code ^definition = "Problem Section code"
* section[sliceProblemSection].text 1.. MS
* section[sliceProblemSection].text ^short = "Problem Section narrative"
* section[sliceProblemSection].text ^definition = "Problem Section narrative"
* section[sliceProblemSection].entry MS
* section[sliceProblemSection].entry ^slicing.discriminator.type = #profile
* section[sliceProblemSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceProblemSection].entry ^slicing.rules = #open
* section[sliceProblemSection].entry contains
    sliceEICRCondition 0..* MS
* section[sliceProblemSection].entry[sliceEICRCondition] only Reference(USPublicHealthConditionProblemsHealthConcerns)
* section[sliceProblemSection].entry[sliceEICRCondition] ^sliceName = "sliceEICRCondition"
* section[sliceProblemSection].entry[sliceEICRCondition] ^short = "eICR Condition entry"
* section[sliceProblemSection].entry[sliceEICRCondition] ^definition = "The eICR Trigger Code Flag (extension) is present for an eICR Condition (diagnosis), based on a trigger code match of the diagnosis (condition.code) to the eRSD PlanDefinition Diagnosis Trigger."
* section[sliceProblemSection].entry[sliceEICRCondition] ^mustSupport = true
* section[sliceProblemSection].entry[sliceEICRCondition].extension MS
* section[sliceProblemSection].entry[sliceEICRCondition].extension ^slicing.discriminator.type = #value
* section[sliceProblemSection].entry[sliceEICRCondition].extension ^slicing.discriminator.path = "url"
* section[sliceProblemSection].entry[sliceEICRCondition].extension ^slicing.rules = #open
* section[sliceProblemSection].entry[sliceEICRCondition].extension contains EICRTriggerCodeFlagExtension named sliceTriggerCondition 0..1 MS
* section[sliceProblemSection].entry[sliceEICRCondition].extension[sliceTriggerCondition] ^short = "eICR Trigger Code Flag"
* section[sliceProblemSection].entry[sliceEICRCondition].extension[sliceTriggerCondition] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated."

* section[sliceMedicationsAdministeredSection] ^short = "Medications Administered Section"
* section[sliceMedicationsAdministeredSection] ^definition = "The Medications Administered Section defines medications administered during the encounter."
* section[sliceMedicationsAdministeredSection].code 1.. MS
* section[sliceMedicationsAdministeredSection].code = $loinc#29549-3
* section[sliceMedicationsAdministeredSection].code ^short = "Medications Administered Section code"
* section[sliceMedicationsAdministeredSection].code ^definition = "Medications Administered Section code"
* section[sliceMedicationsAdministeredSection].text 1.. MS
* section[sliceMedicationsAdministeredSection].text ^short = "Medications Administered Section narrative"
* section[sliceMedicationsAdministeredSection].text ^definition = "Medications Administered Section narrative"
* section[sliceMedicationsAdministeredSection].entry MS
* section[sliceMedicationsAdministeredSection].entry ^slicing.discriminator.type = #profile
* section[sliceMedicationsAdministeredSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceMedicationsAdministeredSection].entry ^slicing.rules = #open
* section[sliceMedicationsAdministeredSection].entry contains
    sliceMedicationAdministration 0..* MS
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] only Reference(USPublicHealthMedicationAdministration)
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^sliceName = "sliceMedicationAdministration"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^short = "Medication Administration entry"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^definition = "The eICR Trigger Code Flag (extension) is present for an MedicationAdministration, based on a trigger code match of the medication (MedicationAdministration.medicationCodeableConcept) to the eRSD PlanDefinition Medications Trigger."
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^mustSupport = true
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension MS
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension ^slicing.discriminator.type = #value
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension ^slicing.discriminator.path = "url"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension ^slicing.rules = #open
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension contains EICRTriggerCodeFlagExtension named sliceTriggerMedicationAdministered 0..1 MS
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension[sliceTriggerMedicationAdministered] ^short = "eICR Trigger Code Flag"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration].extension[sliceTriggerMedicationAdministered] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eICR to be generated."

* section[sliceAdmissionMedicationsSection] ^short = "Admission Medications Section"
* section[sliceAdmissionMedicationsSection] ^definition = "The Admissions Medications Section contains the medications taken by the patient prior to and at the time of admission to the facility."
* section[sliceAdmissionMedicationsSection].code 1.. MS
* section[sliceAdmissionMedicationsSection].code = $loinc#42346-7
* section[sliceAdmissionMedicationsSection].code ^short = "Admission Medications Section code"
* section[sliceAdmissionMedicationsSection].code ^definition = "Admission Medications Section code"
* section[sliceAdmissionMedicationsSection].text 1.. MS
* section[sliceAdmissionMedicationsSection].text ^short = "Admission Medications Section narrative"
* section[sliceAdmissionMedicationsSection].text ^definition = "Admission Medications Section narrative"
* section[sliceAdmissionMedicationsSection].entry MS
* section[sliceAdmissionMedicationsSection].entry ^slicing.discriminator.type = #profile
* section[sliceAdmissionMedicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceAdmissionMedicationsSection].entry ^slicing.rules = #open
* section[sliceAdmissionMedicationsSection].entry contains
    sliceMedication 0..* MS
* section[sliceAdmissionMedicationsSection].entry[sliceMedication] only Reference(MedicationAdministration)
* section[sliceAdmissionMedicationsSection].entry[sliceMedication] ^sliceName = "sliceMedication"
* section[sliceAdmissionMedicationsSection].entry[sliceMedication] ^short = "Admission Medication entry"
* section[sliceAdmissionMedicationsSection].entry[sliceMedication] ^mustSupport = true

* section[sliceMedicationsSection] ^short = "Medications Section"
* section[sliceMedicationsSection] ^definition = "The Medications Section contains a patient's current medications and pertinent medication history. At a minimum, the currently active medications are listed. An entire medication history is an option."
* section[sliceMedicationsSection].code 1.. MS
* section[sliceMedicationsSection].code = $loinc#10160-0
* section[sliceMedicationsSection].code ^short = "Medications Section code"
* section[sliceMedicationsSection].code ^definition = "Medications Section code"
* section[sliceMedicationsSection].text 1.. MS
* section[sliceMedicationsSection].text ^short = "Medications Section narrative"
* section[sliceMedicationsSection].text ^definition = "Medications Section narrative"
* section[sliceMedicationsSection].entry MS
* section[sliceMedicationsSection].entry ^slicing.discriminator.type = #profile
* section[sliceMedicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceMedicationsSection].entry ^slicing.rules = #open
* section[sliceMedicationsSection].entry contains
    sliceMedicationAdministration 0..* MS
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] only Reference(MedicationAdministration)
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^sliceName = "sliceMedicationAdministration"
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^short = "Medication Administration entry"
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^definition = "The eICR Trigger Code Flag (extension) is present for an MedicationAdministration, based on a trigger code match of the medication (MedicationAdministration.medicationCodeableConcept) to the eRSD PlanDefinition Medications Trigger."
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^mustSupport = true
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension MS
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension ^slicing.discriminator.type = #value
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension ^slicing.discriminator.path = "url"
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension ^slicing.rules = #open
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension contains EICRTriggerCodeFlagExtension named sliceTriggerMedicationAdministered 0..1 MS
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension[sliceTriggerMedicationAdministered] ^short = "eICR Trigger Code Flag"
* section[sliceMedicationsSection].entry[sliceMedicationAdministration].extension[sliceTriggerMedicationAdministered] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eICR to be generated."

* section[sliceResultsSection] ^short = "Results Section"
* section[sliceResultsSection] ^definition = "The Results Section contains observations of results generated by laboratories, imaging procedures, and other procedures. The scope includes observations such as hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. The section often includes notable results such as abnormal values or relevant trends, and could contain all results for the period of time being documented.\n\nLaboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as where a cardiologist reports the left ventricular ejection fraction based on the review of a cardiac echocardiogram.\n\nProcedure results are typically generated by a clinician to provide more granular information about component observations made during a procedure, such as where a gastroenterologist reports the size of a polyp observed during a colonoscopy.\n"
* section[sliceResultsSection].code 1.. MS
* section[sliceResultsSection].code = $loinc#30954-2
* section[sliceResultsSection].code ^short = "Results Section code"
* section[sliceResultsSection].code ^definition = "Results Section code"
* section[sliceResultsSection].text 1.. MS
* section[sliceResultsSection].text ^short = "Results Section narrative"
* section[sliceResultsSection].text ^definition = "Results Section narrative"
* section[sliceResultsSection].entry MS
* section[sliceResultsSection].entry ^slicing.discriminator.type = #profile
* section[sliceResultsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceResultsSection].entry ^slicing.rules = #open
* section[sliceResultsSection].entry contains
    sliceUSPHLabResultObservation 0..* MS and
    sliceOrganismDetectedObservation 0..* MS
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation] only Reference(USPublicHealthLaboratoryResultObservation)
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation] ^sliceName = "sliceUSPHLabResultObservation"
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation] ^definition = "The eICR Trigger Code Flag (extension) is present for a laboratory result, based on a trigger code match of either the lab test (observation.code) to the eRSD PlanDefinition Lab Obs Test Name Trigger or the lab test result (observation.value) to the eRSD PlanDefinition Organism Substance Trigger."
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation] ^mustSupport = true
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension MS
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension ^slicing.discriminator.type = #value
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension ^slicing.discriminator.path = "url"
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension ^slicing.rules = #open
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension contains 
    EICRTriggerCodeFlagExtension named sliceTriggerUSPHLabResultObservation 0..* MS
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension[sliceTriggerUSPHLabResultObservation] ^short = "eICR Trigger Code Flag"
* section[sliceResultsSection].entry[sliceUSPHLabResultObservation].extension[sliceTriggerUSPHLabResultObservation] ^definition = "A flag to indicate that the **target** reference represents one or more (lab result observations can contain hasMember) triggering events and caused the eCR to be generated."

* section[sliceResultsSection].entry[sliceOrganismDetectedObservation] only Reference(EICROrganismDetectedObservation)
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation] ^sliceName = "sliceOrganismDetectedObservation"
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation] ^definition = "The eICR Trigger Code Flag (extension) is present for a laboratory result, based on a trigger code match of either the lab test (observation.code) to the eRSD PlanDefinition Lab Obs Test Name Trigger or the lab test result (observation.value) to the eRSD PlanDefinition Organism Substance Trigger."
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation] ^mustSupport = true
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension MS
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension ^slicing.discriminator.type = #value
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension ^slicing.discriminator.path = "url"
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension ^slicing.rules = #open
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension contains 
    EICRTriggerCodeFlagExtension named sliceTriggerEICROrganismDetectedObservation 0..* MS
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension[sliceTriggerEICROrganismDetectedObservation] ^short = "eICR Trigger Code Flag"
* section[sliceResultsSection].entry[sliceOrganismDetectedObservation].extension[sliceTriggerEICROrganismDetectedObservation] ^definition = "A flag to indicate that the **target** reference represents one or more (lab result observations can contain hasMember) triggering events and caused the eCR to be generated."

* section[slicePlanOfTreatmentSection] ^short = "Plan of Treatment Section"
* section[slicePlanOfTreatmentSection] ^definition = "This section contains data that define pending orders, interventions, encounters, services, and procedures for the patient. It is limited to prospective, unfulfilled, or incomplete orders and requests only. All active, incomplete, or pending orders, appointments, referrals, procedures, services, or any other pending event of clinical significance to the current care of the patient should be listed. "
* section[slicePlanOfTreatmentSection].code 1.. MS
* section[slicePlanOfTreatmentSection].code = $loinc#18776-5
* section[slicePlanOfTreatmentSection].code ^short = "Plan of Treatment code"
* section[slicePlanOfTreatmentSection].code ^definition = "Plan of Treatment code"
* section[slicePlanOfTreatmentSection].text 1.. MS
* section[slicePlanOfTreatmentSection].text ^short = "Plan of Treatment narrative"
* section[slicePlanOfTreatmentSection].text ^definition = "Plan of Treatment narrative"
* section[slicePlanOfTreatmentSection].entry 1.. MS
* section[slicePlanOfTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[slicePlanOfTreatmentSection].entry ^slicing.discriminator.path = "resolve()"
* section[slicePlanOfTreatmentSection].entry ^slicing.rules = #open
* section[slicePlanOfTreatmentSection].entry contains
    sliceEICRServiceRequest 0..* MS and
    sliceUSCoreMedicationRequest 0..* MS
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest] only Reference(EICRServiceRequest)
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest] ^sliceName = "sliceEICRServiceRequest"
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest] ^short = "eICR Service Request entry"
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest] ^definition = "The eICR Trigger Code Flag (extension) is present for a laboratory test order, based on a trigger code match of the lab test (observation.code) to the eRSD PlanDefinition Lab Obs Test Name Trigger or the lab test result (observation.value) to the eRSD PlanDefinition Organism Substance Trigger."
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest] ^mustSupport = true
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension MS
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension ^slicing.discriminator.type = #value
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension ^slicing.discriminator.path = "url"
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension ^slicing.rules = #open
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension contains EICRTriggerCodeFlagExtension named sliceTriggerEICRServiceRequest 0..1 MS
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension[sliceTriggerEICRServiceRequest] ^short = "eICR Trigger Code Flag"
* section[slicePlanOfTreatmentSection].entry[sliceEICRServiceRequest].extension[sliceTriggerEICRServiceRequest] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated."
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest] only Reference(USCoreMedicationRequestProfile)
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest] ^sliceName = "sliceUSCoreMedicationRequest"
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest] ^short = "US Core Medication Request entry"
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest] ^definition = "The eICR Trigger Code Flag (extension) is present for a MedicationRequest, based on a trigger code match of the medication (MedicationRequest.medicationCodeableConcept) to the eRSD PlanDefinition Medications Trigger."
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest] ^mustSupport = true
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension MS
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension ^slicing.discriminator.type = #value
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension ^slicing.discriminator.path = "url"
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension ^slicing.rules = #open
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension contains EICRTriggerCodeFlagExtension named sliceTriggerUSCoreMedicationRequest 0..1 MS
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension[sliceTriggerUSCoreMedicationRequest] ^short = "eICR Trigger Code Flag"
* section[slicePlanOfTreatmentSection].entry[sliceUSCoreMedicationRequest].extension[sliceTriggerUSCoreMedicationRequest] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated."

* section[sliceImmunizationsSection] ^short = "Immunizations Section"
* section[sliceImmunizationsSection] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sliceImmunizationsSection].code 1.. MS
* section[sliceImmunizationsSection].code = $loinc#11369-6
* section[sliceImmunizationsSection].code ^short = "Immunizations code"
* section[sliceImmunizationsSection].code ^definition = "Immunizations code"
* section[sliceImmunizationsSection].text 1.. MS
* section[sliceImmunizationsSection].text ^short = "Immunizations narrative"
* section[sliceImmunizationsSection].text ^definition = "Immunizations narrative"
* section[sliceImmunizationsSection].entry 1.. MS
* section[sliceImmunizationsSection].entry ^slicing.discriminator.type = #profile
* section[sliceImmunizationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceImmunizationsSection].entry ^slicing.rules = #open
* section[sliceImmunizationsSection].entry contains
    sliceUSCoreImmunization 0..* MS and
    sliceVaccineCredentialsPatientAssertion 0..* MS
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] only Reference($us-core-immunization)
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] ^sliceName = "sliceUSCoreImmunization"
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] ^short = "Immunization entry"
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] ^definition = "The eICR Trigger Code Flag (extension) is present for an Immunization, based on a trigger code match of the vaccine (Immunization.vaccineCode) to the eRSD PlanDefinition Immunizations Trigger."
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] ^mustSupport = true
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension MS
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension ^slicing.discriminator.type = #value
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension ^slicing.discriminator.path = "url"
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension ^slicing.rules = #open
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension contains EICRTriggerCodeFlagExtension named sliceTriggerImmunization 0..1 MS
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension[sliceTriggerImmunization] ^short = "eICR Trigger Code Flag"
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization].extension[sliceTriggerImmunization] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated."
* section[sliceImmunizationsSection].entry[sliceVaccineCredentialsPatientAssertion] only Reference(USPublicHealthVaccineCredentialPatientAssertion)
* section[sliceImmunizationsSection].entry[sliceVaccineCredentialsPatientAssertion] ^sliceName = "sliceVaccineCredentialsPatientAssertion"
* section[sliceImmunizationsSection].entry[sliceVaccineCredentialsPatientAssertion] ^mustSupport = true

* section[sliceProceduresSection] ^short = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated."
* section[sliceProceduresSection] ^definition = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized."
* section[sliceProceduresSection].code 1.. MS
* section[sliceProceduresSection].code = $loinc#47519-4
* section[sliceProceduresSection].code ^short = "Procedures Section code"
* section[sliceProceduresSection].code ^definition = "Procedures Section code"
* section[sliceProceduresSection].text 1.. MS
* section[sliceProceduresSection].text ^short = "Procedures Section narrative"
* section[sliceProceduresSection].text ^definition = "Procedures Section narrative"
* section[sliceProceduresSection].entry 1.. MS
* section[sliceProceduresSection].entry ^slicing.discriminator.type = #profile
* section[sliceProceduresSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceProceduresSection].entry ^slicing.rules = #open
* section[sliceProceduresSection].entry contains
    sliceEICRProcedure 0..* MS
* section[sliceProceduresSection].entry[sliceEICRProcedure] only Reference(EICRProcedure)
* section[sliceProceduresSection].entry[sliceEICRProcedure] ^sliceName = "sliceEICRProcedure"
* section[sliceProceduresSection].entry[sliceEICRProcedure] ^short = "EICR Procedure entry"
// * section[sliceProceduresSection].entry[sliceEICRProcedure] ^definition = "The eICR Trigger Code Flag (extension) is present for a procedure, based on a trigger code match of the procedure (procedure.code) to the eRSD PlanDefinition Procedure Trigger."
* section[sliceProceduresSection].entry[sliceEICRProcedure] ^mustSupport = true
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension MS
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension ^slicing.discriminator.type = #value
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension ^slicing.discriminator.path = "url"
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension ^slicing.rules = #open
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension contains EICRTriggerCodeFlagExtension named sliceTriggerProcedure 0..1 MS
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension[sliceTriggerProcedure] ^short = "eICR Trigger Code Flag"
// * section[sliceProceduresSection].entry[sliceEICRProcedure].extension[sliceTriggerProcedure] ^definition = "A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated."

* section[sliceVitalSignsSection] ^short = "Vital Signs Section"
* section[sliceVitalSignsSection] ^definition = "The Vital Signs Section contains relevant vital signs for the eICR. The section should include notable vital signs such as the most recent, maximum and/or minimum, baseline, or relevant trends. Vital signs are represented in the same way as other results, but are aggregated into their own section to follow clinical conventions."
* section[sliceVitalSignsSection].code 1.. MS
* section[sliceVitalSignsSection].code = $loinc#8716-3
* section[sliceVitalSignsSection].code ^short = "Vital Signs code"
* section[sliceVitalSignsSection].code ^definition = "Vital Signs code"
* section[sliceVitalSignsSection].text 1.. MS
* section[sliceVitalSignsSection].text ^short = "Vital Signs narrative"
* section[sliceVitalSignsSection].text ^definition = "Vital Signs narrative"
* section[sliceVitalSignsSection].entry MS
* section[sliceVitalSignsSection].entry ^slicing.discriminator.type = #profile
* section[sliceVitalSignsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceVitalSignsSection].entry ^slicing.rules = #open
* section[sliceVitalSignsSection].entry contains
    sliceVitalSigns 0..* MS
* section[sliceVitalSignsSection].entry[sliceVitalSigns] only Reference(USCoreVitalSignsProfile)
* section[sliceVitalSignsSection].entry[sliceVitalSigns] ^sliceName = "sliceVitalSigns"
* section[sliceVitalSignsSection].entry[sliceVitalSigns] ^mustSupport = true

* section[sliceSocialHistorySection] ^short = "Social History Section"
* section[sliceSocialHistorySection] ^definition = "This section contains social history data that influence a patient’s physical, psychological or emotional health such as occupation, home environment, travel history, and disability status."
* section[sliceSocialHistorySection].code 1.. MS
* section[sliceSocialHistorySection].code = $loinc#29762-2
* section[sliceSocialHistorySection].code ^short = "Social History Section code"
* section[sliceSocialHistorySection].code ^definition = "Social History Section code"
* section[sliceSocialHistorySection].text 1.. MS
* section[sliceSocialHistorySection].text ^short = "Social History Section narrative"
* section[sliceSocialHistorySection].text ^definition = "Social History Section narrative"
* section[sliceSocialHistorySection].entry MS
* section[sliceSocialHistorySection].entry ^slicing.discriminator.type = #profile
* section[sliceSocialHistorySection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceSocialHistorySection].entry ^slicing.rules = #open
* section[sliceSocialHistorySection].entry contains
    sliceCharacteristicsOfHomeEnvironment 0..* MS and
    sliceODHPastOrPresentJob 0..* MS and
    sliceODHUsualWork 0..* MS and
    sliceODHEmploymentStatus 0..* MS and
    sliceTravelHistory 0..* MS and
    sliceDisabilityStatus 0..* MS and
    sliceExposureContactInformation 0..* MS and
    sliceCountryOfResidence 0..* MS and
    sliceCountryOfNationality 0..* MS
* section[sliceSocialHistorySection].entry[sliceCharacteristicsOfHomeEnvironment] only Reference(USPublicHealthCharacteristicsOfHomeEnvironment)
* section[sliceSocialHistorySection].entry[sliceCharacteristicsOfHomeEnvironment] ^sliceName = "sliceCharacteristicsOfHomeEnvironment"
* section[sliceSocialHistorySection].entry[sliceCharacteristicsOfHomeEnvironment] ^short = "Characteristics of Home Environment"
* section[sliceSocialHistorySection].entry[sliceCharacteristicsOfHomeEnvironment] ^definition = "If the patient is homeless, complete as much address information as possible (city, zip, county, etc.) and use the Characteristics of Home Environment profile to indicate that the patient is homeless."
* section[sliceSocialHistorySection].entry[sliceCharacteristicsOfHomeEnvironment] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] only Reference(PastOrPresentJob)
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] ^sliceName = "sliceODHPastOrPresentJob"
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] ^short = "ODH Past or Present Job entry"
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] ^definition = "ODH Past or Present Job entry"
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceODHUsualWork] only Reference(UsualWork)
* section[sliceSocialHistorySection].entry[sliceODHUsualWork] ^sliceName = "sliceODHUsualWork"
* section[sliceSocialHistorySection].entry[sliceODHUsualWork] ^short = "ODH Usual Work entry"
* section[sliceSocialHistorySection].entry[sliceODHUsualWork] ^definition = "ODH Usual Work entry"
* section[sliceSocialHistorySection].entry[sliceODHUsualWork] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceODHEmploymentStatus] only Reference(EmploymentStatus)
* section[sliceSocialHistorySection].entry[sliceODHEmploymentStatus] ^sliceName = "sliceODHEmploymentStatus"
* section[sliceSocialHistorySection].entry[sliceODHEmploymentStatus] ^short = "ODH Employment Status entry"
* section[sliceSocialHistorySection].entry[sliceODHEmploymentStatus] ^definition = "ODH Employment Status entry"
* section[sliceSocialHistorySection].entry[sliceODHEmploymentStatus] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceTravelHistory] only Reference(USPublicHealthTravelHistory)
* section[sliceSocialHistorySection].entry[sliceTravelHistory] ^sliceName = "sliceTravelHistory"
* section[sliceSocialHistorySection].entry[sliceTravelHistory] ^short = "Travel History entry"
* section[sliceSocialHistorySection].entry[sliceTravelHistory] ^definition = "ODH Travel History entry"
* section[sliceSocialHistorySection].entry[sliceTravelHistory] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceDisabilityStatus] only Reference(USPublicHealthDisabilityStatus)
* section[sliceSocialHistorySection].entry[sliceDisabilityStatus] ^sliceName = "sliceDisabilityStatus"
* section[sliceSocialHistorySection].entry[sliceDisabilityStatus] ^short = "Disability Status entry"
* section[sliceSocialHistorySection].entry[sliceDisabilityStatus] ^definition = "Disability status entry"
* section[sliceSocialHistorySection].entry[sliceDisabilityStatus] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] only Reference(USPublicHealthExposureContactInformation)
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] ^sliceName = "sliceExposureContactInformation"
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] ^short = "Exposure Information entry"
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] ^definition = "Exposure Information entry"
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceCountryOfResidence] only Reference(EICRCountryOfResidenceObservation)
* section[sliceSocialHistorySection].entry[sliceCountryOfResidence] ^sliceName = "sliceCountryOfResidence"
* section[sliceSocialHistorySection].entry[sliceCountryOfResidence] ^short = "Country of residence entry"
* section[sliceSocialHistorySection].entry[sliceCountryOfResidence] ^mustSupport = true
* section[sliceSocialHistorySection].entry[sliceCountryOfNationality] only Reference(USPublicHealthCountryOfNationality)
* section[sliceSocialHistorySection].entry[sliceCountryOfNationality] ^sliceName = "sliceCountryOfNationality"
* section[sliceSocialHistorySection].entry[sliceCountryOfNationality] ^short = "Country of nationality entry"
* section[sliceSocialHistorySection].entry[sliceCountryOfNationality] ^mustSupport = true

* section[slicePregnancySection] ^short = "Pregnancy Section"
* section[slicePregnancySection] ^definition = "The Pregnancy Section contains a patient's current and past pregnancy history information."
* section[slicePregnancySection].code 1.. MS
* section[slicePregnancySection].code = $loinc#90767-5
* section[slicePregnancySection].code ^short = "Pregnancy summary Document code"
* section[slicePregnancySection].code ^definition = "Pregnancy summary Document code"
* section[slicePregnancySection].text 1..1 MS
* section[slicePregnancySection].text ^short = "Pregnancy summary Document narrative"
* section[slicePregnancySection].text ^definition = "Pregnancy summary Document narrative"
* section[slicePregnancySection].entry 1.. MS
* section[slicePregnancySection].entry ^slicing.discriminator.type = #profile
* section[slicePregnancySection].entry ^slicing.discriminator.path = "resolve()"
* section[slicePregnancySection].entry ^slicing.rules = #open
* section[slicePregnancySection].entry contains
    slicePregnancyStatusObservation 1..* MS and
    slicePregnancyOutcome 0..* MS and
    sliceLastMenstrualPeriod 0..* MS and
    slicePostpartumStatus 0..* MS
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] only Reference(USPublicHealthPregnancyStatusObservation)
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] ^short = "Pregnancy Status Observation entry"
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] ^definition = "Pregnancy Status Observation entry"
* section[slicePregnancySection].entry[slicePregnancyOutcome] only Reference(USPublicHealthPregnancyOutcomeObservation)
* section[slicePregnancySection].entry[slicePregnancyOutcome] ^sliceName = "slicePregnancyOutcome"
* section[slicePregnancySection].entry[slicePregnancyOutcome] ^short = "Pregnancy Outcome entry"
* section[slicePregnancySection].entry[slicePregnancyOutcome] ^definition = "Pregnancy Outcome entry"
* section[slicePregnancySection].entry[slicePregnancyOutcome] ^mustSupport = true
* section[slicePregnancySection].entry[sliceLastMenstrualPeriod] only Reference(ObservationLastMenstrualPeriod)
* section[slicePregnancySection].entry[sliceLastMenstrualPeriod] ^sliceName = "sliceLastMenstrualPeriod"
* section[slicePregnancySection].entry[sliceLastMenstrualPeriod] ^short = "Last Menstrual Period entry"
* section[slicePregnancySection].entry[sliceLastMenstrualPeriod] ^definition = "Last Menstrual Period entry"
* section[slicePregnancySection].entry[sliceLastMenstrualPeriod] ^mustSupport = true
* section[slicePregnancySection].entry[slicePostpartumStatus] only Reference(USPublicHealthIsPostpartum)
* section[slicePregnancySection].entry[slicePostpartumStatus] ^sliceName = "slicePostpartumStatus"
* section[slicePregnancySection].entry[slicePostpartumStatus] ^short = "Postpartum Status entry"
* section[slicePregnancySection].entry[slicePostpartumStatus] ^definition = "Postpartum Status entry"
* section[slicePregnancySection].entry[slicePostpartumStatus] ^mustSupport = true

* section[sliceEmergencyOutbreakInformationSection] ^short = "Emergency Outbreak Information Section"
* section[sliceEmergencyOutbreakInformationSection] ^definition = "This section represents information that is required during a public health emergency/outbreak."
* section[sliceEmergencyOutbreakInformationSection].code 1.. MS
* section[sliceEmergencyOutbreakInformationSection].code = $loinc#83910-0
* section[sliceEmergencyOutbreakInformationSection].code ^short = "Emergency Outbreak Information Section code"
* section[sliceEmergencyOutbreakInformationSection].code ^definition = "Emergency Outbreak Information Section code"
* section[sliceEmergencyOutbreakInformationSection].text 1.. MS
* section[sliceEmergencyOutbreakInformationSection].text ^short = "Emergency Outbreak Information Section narrative"
* section[sliceEmergencyOutbreakInformationSection].text ^definition = "Emergency Outbreak Information Section narrative"
* section[sliceEmergencyOutbreakInformationSection].entry MS
* section[sliceEmergencyOutbreakInformationSection].entry ^slicing.discriminator.type = #profile
* section[sliceEmergencyOutbreakInformationSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceEmergencyOutbreakInformationSection].entry ^slicing.rules = #open
* section[sliceEmergencyOutbreakInformationSection].entry contains
    sliceObservationEmergencyOutbreakInformation 0..* MS
* section[sliceEmergencyOutbreakInformationSection].entry[sliceObservationEmergencyOutbreakInformation] only Reference(USPublicHealthEmergencyOutbreakInformation)
* section[sliceEmergencyOutbreakInformationSection].entry[sliceObservationEmergencyOutbreakInformation] ^sliceName = "sliceObservationEmergencyOutbreakInformation"
* section[sliceEmergencyOutbreakInformationSection].entry[sliceObservationEmergencyOutbreakInformation] ^mustSupport = true

* section[slicePastMedicalHistorySection] ^short = "Past Medical History Section"
* section[slicePastMedicalHistorySection] ^definition = "This section contains a record of the patient’s past complaints, problems, and diagnoses. It contains data from the patient’s past up to the patient’s current complaint or reason for seeking medical care."
* section[slicePastMedicalHistorySection].code 1.. MS
* section[slicePastMedicalHistorySection].code = $loinc#11348-0
* section[slicePastMedicalHistorySection].code ^short = "Past Medical History Section code"
* section[slicePastMedicalHistorySection].code ^definition = "Past Medical History Section code"
* section[slicePastMedicalHistorySection].text 1.. MS
* section[slicePastMedicalHistorySection].text ^short = "Past Medical History Section narrative"
* section[slicePastMedicalHistorySection].text ^definition = "Past Medical History Section narrative"
* section[slicePastMedicalHistorySection].entry MS
* section[slicePastMedicalHistorySection].entry ^slicing.discriminator.type = #profile
* section[slicePastMedicalHistorySection].entry ^slicing.discriminator.path = "resolve()"
* section[slicePastMedicalHistorySection].entry ^slicing.rules = #open
* section[slicePastMedicalHistorySection].entry contains
    sliceUSCoreCondition 0..* MS
* section[slicePastMedicalHistorySection].entry[sliceUSCoreCondition] only Reference(USPublicHealthConditionProblemsHealthConcerns)
* section[slicePastMedicalHistorySection].entry[sliceUSCoreCondition] ^sliceName = "sliceUSCoreCondition"
* section[slicePastMedicalHistorySection].entry[sliceUSCoreCondition] ^short = "US Core Condition entry"
* section[slicePastMedicalHistorySection].entry[sliceUSCoreCondition] ^definition = "US Core Condition"
* section[slicePastMedicalHistorySection].entry[sliceUSCoreCondition] ^mustSupport = true

* section[sliceReviewOfSystemsSection] ^short = "Review of Systems Section"
* section[sliceReviewOfSystemsSection] ^definition = "The Review of Systems Section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing."
* section[sliceReviewOfSystemsSection].code 1.. MS
* section[sliceReviewOfSystemsSection].code = $loinc#10187-3
* section[sliceReviewOfSystemsSection].code ^short = "Review of Systems code"
* section[sliceReviewOfSystemsSection].code ^definition = "Review of Systems code"
* section[sliceReviewOfSystemsSection].text 1.. MS
* section[sliceReviewOfSystemsSection].text ^short = "Review of Systems narrative"
* section[sliceReviewOfSystemsSection].text ^definition = "Review of Systems narrative"

* section[sliceCareTeamsSection] ^short = "Care Teams Section"
* section[sliceCareTeamsSection] ^definition = "The Care Team Section is used to share historical and current Care Team information. An individual can have more than one Care Team. A Care Team, such as a rehabilitation team, may exist to address a person's needs associated with a particular care event, or a team can be based on addressing a specific condition."
* section[sliceCareTeamsSection].code 1.. MS
* section[sliceCareTeamsSection].code = $loinc#85847-2
* section[sliceCareTeamsSection].code ^short = "Patient Care team information code"
* section[sliceCareTeamsSection].code ^definition = "Patient Care team information code"
* section[sliceCareTeamsSection].text 1.. MS
* section[sliceCareTeamsSection].text ^short = "Patient Care team information narrative"
* section[sliceCareTeamsSection].text ^definition = "Patient Care team information narrative"
* section[sliceCareTeamsSection].entry MS
* section[sliceCareTeamsSection].entry ^slicing.discriminator.type = #profile
* section[sliceCareTeamsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceCareTeamsSection].entry ^slicing.rules = #open
* section[sliceCareTeamsSection].entry contains
    sliceUSCoreCareTeam 0..* MS
* section[sliceCareTeamsSection].entry[sliceUSCoreCareTeam] only Reference(USCoreCareTeam)
* section[sliceCareTeamsSection].entry[sliceUSCoreCareTeam] ^sliceName = "sliceUSCoreCareTeam"
* section[sliceCareTeamsSection].entry[sliceUSCoreCareTeam] ^short = "US Core Care Team entry"
* section[sliceCareTeamsSection].entry[sliceUSCoreCareTeam] ^definition = "US Core Care Team"
* section[sliceCareTeamsSection].entry[sliceUSCoreCareTeam] ^mustSupport = true

* section[sliceReportabilityResponseInformationSection] ^short = "Reportability Response Information Section (for post-processing only)"
* section[sliceReportabilityResponseInformationSection] ^definition = "The Reportability Response Information Section contains information from a Reportability Response that was generated in response to this eICR.\n\nThis section is to be used for the Public Health agency to receive the eICR with the RR included (after the RR has been created). This is needed to help the PHA ingest the information. As part of the PHA's process they will put parts of the RR into the eICR. This is useful for working with the surveillance vendors. All this work will be done within the internal data integration processes of the PHA. It is a placeholder so it can be used in the future. A number of surveillance systems need to include specific data that is not available until the eICR and RR are available inside of the receiving organization (PHA). This is important to ensure that they have a consistent, documented way of including the data."
* section[sliceReportabilityResponseInformationSection].code 1.. MS
* section[sliceReportabilityResponseInformationSection].code = $loinc#88085-6
* section[sliceReportabilityResponseInformationSection].code ^short = "Reportability response report Document Public health"
* section[sliceReportabilityResponseInformationSection].code ^definition = "Reportability response report Document Public health"
* section[sliceReportabilityResponseInformationSection].text 1.. MS
* section[sliceReportabilityResponseInformationSection].text ^short = "Reportability Response Information Section narrative"
* section[sliceReportabilityResponseInformationSection].text ^definition = "Reportability Response Information Section narrative"
* section[sliceReportabilityResponseInformationSection].entry ^slicing.discriminator.type = #profile
* section[sliceReportabilityResponseInformationSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceReportabilityResponseInformationSection].entry ^slicing.rules = #open
* section[sliceReportabilityResponseInformationSection].entry contains
    sliceReportabilityResponseRelevantCondition 0..* MS
* section[sliceReportabilityResponseInformationSection].entry[sliceReportabilityResponseRelevantCondition] only Reference(RRRelevantReportableConditionObservation)
* section[sliceReportabilityResponseInformationSection].entry[sliceReportabilityResponseRelevantCondition] ^sliceName = "sliceReportabilityResponseRelevantCondition"
* section[sliceReportabilityResponseInformationSection].entry[sliceReportabilityResponseRelevantCondition] ^mustSupport = true