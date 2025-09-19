Profile: RRReportabilityInformationObservation
Parent: Observation
Id: rr-reportability-information-observation
Title: "RR Reportability Information Observation"
Description: "This profile represents reportability information based on the PHA in which is located the patient's home, the provider facility, or both locations."




* . MS
* . ^short = "Reportability Information Observation"
* . ^definition = "This profile defines the reportability information for a condition-jurisdiction pair, based on the PHA in which is located the patient's home, the provider facility, or both locations. The Determination of Reportability, Determination of Reportability Reason, and Determination of Reportability Rule are contained in extensions. This profile also contains extensions for the Responsible Agency, the Rules Authoring Agency, and the Routing Entity.  The Relevant Reportable Condition is contained in goal.addresses and any External Resources are contained in action (one action may contain multiple External Resources (documentation))."
* . ^isModifier = false
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    USPublicHealthDeterminationOfReportabilityExtension named determinationOfReportability 1..1 MS and
    USPublicHealthDeterminationOfReportabilityReasonExtension named determinationOfReportabilityReason 0..* MS and
    USPublicHealthDeterminationOfReportabilityRuleExtension named determinationOfReportabilityRule 0..* MS and
    RRExternalResourceExtension named externalResourceExtension 0..* MS
* extension[externalResourceExtension] ^short = "External resources pertaining to the condition"
* extension[externalResourceExtension] ^definition = "External resources such as a text guidance, link to access forms for additional reporting needs, additional testing and/or laboratory testing needs, treatment and/or prevention resources, Public Health Agency contact information and general additional resources."
* status = #final (exactly)
* status MS
* code MS
* code from RRVS_LocationRelevance_eCR (required)
* code ^short = "Location Relevance"
* code ^binding.description = "Location Relevance"
* performer MS
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    rulesAuthoringAgency 1..* MS and
    routingEntity 1..* MS and
    responsibleAgency 0..* MS
* performer[rulesAuthoringAgency] only Reference(RR_Rules_Authoring_Agency_Organization)
* performer[routingEntity] only Reference(RR_Routing_Entity_Organization)
* performer[responsibleAgency] only Reference(RR_Responsible_Agency_Organization)
* component 1.. MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^short = "Reporting timeframe"
* component ^definition = "The timeframe in which the receiver should take the actions specified."
* component contains sliceReportingTimeframe 0..* MS
* component[sliceReportingTimeframe].code = urn:oid:2.16.840.1.114222.4.5.232#RR4
* component[sliceReportingTimeframe].code MS
* component[sliceReportingTimeframe].code ^short = "Timeframe to report (urgency)"
* component[sliceReportingTimeframe].value[x] 1.. MS
* component[sliceReportingTimeframe].value[x] only Quantity
* component[sliceReportingTimeframe].value[x].value 1.. MS
* component[sliceReportingTimeframe].value[x].unit 1.. MS