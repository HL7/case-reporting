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

### CapabilityStatements

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="CapabilityStatement-capabilitystatement-ecr-client.html">CapabilityStatement_eCR_Client</a></td>
<td>This resource defines the expected capabilities </td>
</tr>
<tr>
<td><a href="CapabilityStatement-capabilitystatement-ecr-server.html">CapabilityStatement_eCR_Server</a></td>
<td>This resource defines the expected capabilities </td>
</tr>
<tr>
<td><a href="CapabilityStatement-capabilitystatement-ersd-client.html">CapabilityStatement_eRSD_Client</a></td>
<td>This section describes the expected capabilities of a client consuming eRSD resources including the Reportable Conditions Trigger Codes (RCTC).

#### Conformance requirements for an eRSD Client

The eRSD Client **SHALL**:

- Support fetching the eRSD PlanDefinition Bundle and RCTC ValueSet resources using the supported RESTful interactions and search parameters declared in the eRSD Server CapabilityStatement.

The eRSD Client **SHOULD**:

- Support creating and updating Subscription resources on the eRSD server.
- Support receiving updates to subscriptions using one or more of the methods described in the FHIR specification.</td>
</tr>
<tr>
<td><a href="CapabilityStatement-capabilitystatement-ersd-server.html">CapabilityStatement_eRSD_Server</a></td>
<td>This section describes the expected capabilities of a server that stores the eRSD resources including the Reportable Conditions Trigger Codes (RCTC).

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
1. Implement Subscription services per the FHIR specification.</td>
</tr>
</tbody>
</table>
