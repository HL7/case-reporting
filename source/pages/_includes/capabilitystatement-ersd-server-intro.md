---
title: CapabilityStatement-capabilitystatement-ersd-server-intro
layout: default
active: CapabilityStatement-capabilitystatement-ersd-server-intro
---

This section describes the expected capabilities of a server that stores the eRSD resources including the Reportable Conditions Trigger Codes (RCTC).

#### Conformance requirements for the eRSD Server

The eRSD Server **SHALL**:

1. Store all of the eRSD resources and value sets as a PlanDefiniton bundle and included RCTC ValueSets.
1. Implement the RESTful behavior according to the FHIR specification.
1. Return the following response classes:
   - (Status 200): successful operation
   - (Status 400): invalid parameter
   - (Status 401/4xx): unauthorized request
   - (Status 403): insufficient scope
   - (Status 404): unknown resource
   - (Status 410): deleted resource.
1. Support *json* and *xml* resource formats for all eRSD interactions.
1. Declare a CapabilityStatement identifying the list of profiles, operations, search parameter supported.

The eRSD Server **SHOULD**:

1. Support clients creating and updating Subscription resource for the eRSD PlanDefinition bundle, resources, and RCTC ValueSets.
1. Implement Subscription services per the FHIR specification.