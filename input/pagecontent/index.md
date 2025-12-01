<div markdown="1" class="note-to-balloters">
* This ballot version of the IG references a snapshot of the CI Build of the soon-to-be-published [US Public Health Profiles Library (US PH Library)](https://build.fhir.org/ig/HL7/fhir-us-ph-library/en/). Prior to publication of this IG, the reference will change to the published version of the US PH Library.
* __Questions for Balloters__
  * Occupation & Industry: US Core 6.1.0 contains the [US Core Occupation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-occupation.html) that implements the US Core Data for Interoperability (USCDI) Occupation and Occupation Industry requirements. Currently eCR uses the [Occupational Data for Health (ODH)](http://build.fhir.org/ig/HL7/us-odh/) profiles. Going forward should eCR:
    1. Continue using only the ODH profiles
    1. Use both the US Core and the ODH profiles
    1. Change to using only the US Core profiles
  * Aborted Medications: 
    1. Should aborted medications be disallowed in the eCR?
  * Pregnancy Intent:
    1. Should the [C-CDA Pregnancy Intent Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancyintent.html) be included in the eCR, and, if included, what specific public health utility or use cases would it support?
  * Vital Signs:
    1. What vital signs are most pertinent?
    1. What guidance should be given on the relevant time period/filter for vital signs included/sent in the eICR?

</div>

### Overview

# Introduction and Purpose

With the adoption and maturing of Electronic Health Records (EHRs) there are opportunities to better support public health surveillance as well as to better support the delivery of relevant public health information to clinical care. Electronic Case Reporting (eCR) can provide more complete and timely case data, support disease / condition monitoring, and assist in outbreak management and control. It can also improve bidirectional communications through the delivery of public health information in the context of a patient's condition and local disease trends and by facilitating ad hoc communications. eCR will also reduce healthcare provider burden by automating the completion of legal reporting requirements.

With the advent of FHIR standards, there is a need for FHIR implementation guidance to specify appropriate resources and transactions needed for the eCR process. FHIR offers opportunities to further enable automated triggering and reporting of cases from EHRs, to ease implementation and integration, to support the acquisition of public health investigation supplemental data, and to connect public health information (e.g., guidelines) with clinical workflows. Over time, FHIR may also support the distribution of reporting rules to clinical care to better align data authorities and make broader clinical data available to public health decision support services inside the clinical care environment.

For more supporting information, use cases, and other background context and material, see Volume 1 of both the [HL7 CDA R2 Electronic Initial Case Report (eICR) Standard for Trial Use (STU) IG](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=436) (see the link under "STU Documents" for STU Release 3) and the [HL7 CDA R2 Reportability Response (RR) STU IG](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=470).

For Clinical Safety Information please refer to the [FHIR Implementer’s Safety Checklist](http://hl7.org/fhir/safety.html).

# Stakeholders
<table style="width:100.0%;border-collapse:collapse;border:none;">
    <thead>
        <tr>
            <th style="width: 186.2pt;border: 1pt solid rgb(191, 191, 191);background: rgb(242, 242, 242) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;line-height:11.0pt;color:black;font-weight:bold;'>Stakeholders&nbsp;</p>
            </th>
            <th style="width: 286.15pt;border-color: rgb(191, 191, 191) rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: solid solid solid none;border-width: 1pt 1pt 1pt medium;border-image: none 100% / 1 / 0 stretch;background: rgb(242, 242, 242) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;line-height:11.0pt;color:black;font-weight:bold;'>Description&nbsp;</p>
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Electronic Health Record (EHR) /&nbsp;</p>
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Electronic Medical Record (EMR)&nbsp;</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>The electronic health record (EHR) is a longitudinal electronic record of patient health information generated by one or more encounters in any care delivery setting. Included in this information are patient demographics, progress notes, problems, medications, vital signs, past medical history, immunizations, laboratory data and radiology reports.</p>
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Source:&nbsp;<a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2518657/"><span style="font-size:13px;">https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2518657/</span></a>. For purposes of this IG, EHR can also be interpreted to refer to applications that some vendors may call an electronic medical record (EMR).</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Healthcare Provider</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Any supplier of a healthcare service, i.e., a person or organization that furnishes, bills, or is paid for healthcare in the normal course of business. Includes physicians and healthcare provider staff, as well as ancillary healthcare personnel (e.g., laboratory personnel).</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Health IT Vendor</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>A vendor or supplier is a company/consortium that provides health information technology products and/or services, in this case, for supporting health or healthcare.</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Intermediary&nbsp;</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>An organization that is in the information flow between a healthcare organization and a PHA regarding case reporting. An intermediary may be acting on behalf of either the healthcare organization as a business associate or public health as an authorized agent. Examples include a Health Information Exchange (HIE) organization, a clinical trust and exchange network, or a shared infrastructure and routing platform.</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Laboratory&nbsp;</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>The laboratory is a producer of laboratory test results (filler or, at times, placer of a laboratory order).</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Laboratory Information System (LIS)</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>An application to streamline the management of laboratory processes including data collection, workflow management, and report generation. May provide an automatic interface to laboratory analytical instruments to transfer verified results to nurse stations, chart carts, and remote physician offices. Also referred to as a Laboratory Information Management System.</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Public Health Agency (PHA)</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>For the purposes of this IG, a PHA is a governmental entity at the federal, state, territorial, local, or tribal level that is legally entitled to establish public health case reporting requirements and receive case reports.&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Public Health Decision Support (PHDS)</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>For the purposes on this IG, PHDS provides clinicians, staff, and public health practitioners with knowledge about reporting cases to public health and information about the condition that has been identified.&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Public Health System&nbsp;</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Jurisdictional information systems that may, among other things, receive public health case reports.</p>
            </td>
        </tr>
        <tr>
            <td style="width: 186.2pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191);border-style: none solid solid;border-width: medium 1pt 1pt;border-image: none 100% / 1 / 0 stretch;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>Standards Development Organization&nbsp;</p>
            </td>
            <td style="width: 286.15pt;border-color: currentcolor rgb(191, 191, 191) rgb(191, 191, 191) currentcolor;border-style: none solid solid none;border-width: medium 1pt 1pt medium;padding: 0cm 5.4pt;vertical-align: top;">
                <p style='margin-top:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;line-height:11.0pt;'>An organization that identifies the need for, locates interested parties, and writes specifications that all parties in a particular field of human endeavor can use to their mutual benefit. For the purpose of this document, the field is health or health interoperability and recognition by the American National Standards Institute (ANSI) or the International Standards Organization (ISO) is accepted as evidence that a particular organization is a standards development organization.&nbsp;</p>
            </td>
        </tr>
    </tbody>
</table>

### Authors

<table>
<thead>
<tr>
<th style="width: 186.2pt;border: 1pt solid rgb(191, 191, 191);background: rgb(242, 242, 242) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">Name</th>
<th style="width: 186.2pt;border: 1pt solid rgb(191, 191, 191);background: rgb(242, 242, 242) none repeat scroll 0% 0%;padding: 0cm 5.4pt;vertical-align: top;">Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
</tbody>
</table>
