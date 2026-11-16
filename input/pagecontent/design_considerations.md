### Overall Design

The Electronic Case Reporting (eCR) standards; the electronic Initial Case Report (eICR) and the Reportability Response (RR), support two broad approaches to eCR.

One of the approaches also uses the Reportable Condition Knowledge Management System (RCKMS) on the AIMS platform to report to Public Health Agencies (PHAs) and one does not. The two approaches are:

1. Information flowing from healthcare to PHAs (via the eICR) and back (via the RR) after a reportability determination has been made at the healthcare organization using reporting rules from all PHAs for all conditions.
2. Information flowing from healthcare to a shared services platform (via the eICR) and then to PHAs (via the eICR and the RR) and with a response to healthcare from the shared services platform (via the RR).

In some jurisdictions, HIEs and/or Health Information Networks may also be employed to securely move data between organizations including to and from a shared services platform.

Prominent among these purposes is to implement public health reporting rules that cannot currently be readily distributed to healthcare. The rules ensure that public health agencies only get the data they are authorized to receive by state laws.

Without more complex reporting rules that are distributable to, and executable in, healthcare most PHAs will not use approach #1. Hence, these approaches are principally represented by either "Remote Rules" or "Local Rules" in the following diagram.

<table><tr><td><img src="ReportingDesignPattern.png" alt="Reporting Design Pattern" class="figure-img-portrait img-responsive img-rounded center-block" /></td></tr></table>

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

### Relevant Time Period for Retrieving Data

<table border="1">
  <thead>
    <tr style="background-color:#DCDCDC">
      <th style="text-align: center; vertical-align: middle;">Data</th>
      <th style="text-align: center; vertical-align: middle;">Time Period</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Immunization</td>
      <td>Full history</td>
    </tr>
    <tr>
      <td>Medications</td>
      <td>Current encounter</td>
    </tr>
    <tr>
      <td>Occupation</td>
      <td>Data capturing during current encounter</td>
    </tr>
    <tr>
      <td>Pregnancy</td>
      <td>Past year</td>
    </tr>
    <tr>
      <td>Problems/Conditions</td>
      <td>Current encounter</td>
    </tr>
    <tr>
      <td>Procedures</td>
      <td>Current encounter</td>
    </tr>
    <tr>
      <td>Results</td>
      <td>Current encounter</td>
    </tr>
    <tr>
      <td>Travel History</td>
      <td>Past year</td>
    </tr>
    <tr>
      <td>Vital Signs</td>
      <td>Current encounter</td>
    </tr>
  </tbody>
</table>

### Provenance

#### Representing how case report data was generated

Case report data may be generated, curated, or automated in several ways: an eICR may be automatically initiated by trigger code matching, manually initiated by a provider, assembled by an intermediary, or produced with the assistance of decision support or AI-based tools. Public health systems and downstream consumers need to be able to determine how reported data came to be.

The [Provenance]({{site.data.fhir.path}}provenance.html) resource, constrained by the [US Core Provenance Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html), is the recommended mechanism for representing how case report data was generated, curated, or automated. Senders SHOULD include Provenance when data was created or transformed by an automated process, decision support, or AI-assisted generation, or when it was curated from another source. In a Provenance resource:

* Provenance.target references the resource(s) the provenance applies to: the eICR or Reportability Response Composition, the document Bundle, or individual clinical resources (for example, Observations or Conditions) contained in the document.
* Provenance.agent identifies who or what was responsible, using the US Core participant types (for example, author, assembler, or transmitter) and referencing the Practitioner, PractitionerRole, Organization, or Device (such as the EHR or decision support software) involved.
* Provenance.activity and Provenance.recorded describe what was done and when.

Provenance resources MAY be included as entries in the eICR Document Bundle and the Reportability Response Document Bundle alongside the resources they describe.

#### Metadata indicators are discovery signals, not a substitute for Provenance

Metadata on a resource such as security labels (Resource.meta.security), tags (Resource.meta.tag), or process labels, including those defined by the [AI Transparency IG](https://hl7.org/fhir/uv/aitransparency/), can signal that a resource was generated or modified in a particular way and that provenance exists. These indicators SHOULD be treated as discovery signals that prompt a consumer to look for the associated Provenance. They are not a substitute for Provenance itself, which carries the detail of what was done, by whom or what, and when.

#### Provenance discovery and retrieval

Where reported data is made available through a FHIR server (for example, by a public health intermediary, a shared services platform, or an EHR), a FHIR search using `_revinclude=Provenance:target` is the recommended and supported mechanism for public health systems to retrieve reported data and its associated Provenance together. This is consistent with US Core, which requires servers to support `_revinclude=Provenance:target` on the searches for its profiled resources.

For example, to retrieve the Observations reported for a patient together with their Provenance:

```
GET [base]/Observation?patient={id}&_revinclude=Provenance:target
```

To retrieve an eICR Composition together with its Provenance:

```
GET [base]/Composition?patient={id}&type=http://loinc.org|55751-2&_revinclude=Provenance:target
```

The search result Bundle contains the matching resources (search mode "match") and the Provenance resources whose target references them (search mode "include"). Where data is received as a document Bundle rather than retrieved by search, consumers should look for Provenance entries within the Bundle whose target references the Composition or the contained resources.
