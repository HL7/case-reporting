### Electronic Initial Case Report (eICR) Transaction and Profiles

The eICR transaction involves the transmission of data identified by a Council of State and Territorial Epidemiologists Task Force as being important to a multi-condition, multi-jurisdiction case report.

eICR documents will usually be automatically initiated by matching EHR data against trigger codes. Note that matching with trigger codes is only an indication of a potentially reportable event. Additional rules processing is required to determine reportability based on the policies and regulatory requirements of the jurisdiction of residence and jurisdiction of care of the initiating event. Whether a specific initiated event is reportable is communicated through the [Reportability Response](rr_narrative_guidance.html).

The following figure illustrates automatic initiation by trigger matching:

*Figure 1: eICR Triggering and Transmission Timing*
<table><tr><td><img src="eICR Triggering and Transmission Guidance.JPG" style="width:100%;" caption="Figure 1: eICR Triggering and Transmission Timing" /></td></tr></table>
#### Initiation of eICR Documents

There are three ways an eICR may be initiated:

* **Trigger code initiation.** The usual case: EHR data for an encounter matches a Reportable Condition Trigger Code (RCTC) in the eRSD, and the eICR is created automatically. Reporting to the relevant PHAs is then based on public health decision support reportability determinations.
* **Manual initiation.** A provider of care initiates the eICR because they suspect there may be a reportable condition, including conditions with non-specific symptoms that would not be caught by trigger codes. Manually initiated eICRs are force reported to all involved PHAs regardless of reportability determinations.
* **Alternate initiation.** The EHR or healthcare site initiates the eICR through "programmed-in" logic to meet a transient reporting need (for example, reporting to a registry or to meet a jurisdiction-specific requirement for which no trigger code exists), rather than by a provider or by a trigger code match. Alternately initiated eICRs are force reported to, and only to, the PHA for the jurisdiction in which care was provided, regardless of reportability determinations. If public health decision support also finds a reportable condition, the eICR may additionally be reported to other relevant PHAs, such as the jurisdiction of residence.

The following matrix summarizes the three types of initiation:

<table border="1">
    <thead>
        <tr style="background-color:#DCDCDC">
            <th>Initiation Type</th>
            <th>How is the eICR initiated?</th>
            <th>How is the eICR routed on a shared services platform?</th>
            <th>eICR Initiation Reason Extension</th>
            <th>eICR Initiation Type Extension</th>
            <th>Can values exist in eICR trigger code segments?</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><b>Trigger code initiation</b></td>
            <td>An EHR data match against a trigger code value</td>
            <td>Reporting to relevant PHAs is based on public health decision support[^1] reportability determinations</td>
            <td>Not included</td>
            <td>Not included</td>
            <td>Yes, one or more must be present</td>
        </tr>
        <tr>
            <td><b>Manual initiation</b></td>
            <td>By an action by a provider of care because they suspect there may be a reportable condition</td>
            <td>Forced reporting to <u>all involved PHAs</u> regardless of reportability determinations</td>
            <td>Includes free text or coded reason(s) for manual initiation</td>
            <td>PHC1464</td>
            <td>Yes, if the EHR checks for matches after manual initiation or if the match precedes manual initiation (however, they may not exist)</td>
        </tr>
        <tr>
            <td><b>Alternate initiation</b></td>
            <td>EHR / healthcare site "programmed-in" initiation to meet a transient need</td>
            <td>Forced reporting to the <u>PHA where care was provided</u> regardless of reportability determinations. Reporting to other jurisdictions may occur if other reportable conditions are present.</td>
            <td>Includes free text or coded reason(s) for alternate initiation</td>
            <td>PHC2235</td>
            <td>Yes, if the EHR checks for matches after alternate initiation or if the match precedes alternate initiation (however, they may not exist)</td>
        </tr>
    </tbody>
</table>

**Populating a manually or alternately initiated eICR.** In the eICR Composition:

* Set the [eICR Initiation Type extension](StructureDefinition-eicr-initiation-type-extension.html) to PHC1464 (Manually Initiated eICR) or PHC2235 (Alternately Initiated eICR).
* Populate the [US Public Health Initiation Reason extension]({{site.data.fhir.ver.hl7fhirusphlibrary}}/StructureDefinition-us-ph-initiation-reason-extension.html) with the reason for the manual or alternate initiation, as free text or a code.
* Include the [eICR Trigger Code Flag extension](StructureDefinition-eicr-trigger-code-flag-extension.html) on any resources that matched a trigger code, if the EHR ran trigger matching. For a manually or alternately initiated eICR, trigger code flags may be absent.
* Populate the remainder of the eICR (encounter, patient, clinical sections) as for any other eICR.

For an automatically (trigger code) initiated eICR, neither extension is present and at least one trigger code flag must be present.

**Alternate initiation scenarios.**

* *Scenario 1: Registry reporting, no other reportable condition.* A healthcare organization has configured its EHR to alternately initiate an eICR for every encounter with a diagnosis of Parkinson's disease, to support a jurisdictional Parkinson's disease registry. An eICR is alternately initiated with the Initiation Type extension set to PHC2235 and the reason "Parkinson's disease registry reporting", and is force reported to the PHA where care was provided. No other reportable condition is present, so no additional reporting to other PHAs occurs.
* *Scenario 2: Registry reporting with another reportable condition.* As in Scenario 1, but public health decision support identifies another reportable condition in the eICR after the alternate initiation. The eICR is reported to the PHA where care was provided because of the alternate initiation, and additionally to all PHAs relevant to the other reportable condition.

See the [Manually Initiated eICR](Composition-composition-eicr-zika-manual-initiation.html) and [Alternately Initiated eICR](Composition-composition-eicr-zika-alternate-initiation.html) Composition examples, and the Reportability Response guidance on [routing and notification for manually and alternately initiated eICRs](rr_transaction_and_profiles.html).

The eICR also includes pregnancy information, occupational data, therapeutic response to medication, homeless information, a vital signs snapshot, emergency outbreak information, exposure and contact information, disability status, and semi-structured travel history. The eICR is conveyed through an unsolicited push transaction from healthcare to public health (see Transport Options for further details) using a basic RESTful submit and/or FHIR Messaging. The FHIR Messaging bundle can also be transmitted over legacy transport and networks. There may be several different intermediaries involved in the transmission including Health Information Exchanges, Health Information Networks, and other trusted third parties.

A Reportability Response will always be returned to the sending healthcare organization for every eICR received. A Reportability Response may also be sent to PHAs with the FHIR eICR transaction to provide the PHAs with information about what has been determined to be reportable, what PHAs have been sent eICR information, and what else has been communicated to healthcare.

A number of profiles and extensions have been defined for the eICR transactions - see [Artifact Index](artifacts.html) for a listing of these profiles. The eICR Composition profile (which is contained in a eICR Document Bundle) is the starting point for the transaction and all the other profiles are referenced from that profile (see diagram below for the main profile relationships).

<table><tr><td><img src="FHIR eICR Profile Hierarchy.png" style="width:100%;" /></td></tr></table>

[^1]: RCKMS: [Reportable Conditions Knowledge Management System (RCKMS)](https://www.rckms.org/)
