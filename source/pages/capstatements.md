---
title: CapabilityStatements defined for this Guide
layout: default
active: capstatements
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

<!-- * Do not remove this line (it will not be displayed)
{:toc} -->


<!-- end TOC -->

TEST, TEST: The following CapabilityStatements define the conformance requirements for this implementation guide.

### Trigger Code Transaction

This section describes the expected capabilities of a server that stores Reportable Conditions Trigger Codes (RCTC).  

#### Conformance requirements for the RCTC Server

The RCTC Server **SHALL**:

1. Store all RCTC value sets as individual ValueSet resources, and as a single Bundle resource containing all RCTC ValueSet resources.
1. Implement the RESTful behavior according to the FHIR specification.
1. Return the following response classes:
   - (Status 200): successful operation
   - (Status 400): invalid parameter
   - (Status 401/4xx): unauthorized request
   - (Status 403): insufficient scope
   - (Status 404): unknown resource
   - (Status 410): deleted resource.
1. Support *json* and *xml* resource formats for all RCTC interactions.
1. Declare a CapabilityStatement identifying the list of profiles, operations, search parameter supported.

The RCTC Server **SHOULD**:

1. Support clients creating and updating Subscription resource for all RCTC ValueSet and Bundle resources.
1. Implement Subscription services per the FHIR specification.


#### Conformance requirements for an RCTC Client

The RCTC Client **SHALL**:

- Support fetching RCTC ValueSet and Bundle resources using the supported RESTful interactions and search parameters declared in the RCTC Server CapabilityStatement.

The RCTC Client **SHOULD**:

- Support creating and updating Subscription resources on the RCTC server.
- Support receiving updates to subscriptions using one or more of the methods described in the FHIR specification.


### eICR Transaction
{% include list-simple-capabilitystatements.xhtml %}
### Reportability Response Transaction
{% include list-simple-capabilitystatements.xhtml %}
