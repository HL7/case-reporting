### Electronic Initial Case Report (eICR) Transaction and Profiles

The eICR transaction involves the transmission of data identified by a Council of State and Territorial Epidemiologists Task Force as being important to a multi-condition, multi-jurisdiction case report.

eICR documents will usually be automatically initiated by matching EHR data against trigger codes. Note that matching with trigger codes is only an indication of a potentially reportable event. Additional rules processing is required to determine reportability based on the policies and regulatory requirements of the jurisdiction of residence and jurisdiction of care of the initiating event. Whether a specific initiated event is reportable is communicated through the [Reportability Response](reportability_response_narrative_guidance.html).

The following figure illustrates automatic initiation by trigger matching:

*Figure 1: eICR Triggering and Transmission Timing*
<table><tr><td><img src="eICR Triggering and Transmission Guidance.JPG" style="width:100%;" caption="Figure 1: eICR Triggering and Transmission Timing" /></td></tr></table>

There are some circumstances, however, where they may be manually initiated by providers of care because they suspect there may be a reportable condition. They also may be alternately initiated by automated, forced reporting by the EHR to meet short term reporting needs. The following matrix illustrates these different types of initiation:

<table><tr><td><img src="InitiationTypeTable.jpg" style="width:100%;"/></td></tr></table>
[^1] RCKMS

The eICR also includes pregnancy information, occupational data, therapeutic response to medication, homeless information, a vital signs snapshot, emergency outbreak information, exposure and contact information, disability status, and semi-structured travel history. The eICR is conveyed through an unsolicited push transaction from healthcare to public health (see Transport Options for further details) using a basic RESTful submit and/or FHIR Messaging. The FHIR Messaging bundle can also be transmitted over legacy transport and networks. There may be several different intermediaries involved in the transmission including Health Information Exchanges, Health Information Networks, and the Association of Public Health Laboratories (APHL) AIMS platform.

A Reportability Response will always be returned to the sending healthcare organization for every eICR received. A Reportability Response may also be sent to PHAs with the FHIR eICR transaction to provide the PHAs with information about what has been determined to be reportable, what PHAs have been sent eICR information, and what else has been communicated to healthcare.

A number of profiles and extensions have been defined for the eICR transactions - see [Artifact Index](artifacts.html) for a listing of these profiles. The eICR Composition profile (which is contained in a eICR Document Bundle) is the starting point for the transaction and all the other profiles are referenced from that profile (see diagram below for the main profile relationships).

<table><tr><td><img src="FHIR eICR Profile Hierarchy.png" style="width:100%;" /></td></tr></table>

[^1]: RCKMS: [Reportable Conditions Knowledge Management System (RCKMS)](https://www.rckms.org/)
