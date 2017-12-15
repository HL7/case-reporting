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
