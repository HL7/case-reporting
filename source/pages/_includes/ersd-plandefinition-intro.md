---
title: StructureDefinition-ersd-plandefinition-intro
layout: default
active: StructureDefinition-ersd-plandefinition-intro
---

This PlanDefinition profile defines the logic and rules around determining: whether or not a condition is reportable to public health, which jurisdiction(s) is/are responsible, which jurisdiction(s) need to be notified, and if the condition is reportable, gives timing information, next steps and condition information to the clinician.

The profile defines three timing-related parameters for initiating case reports from Electronic Health Records (the standard does not specify the hour value for the delay of the send - public health can determine the specific value appropriate for implementation and may adjust based on review of the data available at different times) the standard conveys the parameters to clinical care but it does not require their implementation.  Any requirement for timing in implementation would require regulation.

* Delay eICR construction (for example 3 hours) - the time the trigger event that an eICR should be composed and sent. (This delay is intended to allow adequate data to be recorded in the EHR, but is not so long as to delay reporting in critical circumstances.)  If there is a trigger and the encounter is closed before the specified delay value (for example the encounter is closed in 2 hours when the specified delay value is 3 hours) the eICR should be created and sent.
* eICR periodic update (for example 24 hours) - the time after an initial eICR transmission to send new eICRs as updates during long encounters. (These updates should only be applied until the end of the encounter).
* eICR encounter close-out (for example 24 hours or 0 hours for no delay) - the time after the end of an encounter for a final eICR to be sent when there has been one or more trigger events. (The close-out eICR is intended to provide the full data available at the end of an encounter.)