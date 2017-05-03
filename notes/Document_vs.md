# Case report: Documents vs...

## Background:

"A [document](http://build.fhir.org/documents.html) is an *immutable* set of [resources] with a fixed presentation that is authored and/or attested by humans, organizations and devices....Documents built in this fashion may be exchanged between systems and persisted in document storage and management systems, including systems such as IHE XDS."

How it's done in FHIR:

A FHIR document is really a structured [Bundle] containing the [Composition] resource as the first resource contained and its entries.  The Composition resource organizes clinical and administrative content into sections, each of which contains a [narrative], and [references] other resources for supporting data.

[How documents are stored](http://build.fhir.org/documents.html#bundle)

Searchability:

Depending how documents are stored can:
1. Search directly on resources that compose the document
1. Search on Bundle
1. Search on Composition
1. Retrieve the Document as a Binary no search really.

Case for using a FHIR document :

Pros...
- Should be immutable
- can capture all data elements
- can be mapped to CCDA

Cons...
- Should be immutable
- Nothing that is specific to Case Report
   e.g. :
   - Who is managing etc.
   - Case status (resolved, in-progress)
- More effort to create profiles for referenced resources
   - conform to US Realm and CCDA FHIR
- Documents and CCDA FHIR immature

## vs New Resource
Case for Creating a fresh new FHIR resource:


 Background:

 "A resource is used to exchange and/or store data in order to solve a wide range of healthcare related problems.  A FHIR Resource has a human-readable XHTML representation of the content of the resource (see Human Narrative in resources) can have references to other resources"

Pros...
-  is editable and changeable e.g.:
    - Case status (resolved, in-progress)
- Include Other stuff not captured in other resources e.g.:
    - Who is managing case etc.
- capture less information to make report smaller "fewer bytes"

Cons:
- More logistics and effort to implement
   e.g.  New resource proposal etc.
- Bigger lift for implementers (assuming implementers already able to provide data in other existing resources - this is debateable.)
- resource will

# Reportability Report: Documents vs...

## See Discussion above on Documents vs New Resource

## ..vs [Profile] on [Communication]

Background:
"The Communication resource is a *record* of a communication. A communication is a conveyance of information from one entity, a sender, to another entity, a receiver. The sender and receivers may be patients, practitioners, related persons, organizations, or devices."

(it may need to include an extension which references [CommunicationRequest] )

Pros...
- Good fit to use case
- is editable and changeable e.g.:
    - Case status (resolved, in-progress)
- FMM2 (minimum bar)
- "fewer bytes"
- Profiling is less logistical effort than new resource.

Cons:
- will need to create non standard extensions



## See Discussion on Documents above

[document]: (http://build.fhir.org/documents.html)
[Bundle]: (http://build.fhir.org/bundle.html)
[Composition]:(http://build.fhir.org/composition.html)
[resources]:(http://build.fhir.org/resource.html)
[narrative]:(http://build.fhir.org/narrative.html)
[references]:(http://build.fhir.org/references.html)
[Profile]:(http://build.fhir.org/profiling.html)
[Communication]:(http://build.fhir.org/communication.html)
