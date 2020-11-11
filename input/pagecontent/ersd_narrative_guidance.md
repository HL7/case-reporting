[Previous Page - Reportability Response Narrative Guidance](reportability_response_narrative_guidance.html)

This page describes the functional requirements for the eCR workflow

### Functional Requirements

The general workflow described for the eRSD is as follows:

*  Encounter starts
*  1 hour after start, check suspected reportable condition
*  if encounter in progress, every 6 hours, check suspected reportable condition
*  if suspected reportable condition, every 24 hours, send

A diagram of this workflow is shown below.

### ERSDPlanDefinitionActions

The eRSD PlanDefinition profile defines the following actions:

NOTE: The offsets (1 h, 6h, and 24h, are parameters to the specification)

*     initial-creation-delay: 1 h
*     reportable-check-period: 6 h
*     suspected-reportable-update-period: 24 h
*     suspected-reportable-close-delay: 24 h

*     start
        trigger: encounter-start
        action: check-reportable in 1 hour

*     check-reportable
        if isSuspectedReportable, create-and-report-eicr
        if encounter-inprogress, check-reportable in 6 hours

*     create-and-report-eicr
        report-eicr
        if encounter-complete, report-eicr in 24 hours
        if encounter-inprogress, create-and-report-eicr in 24 hours

*     report-eicr
        create-eicr, validate-eicr, route-and-send-eicr

And the inclusion of an associated ExampleScenario:

    encounter start
    1 hour
    check-reportable (is not reportable)
    6 hours
    check-reportable (is reportable)
    create-and-report-eicr
    report-eicr (encounter in progress)
    24 hours
    create-and-report-eicr
    report-eicr (encounter complete)
    24 hours
    report-eicr


### Reporting Process

<table><tr><td><img src="ersd-processing.drawio.svg" /></td></tr></table>

### Jurisdiction Determination

<a href="ersd_jurisdictions_codesystem_query.html">Jurisdiction Code System Query</a>

### Suspected Reportable Determination Logic

<a href="rule_filter_generation.html">Rule Filter Generation</a>





[Next Page - eRSD Jurisdictions CodeSystem Query](ersd_jurisdictions_codesystem_query.html)
