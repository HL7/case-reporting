---
title: Capability Statements
layout: default
active: Capability Statements
---

The following CapabilityStatements define the conformance requirements for this implementation guide.

### Knowledge Management Transaction

This section describes the expected capabilities of a server that stores the Knowledge Management resources including the Reportable Conditions Trigger Codes (RCTC).  

#### Conformance requirements for the Knowledge Management Server

The Knowledge Management Server **SHALL**:

1. Store all of the Knowledge Management resources and value sets as a PlanDefiniton bundle and included RCTC ValueSets.
1. Implement the RESTful behavior according to the FHIR specification.
1. Return the following response classes:
   - (Status 200): successful operation
   - (Status 400): invalid parameter
   - (Status 401/4xx): unauthorized request
   - (Status 403): insufficient scope
   - (Status 404): unknown resource
   - (Status 410): deleted resource.
1. Support *json* and *xml* resource formats for all Knowledge Management interactions.
1. Declare a CapabilityStatement identifying the list of profiles, operations, search parameter supported.

The Knowledge Management Server **SHOULD**:

1. Support clients creating and updating Subscription resource for the Knowledge Management PlanDefinition bundle, resources, and RCTC ValueSets.
1. Implement Subscription services per the FHIR specification.


#### Conformance requirements for an Knowledge Management Client

The Knowledge Management Client **SHALL**:

- Support fetching the Knowledge Management PlanDefinition Bundle and RCTC ValueSet resources using the supported RESTful interactions and search parameters declared in the Knowledge Management Server CapabilityStatement.

The Knowledge Management Client **SHOULD**:

- Support creating and updating Subscription resources on the Knowledge Management server.
- Support receiving updates to subscriptions using one or more of the methods described in the FHIR specification.


### eICR Transaction
{% include list-simple-capabilitystatements.xhtml %}
### Reportability Response Transaction
{% include list-simple-capabilitystatements.xhtml %}