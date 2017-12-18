## {{ page.title }}

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

<!-- * Do not remove this line (it will not be displayed)#
{:toc} -->


<!-- end TOC -->


source file: source/pages/\_include/{{page.md_filename}}.md  file


Electronic Case Reporting (eCR) involves moving electronic Initial Case
Reports (eICR) from EHRs to Public Health Agencies (PHAs) in a (mostly)
automated fashion that, as closely as possible, matches complex
statutory condition and jurisdictional reporting requirements. The eICRs
are used to detect and monitor disease trends and manage possible cases
to support public health policies and response.

#### Current State

eCR has been advanced to date as a two-stage process because of the
complexities of the many different conditions (a typical Public Health
Agency can have over 200 reportable conditions) and jurisdictional
reporting requirements (all State and Territorial and many Local Public
Health Agencies have different reporting laws) as well as the
difficulties in distributing and implementing complex business rules in
EHRs.

The first stage of the two-stage process uses “flat” trigger code value
sets in a spreadsheet that EHR vendors / clinical care personnel
download and use to match against certain EHR data types (e.g.
diagnoses, problems, lab results, and lab orders - for suspect cases).

The second stage uses a business rules engine that can, among other
things:

  - Determine the legally responsible PHA(s);

  - Apply appropriate rules for specific conditions;

  - Determine reportability;

  - And help develop an appropriate response.

The second stage is currently oriented to implementation on a common,
shared services platform although if a PHA can take the first stage
data, the HL7 eICR could also go straight to them.

In general, PHA’s only want PII data that very closely aligns with their
reporting laws and while the first stage trigger codes align well with a
reasonable suspicion of reportability, most PHAs would like more
detailed rules processing (second stage) to occur before they receive
the data.

#### Next Steps

In other parts of this For Comment Ballot are specifications for a FHIR
value set bundle, FHIR RESTful APIs and a FHIR subscription service to
use as an alternative to the current trigger code spreadsheet and
download process. When available on a FHIR server, the value sets may be
retrieved directly via the FHIR REST API. Implementers may choose to be
automatically notified of value set updates via the [FHIR Subscription
mechanism]({{ site.data.fhir.path }}/subscription.html) that can include
email, SMS, web sockets, and RESTful hook channels for XML or JSON
trigger code access. The service can communicate updates when available
and does not require that the user’s EHR has implemented FHIR. We would
appreciate comments on what is laid out in this specification for the
FHIR value set bundle and FHIR subscription service.

#### Future State

In this portion of the IG we would like to describe some public health
requirements and ask a series of questions about future triggering /
decision approaches. FHIR offers opportunities to improve the timing,
consistency, and ease of implementation of automated reporting to public
health and reduce provider reporting burden. It can also potentially
advance the provisioning of public health information and guidance to
clinical care in the context of reportable and non-reportable
conditions.

There are also a number of policy reasons to consider that, in time, and
with successful roll out of one or more of the technical approaches
discussed above, distributing more complex decision logic to EHRs
eventually makes sense.

We would like this input relative to future FHIR implementation but also
plan to use the input to incrementally improve the implementation of the
existing CDA standards where possible. The requirements and questions
for triggering / decision support fall into two broad categories:
Standards and technologies and EHR workflow implementation.

#### Triggering / Decision Support - Standards and Technologies

#### Requirements

  - The many EHRs, PHAs, and conditions define a need for
    standardization that can allow EHR vendors to implement their
    products in many places while having a consistent interface to
    public health.

  - This means processing rules for both the location that care is being
    provided and for the location where the patient resides – wherever
    in the country that may be.

  - Technical standards need to be able to support secure transport of
    PII

  - The trigger codes and decision support rules are not PII and while
    they need to be secured from changes can be considered publicly
    available data.

  - There are several broad models for providing more complicated
    decision support for public health reporting at the point of care:

    1.  Public health could distribute standardized decision support
        rules for implementation by EHR vendors (e.g. distribute CQL or
        some other rule format)

    2.  Public health could develop and support an application that
        would be distributable to all clinical care sites that would run
        decision support locally (e.g. distributing a CDS Hooks or SMART
        app)

    3.  Public health could develop and support one or more centralized
        decision support services that would be called by EHRs to
        determine reportability (e.g. using a standard API for decision
        support)

#### Questions

1.  Regarding model “a” above: In time, will the standardization of APIs
    and data in FHIR resources offer practical opportunities to
    distribute decision logic to EHRs?

      - Will CQL be the standard that is first implemented broadly for
        operationalizing distributable business rules? If not, what
        other alternative may do so?

      - If you are an EHR vendor, in what general timeframe will you be
        able to implement distributable business rules in your system?

      - Based on your knowledge of the heath IT landscape, when do you
        estimate that there will be such a nationwide EHR decision
        support capability that can be used by public health?

      - Are there opportunities to incrementally advance some business
        rules (like only – positive lab results, or location specific
        reporting) before broad capabilities are available?

      - Some decision support implementations involve regular polling of
        EHR data and some may use more of a subscription service where
        matches create a notification. Are there limitations of, or
        preferences for, these different technical implementations?

      - Are there other issues for this approach?

