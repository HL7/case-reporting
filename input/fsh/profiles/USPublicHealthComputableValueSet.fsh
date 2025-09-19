Profile: USPublicHealthComputableValueSet
Parent: USPublicHealthValueSet
Id: us-ph-computable-valueset
Title: "US Public Health Computable ValueSet"
Description: "Defines a computable value set as one that SHALL have an expression-based definition (i.e. a value set defined intensionally using expressions of the code systems involved) and MAY have an expansion included. The expression-based definition SHALL be represented in only one of three ways; using the compose element, using the expression extension, or using the rules-text extension to provide a step-by-step process for expanding the value set definition"
* ^version = "0.1.0"

* ^date = "2020-10-26T00:00:00.000Z"



* obeys cvs-1
* . ^short = "US Public Health Computable ValueSet"
* . ^definition = "A value set that includes instructions for construction of the value set using one and only one of human instructions, machine instructions, or the value set compose element."
* . ^mustSupport = false
* extension contains
    $valueset-rules-text named rulesText 0..1 MS and
    $valueset-expression named expression 0..1 MS
* extension[rulesText] ^short = "Human instructions for constructing the valueset"
* extension[rulesText] ^definition = "An expression that provides a definition of the content of the value set in some form that is not computable - e.g. instructions that could only be followed by a human."
* extension[rulesText] ^comment = "Only one of rulesText, expression, or compose SHALL be provided for any given value set instance. Note that to provide a human-readable description of the expression, use the description element of the expression datatype."
* extension[rulesText] ^condition = "cvs-1"
* extension[expression] ^short = "Machine instructions for constructing the value set"
* extension[expression] ^definition = "An expression that provides the computable definition for the content of the value set. The value set can only be expanded by a server that understands the expression syntax used."
* extension[expression] ^comment = "Only one of rulesText, expression, or compose SHALL be provided for any given value set instance. Note that to provide a human-readable description of the expression, use the description element of the expression datatype."
* extension[expression] ^condition = "cvs-1"
* compose 0..1 MS
* compose ^comment = "Only one of rulesText, expression, or compose SHALL be provided for any given valueset instance."
* compose ^condition = "cvs-1"