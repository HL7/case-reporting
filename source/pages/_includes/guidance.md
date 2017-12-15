## {{ page.title }}
<!-- { :.no_toc } -->

source pages/\_include/{{page.md_filename}}.md  file

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

###  General Sequence of Transactions

###  Trigger Codes

####	Overview

This section provides guidance for using the Reportable Conditions Trigger Codes (RCTC) value sets provided with this specification. These value sets are FHIR representations of the October 13, 2017 release of the value set spreadsheets available from [PHIN VADS](https://phinvads.cdc.gov/vads/SearchVocab.action). 

The value sets included with this specification are for review and comment only. PHIN VADS is still where the official value sets are posted. In the future when this spec is implemented, the trigger code value sets will be stored on a FHIR server (location TBD) and updated periodically. When available on a FHIR server, the value sets may be retrieved directly via the FHIR REST API. Also, implementers may choose to be automatically notified of value set updates via the [FHIR Subscription mechanism](http://hl7.org/fhir/subscription.html). Technical requirements for retrieving the value sets via the REST API and receiving update notifications are available on the [Capability Statement page](capstatements.html#trigger-code-transaction).

We expect the value sets to be retrieved as a set using the Bundle resource, since they are currently updated simultaneously, but this specification also describes how to retrieve them as individual ValueSet resources. 

####	Value Sets
The FHIR ValueSet resources for this implementation guide are on the [Terminology page](terminology.html#value-sets). The Excel files for the value sets can be downloaded from PHIN VADS under the [Reportable Conditions Trigger Codes (RCTC)](https://phinvads.cdc.gov/vads/SearchVocab.action) Heading.

###  eICR Transaction

###  Reportability Response Transaction

###  Decision Support Options

This specification does not yet formally define a preferred mechanism for decision support. Rather, we wish to gather feedback from balloters on the approaches outlined below. 

* CDS Hooks: EHR registers a hook, CDS service executes logic pulling FHIR data from server, a card is returned to the user noting that case reporting has begin (no other user action required), assuming the Decision Report Service is capable of generating and submitting an eICR. Another options would be returning a link card to a SMART on FHIR app that will produce an Electronic Initial Case Report (eICR). 
* CQL: Distribute CQL logic that implementers can include in their system as they see fit to identify reportable conditions and begin the case reporting process. 
* Subscription: Create Subscription resources for Condition resources that match on trigger code value sets and notify a case reporting application that can then begin building an eICR.
