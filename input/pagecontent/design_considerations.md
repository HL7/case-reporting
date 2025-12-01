### Overall Design

The Electronic Case Reporting (eCR) standards; the electronic Initial Case Report (eICR) and the Reportability Response (RR), support two broad approaches to eCR.

One of the approaches also uses the Reportable Condition Knowledge Management System (RCKMS) on the AIMS platform to report to Public Health Agencies (PHAs) and one does not. The two approaches are:

1. Information flowing from healthcare to PHAs (via the eICR) and back (via the RR) after a reportability determination has been made at the healthcare organization using reporting rules from all PHAs for all conditions.
2. Information flowing from healthcare to a shared services platform (via the eICR) and then to PHAs (via the eICR and the RR) and with a response to healthcare from the shared services platform (via the RR).

In some jurisdictions, HIEs and/or Health Information Networks may also be employed to securely move data between organizations including to and from a shared services platform.

Prominent among these purposes is to implement public health reporting rules that cannot currently be readily distributed to healthcare. The rules ensure that public health agencies only get the data they are authorized to receive by state laws.

Without more complex reporting rules that are distributable to, and executable in, healthcare most PHAs will not use approach #1. Hence, these approaches are principally represented by either "Remote Rules" or "Local Rules" in the following diagram.

<table><tr><td><img src="ReportingDesignPattern.jpg" alt="Reporting Design Pattern" class="figure-img-portrait img-responsive img-rounded center-block" /></td></tr></table>

&nbsp;

### Using the eRSD

FHIR enables several capabilities for eCR. Because reportable events occur in healthcare without PHA knowledge and because PHAs do not have the authority to receive these data until they are deemed reportable, eCR utilizes an unsolicited push transaction, FHIR messaging, and flexibility in multi-network transport to report data to state and local agencies. There is also a transaction for "electronic Reporting & Surveillance Distribution (eRSD)." The eRSD includes Reportable Condition Trigger Code (RCTC) trigger code value sets and other reporting guidance from public health to healthcare to support reporting from EHRs.

The eRSD transaction needs to be able to help orchestrate this reporting which may span a broad spectrum from trigger codes in an EHR all the way to a healthcare-based API connected rules engine that is external to the EHR but operating inside of healthcare or at a healthcare Business Associate. To achieve this orchestration the eRSD resource needs to guide the Triggering, Rule Processing, Clinical Feedback, Creation of eICR, Routing and Sending components of eCR and interactions between them. For some time, much of the eRSD transaction will provide structure to eCR as human consumable guidance. The most immediately machine processable components are the included trigger code value sets.

When distributable rules can be processed in most healthcare settings, there may be needs to distribute the rules, the trigger codes, and links to relevant on-line condition-specific information. The eRSD transaction can enable these distributions going forward as well as provide details for how critical elements, like report timing, of the reporting process should be implemented. It will also allow for a connection to separate efforts to develop clinical guidelines for public health conditions. Reporting and guidelines should utilize the same infrastructure and approaches where possible to minimize demands on EHRs.

eICRs shared from EHR interface are not definitively reportable. There are complex rules that also need to also be implemented to ensure that case reports meet state laws for submission. Examples of some of these rules follow.

<table style="width:503.0pt;border-collapse:collapse;border:none;">
    <tbody>
        <tr>
            <td style="width: 124pt;border: 1pt solid windowtext;background: rgb(217, 217, 217) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'><strong><span style="color:black;">Rule Number</span></strong></p>
            </td>
            <td style="width: 201.8pt;border-color: windowtext windowtext windowtext currentcolor;border-style: solid solid solid none;border-width: 1pt 1pt 1pt medium;border-image: none 100% / 1 / 0 stretch;background: rgb(217, 217, 217) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'><strong><span style="color:black;">Rule Description</span></strong></p>
            </td>
            <td style="width: 177.2pt;border-color: windowtext windowtext windowtext currentcolor;border-style: solid solid solid none;border-width: 1pt 1pt 1pt medium;border-image: none 100% / 1 / 0 stretch;background: rgb(217, 217, 217) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'><strong><span style="color:black;">Data needed for rule to determine reportability</span></strong></p>
            </td>
        </tr>
        <tr>
            <td style="width: 124pt;border-color: currentcolor windowtext windowtext;border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Rule 1</p>
            </td>
            <td style="width: 201.8pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Pediatric influenza mortality reporting</p>
            </td>
            <td style="width: 177.2pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>age and condition</p>
            </td>
        </tr>
        <tr>
            <td style="width: 124pt;border-color: currentcolor windowtext windowtext;border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Rule 2</p>
            </td>
            <td style="width: 201.8pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Staph Aureus with Vancomycin MIC &gt; 4&mu;g/ml</p>
            </td>
            <td style="width: 177.2pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>condition and drug sensitivity</p>
            </td>
        </tr>
        <tr>
            <td style="width: 124pt;border-color: currentcolor windowtext windowtext;border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Rule 3</p>
            </td>
            <td style="width: 201.8pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>Respiratory Syncytial Virus associated deaths in laboratory confirmed cases less than five years of age</p>
            </td>
            <td style="width: 177.2pt;border-color: currentcolor windowtext windowtext currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;line-height:13.0pt;'>condition, cause of death, and age</p>
            </td>
        </tr>
    </tbody>
</table>

### 5.8	Relevant Time Period for Retrieving Data

| **Data**            | **Time Period**                         |
| ------------------- | --------------------------------------- |
| Occupation          | Data capturing during current encounter |
| Immunization        | Full history                            |
| Pregnancy           | Past year                               |
| Vital Signs         | Current encounter                       |
| Travel History      | Past year                               |
| Problems/Conditions | Current encounter                       |
| Medications         | Current encounter                       |
| Procedures          | Current encounter                       |