2.  Regarding model “b” above: Will APIs offer practical opportunities
    to distribute decision support apps to all EHRs?

      - In this model, for eCR, should more than the APIs be
        standardized? What else?

      - Could multiple public health entities contribute rules to such
        an app and how?

      - In CDS Hooks; the EHR registers a hook, the CDS service executes
        logic pulling FHIR data from the server, and a card is returned
        to the user noting that case reporting has begun. eCR is, for
        the most part, a fully automated workflow. Can the CDS Hooks
        approach align with electronic Case Reporting (eCR) needs?

      - Are there models for the successful distribution and support of
        software by government or others for nationwide or State-wide
        clinical care implementation?

      - Are there other issues for this approach?

3.  Regarding model “c” above: Will APIs offer increased opportunities
    for central services that can be called from distributed and
    cloud-based EHRs?

      - If so, do EHR vendors and healthcare organizations have
        limitations on, or requirements for, avoiding dependencies on
        external code and services that they do not “own”?

      - Are there opportunities to use OpenID and OAuth 2 to secure
        these transactions at a nationwide or statewide scale? Are there
        other standards that would be better?

      - Are there other issues for this approach?

4.  The trigger codes in this specification are to be retrieved using a
    FHIR Bundle resource since they are expected to be updated
    simultaneously and are versioned as such. The specification also
    describes how to retrieve them as individual ValueSet resources.

      - Should one or both approaches should be advanced?

      - How would this be done if the value sets represented a union of
        different inputs for each one?

5.  EHR vendors have indicated that they would like a common set of
    trigger codes. Are there specific needs that State and Local PHAs
    have for 1) creating additional trigger codes and 2) managing their
    own reporting rules?

      - How could rules be structured so that there could be reporting
        to the PHAs of the patient’s residence wherever that may be
        nationally (vs. the location that care was provided) be enabled?

      - There is currently a single set of Trigger codes that is
        produced from PHA rules input into the shared public health
        decision support system (Reportable Condition Knowledge
        Management System) on the shared services platform. These
        trigger codes do not necessarily need to be used with RCKMS.
        Does this approach adequately capture trigger codes needed by
        public health agencies for reporting?

#### Triggering / Decision Support - EHR Workflow Implementation

#### Requirements

  - Public health needs eICRs to be initiated for some conditions when
    they are suspect, when there is a clinical diagnosis, and eventually
    when there are combinations of findings. The current trigger codes
    focus on diagnoses, problems, lab results and lab orders.

  - Public health needs eICRs to be initiated beginning a short period
    of time after the beginning of a patient encounter. While there is a
    desire to have reporting as soon as possible after the start of the
    encounter, this need is somewhat in a tension with the desire to
    have at least some minimal data populating the eICR.

  - Public health needs updates/replacement eICRs with additional data
    that have been accumulated during encounters and, potentially, after
    an encounter has ended and most results have been added to the
    chart.

  - Public health needs to get comparable / consistent data from
    different EHRs and clinical sites.

  - Public health would like to be able to, at times, deliver
    information to providers as soon as possible and while the patient
    is still in the clinical setting.

  - Providers would like to have confirmation from public health that
    statutory reporting requirements have been completed.

#### Questions

  - In non-FHIR EHR implementations and CDA document exchange, the
    time/date of initiation and the end of clinical encounters have had
    variable implementation and availability. FHIR has specific data
    variables for both. Will these data be more consistently implemented
    in FHIR for decision support use?

  - How can FHIR be used to initiate an eICR in close proximity to the
    start of an encounter, while still including a reasonable amount of
    initial data?

  - Assuming that decision support can be close to immediate and
    recognizing that charting practices differ in different clinical
    environments, will it be useful to de-couple the delivery of public
    health information for a reportable condition from the actual first
    reporting of that condition (that will have adequate data)?

  - For encounters where a condition has been identified and reported,
    it make sense to separate next-step reporting for an encounter into
    reporting on newly identified conditions and reporting on the
    already identified condition:

      - When a new condition is identified sometime after the start of
        an encounter, does it make sense to delay reporting on that new
        condition so as to collect information as above, or because it
        is later in the encounter should the reporting of a new
        condition be immediate?

      - In FHIR, will it be possible to maintain information about
        conditions that have already been reported for an encounter? If
        so, in what timeframe should update / replacement eICRs be
        transmitted?

      - Should a final eICR be sent at some point after the end of an
        encounter so as to include all data that were available for that
        encounter? Is there an approach to setting a transmission for
        some time or event post-encounter to do so?
