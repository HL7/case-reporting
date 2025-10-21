Profile: RRRelevantReportableConditionObservation
Parent: Observation
Id: rr-relevant-reportable-condition-observation
Title: "RR Relevant Reportable Condition Observation"
Description: "This profile represents a relevant reportable condition."
* . ^short = "RR Relevant Reportable Condition Observation"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RRExternalResourceExtension named externalResourceExtension 0..* and
    $workflow-supportingInfo named supportingInformation 0..* MS
* extension[externalResourceExtension] ^short = "External resources pertaining to the condition"
* extension[externalResourceExtension] ^definition = "External resources such as a text guidance, link to access forms for additional reporting needs, additional testing and/or laboratory testing needs, treatment and/or prevention resources, Public Health Agency contact information and general additional resources."
* extension[supportingInformation] ^short = "The supportingInformation Extension is used to reference supporting information contained in other resources"
* extension[supportingInformation] ^min = 0
* status = #final (exactly)
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains
    codeSNOMED 0..* and
    codeLOINC 0..*
* code.coding[codeSNOMED] ^sliceName = "codeSNOMED"
* code.coding[codeSNOMED] ^short = "Condition"
* code.coding[codeSNOMED] ^mustSupport = true
* code.coding[codeSNOMED].system 1.. MS
* code.coding[codeSNOMED].system = "http://snomed.info/sct" (exactly)
* code.coding[codeSNOMED].code 1.. MS
* code.coding[codeSNOMED].code = #64572001 (exactly)
* code.coding[codeLOINC] ^sliceName = "codeLOINC"
* code.coding[codeLOINC] ^mustSupport = true
* code.coding[codeLOINC].system 1.. MS
* code.coding[codeLOINC].system = "http://loinc.org" (exactly)
* code.coding[codeLOINC].code 1.. MS
* code.coding[codeLOINC].code = #75323-6 (exactly)
* value[x] only CodeableConcept
* value[x] MS
* value[x].coding MS
* value[x].coding ^short = "The condition code shall be selected from SNOMED CT"
* value[x].coding.system = "http://snomed.info/sct" (exactly)
* value[x].text MS
* value[x].text ^short = "Use text if there is no available condition code"
* dataAbsentReason MS
* dataAbsentReason ^short = "Use 'not-applicable' when eICR manually initiated or no reportable condition identified"
* hasMember MS
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember contains sliceReportabilityInformationObservation 1..* MS
* hasMember[sliceReportabilityInformationObservation] only Reference(RRReportabilityInformationObservation)
* hasMember[sliceReportabilityInformationObservation] ^short = "Reportability information based on the PHA in which is located the patient's home, the provider facility, or both locations"