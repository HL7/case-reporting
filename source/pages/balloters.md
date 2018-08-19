---
title: Notice to Ballot Commenters
layout: default
active: home
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}


<!-- end TOC -->

### Notice to Ballot Commenters

This *STU* ballot continues and expands on work-to-date on CDA electronic Case Reporting (eCR) standards (<a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=436" rel="nofollow">HL7 CDA® R2 Electronic Initial Case Report (eICR) Standard for Trial Use (STU)</a> and <a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=470" rel="nofollow">HL7 CDA® R2 Reportability Response (RR) STU</a>) as well as a previous <a href="http://hl7.org/fhir/uv/ecr/2018Jan/index.html" rel="follow">"For Comment" HL7 FHIR® eCR ballot</a>.

#### How to Ballot

To sign up for the ballot and provide input on this specification follow the
same process as for other HL7 artifacts using ballot spreadsheets as described on the [HL7 Balloting
website](http://www.hl7.org/participate/onlineballoting.cfm?ref=nav) or the [FHIR GForge Tracker](https://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemAdd&tracker_id=677).

If using the spreadsheet, please be sure to include a comment summary that can be used to populate the FHIR GForge Tracker when your comments are moved there. To reference an item in the ballot, Provide the HTML Page Name and/or
URL. Look for this icon <span class="glyphicon glyphicon-link"></span> to appear when you hover over a section.

We would especially appreciate comments on the following items.

#### 1. Additional timing-related reporting parameters and suggested values

The included Knowledge Distribution profile defines three timing-related parameters for initating case reports from Electronic Health Records:

- Delay eICR construction (for example "6" hours) - time after the start of the encounter before a triggered eICR should be composed and sent.(This delay is intended to allow adequate data to be recorded in the EHR, but is not so long as to delay reporting in critical circumstances.) 
- eICR periodic update (for example "48" hours) – the time after an initial eICR transmission to send new eICRs as an update for long episodes of care.
- eICR episode of care close-out (for example "24" hours or "0" hours for no delay) – the time after the end of an episode of care for a final eICR to be sent when there has been one or more trigger events. (The close-out eICR is intended to provide the full data available at the end of an episode of care.)


This standard defines these parameters but does not make normative the specific hour values for them. We would appreciate your comments on the possible hour values (in parentheses above) for use in guiding implmentations. We would also appreciate comments on the utility of these three parameters or of the needs for others.  

#### 2. Difficulties related to CDA using nullFlavors while FHIR does not

The base datatype used by CDA has the properly nullFlavor. This means that it is possible to add a nullFlavor to any element in CDA. FHIR on the other hand, does not have this option. To express a nullFlavor concept in FHIR, one would either need to have a value set containing those values or add an extension to express the nullFlavor.
This means that if an element is required and has not explicitly precluded a nullFlavor in a CDA IG, it is possible, when the data isn’t available to send a nullFlavor instead of a proper value.
If the equivalent element is required in a FHIR IG, it isn’t possible to send a nullFlavor unless that nullFlavor value has been added to a value set or an extension has been added to the element.
To get around this, we make elements “must support” but allow them to be optional. Then in the case of missing data, the instance still validates.


#### 3. How to best implement patient vital signs for public health reporting

We would propose using either the <a href="http://hl7.org/fhir/observation-profiles.html" rel="nofollow">FHIR Vital Signs profiles (STU)</a> or using the <a href="https://www.hl7.org/fhir/us/core/us-core-vitalsigns.html" rel="nofollow">US Core Vital Signs Profile</a> - which outlines "additional guidance which sets the minimum expectations for recording, searching and retreiving vital signs associated with a patient. Together they identify which elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile." 

