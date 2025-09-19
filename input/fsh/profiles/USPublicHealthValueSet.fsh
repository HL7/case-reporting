Profile: USPublicHealthValueSet
Parent: $shareablevalueset
Id: us-ph-valueset
Title: "US Public Health ValueSet"
Description: "This profile describes US Public Health value sets."

* ^status = #active



* . ^short = "US Public Health ValueSet"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $valueset-steward named extensionValueSetSteward 1..1 MS and
    $valueset-author named extensionValueSetAuthor 1..1 MS
* extension[extensionValueSetSteward] ^short = "Value set steward"
* extension[extensionValueSetSteward] ^definition = "The entity or set of entities that create and may modify the Value Set Definition content. The name of a group or an individual, along with contact details."
* extension[extensionValueSetAuthor] ^short = "Value set author"
* extension[extensionValueSetAuthor] ^definition = "The entity or set of entities that create and may modify the Value Set Definition content. The name of a group or an individual, along with contact details."
* identifier MS
* identifier ^short = "Value set identifier used by public health (e.g. RCTC OID)"
* identifier ^definition = "The identifier of the value set."
* identifier ^min = 0
* name 1.. MS
* name ^short = "Value set name"
* name ^definition = "The name of the value set."
* title 1.. MS
* title ^short = "Value set title"
* title ^definition = "The title of the value set."
* status 1.. MS
* status ^short = "Value set definition version"
* status ^definition = "The value set definition version."
* publisher MS
* publisher ^short = "The entity that is responsible for the content of the Value Set Definition"
* description 1.. MS
* description ^short = "Value set description"
* description ^definition = "The value set definition (depending on source, could be a concatenation of the value set fields Clinical Focus, Data Element Scope, Inclusion Criteria, Exclusion Criteria, and Note)."
* useContext ..*
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains
    priorityContext 1..1 and
    focusConditionContext 0..* MS
* useContext[priorityContext].code 1..1
* useContext[priorityContext].code = $USPublicHealthUsageContextType#priority
* useContext[priorityContext].value[x] 1..1
* useContext[priorityContext].value[x] only CodeableConcept
* useContext[priorityContext].value[x] from USPublicHealthValueSetPriority (required)
* useContext[priorityContext].value[x] ^short = "Release priority of the ValueSet"
* useContext[priorityContext].value[x] ^definition = "The US Public Health release priority of the value set."
* useContext[priorityContext].value[x] ^binding.description = "US PH ValueSet Release Priority Codes."
* useContext[focusConditionContext] ^definition = "The clinical condition that is the focus of the codes in this value set."
* useContext[focusConditionContext].code = $usage-context-type#focus
* useContext[focusConditionContext].value[x] only CodeableConcept
* useContext[focusConditionContext].value[x] from $condition-code (example)
* useContext[focusConditionContext].value[x] ^short = "Clinical condition that is the focus of the codes in this value set"
* useContext[focusConditionContext].value[x] ^definition = "The clinical condition that is the focus of the codes in this value set."
* useContext[focusConditionContext].value[x] ^binding.description = "Condition/Problem/Diagnosis Codes."