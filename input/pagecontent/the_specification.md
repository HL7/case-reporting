This section defines the specific requirements for systems wishing to conform to this IG.


### Context

#### Pre-reading
Before reading this implementation guide, implementers should first be familiar with two other key portions of the specification:

* The pages listed under the Transaction Profiles tab provide the context and general process flow enabled by the formal specification.

* The pages listed under the Implementation Guidance tab provide design considerations, narrative guidance, and query and rule filter generation information.


#### Conventions
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where the is no recommendation for or against adoption.


#### Claiming Conformance 

Actors and Systems asserting conformance to this implementation guide have to implement the requirements outlined in the corresponding capability statements. The following definition of MUST SUPPORT is to be used in the implementation of the requirements.

##### MUST SUPPORT Definition

* Systems SHALL be capable of populating data elements as specified by the profiles.
* Systems SHALL be capable of processing resource instances containing the MUST SUPPORT data elements without generating an error or causing the application to fail. In other words, Systems SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
* In situations where information on a particular data element is not present and the reason for absence is unknown, Systems SHALL NOT include the data elements in the resource instance.
* When accessing eCR data, Systems SHALL interpret missing data elements within resource instances as data not present.


#### Profiles
This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html) and terminology artifacts to describe the content to be shared as part of eCR workflows. The implementation guide is based on [FHIR R4]({{site.data.fhir.path}}).

The full set of profiles defined in this implementation guide can be found by following the links on the [FHIR Artifacts](artifacts.html) page.


#### US Core
This IG also leverages the [US Core]({{site.data.fhir.ver.hl7fhiruscore}}) set of profiles defined by HL7 for sharing individual health data in the U.S. Where US Core profiles exist, this IG either leverages them directly or uses them as a base for any additional constraints needed.

Where US Core profiles do not yet exist, new profiles have been created.