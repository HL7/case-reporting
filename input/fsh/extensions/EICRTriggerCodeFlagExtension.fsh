Extension: EICRTriggerCodeFlagExtension
Id: eicr-trigger-code-flag-extension
Title: "eICR Trigger Code Flag Extension"
Description: "This Extension profile represents a flag which, if it is present, indicates that the **target** reference represents a triggering event and caused the eCR to be generated."
Context: Composition.section.entry, Encounter.diagnosis
* . ^short = "eICR Trigger Code Flag"
* . ^definition = "Definition: A flag to indicate that the **target** reference represents a triggering event and caused the eCR to be generated. It is used in the eICR profile in the following places:\r\r\n- Composition[eICR Composition].section[Problem Section].entry\r- Composition[eICR Composition].section[Results Section].entry\r\n- Composition[eICR Composition].section[Plan of Treatment Section].entry\r- Encounter[eICR Encounter].diagnosis"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    triggerCodeValueSet 1..1 and
    triggerCodeValueSetVersion 1..1 and
    triggerCode 1..1
* extension[triggerCodeValueSet] ^short = "RCTC value set OID"
* extension[triggerCodeValueSet] ^definition = "RCTC value set OID"
* extension[triggerCodeValueSet].value[x] only oid
* extension[triggerCodeValueSetVersion] ^short = "RCTC value set version"
* extension[triggerCodeValueSetVersion] ^definition = "RCTC value set version"
* extension[triggerCodeValueSetVersion].value[x] 1..
* extension[triggerCodeValueSetVersion].value[x] only string
* extension[triggerCode] ^short = "Trigger code"
* extension[triggerCode] ^definition = "Trigger code - this code is the same as the trigger code in the resource and is used to identify which code(s) in a resource that allows multiple trigger codes (e.g. US Core Observation Lab where a trigger code could be contained in either the code (lab test) or the value (lab test result) or in the case of a battery or panel of tests, in the hasMember as another US Core Observation Lab code or value)."
* extension[triggerCode].value[x] 1..
* extension[triggerCode].value[x] only Coding