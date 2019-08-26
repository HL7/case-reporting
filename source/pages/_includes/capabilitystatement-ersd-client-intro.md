---
title: CapabilityStatement-capabilitystatement-ersd-client-intro
layout: default
active: CapabilityStatement-capabilitystatement-ersd-client-intro
---

This section describes the expected capabilities of a client consuming eRSD resources including the Reportable Conditions Trigger Codes (RCTC).

#### Conformance requirements for an eRSD Client

The eRSD Client **SHALL**:

- Support fetching the eRSD PlanDefinition Bundle and RCTC ValueSet resources using the supported RESTful interactions and search parameters declared in the eRSD Server CapabilityStatement.

The eRSD Client **SHOULD**:

- Support creating and updating Subscription resources on the eRSD server.
- Support receiving updates to subscriptions using one or more of the methods described in the FHIR specification.