## {{ page.title }}
<!-- { :.no_toc } -->

source pages/\_include/{{page.md_filename}}.md  file

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

###  General Sequence of Transactions

###  Trigger Code Transaction

####	Overview
* FHIR representation of the Reportable Conditions Trigger Codes (RCTC) value sets available from PHIN VADS. 
* Balloted value sets included with this spec, but when in production will be stored elsewhere (server TBD)
* Trigger codes will be updated periodically
* May be retrieved via RESTful web services
* Implementers may receive automatic updates via the FHIR Subscription service
* Expected to be retrieved as a Bundle resource containing all value sets, but can retrieve or subscribe to individual value sets. 

####	Value Sets
The FHIR ValueSet resources for this implementation guide are on the [Terminology page](terminology.html#value-sets). The Excel files for the value sets can be downloaded from PHIN VADS under the [Reportable Conditions Trigger Codes (RCTC)](https://phinvads.cdc.gov/vads/SearchVocab.action) Heading.

###  eICR Transaction

###  Reportability Response Transaction
