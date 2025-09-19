Profile: RR_Rules_Authoring_Agency_Organization
Parent: USPublicHealthOrganization
Id: rr-rules-authoring-agency-organization
Title: "Rules Authoring Agency Organization"
Description: "This Organization profile represents the Rules Authoring Agency which is the originator of the rules that are being executed in decision support to determine reportability."




* . 1.. MS
* . ^short = "Rules Authoring Agency"
* . ^definition = "The Rules Authoring Agency profile is based on the eCR Organization profile and sets the type to 'Rules Authoring Agency'. The Rules Authoring Agency is whose rules are being executed in decision support to determine reportability. This may be a State or Local PHA. In the majority of cases the Rules Authoring Agency will be the same as the Responsible Agency. Usually, a Local Public Health Agency will inherit rules from its relevant State agency, but a Local agency can adopt, replace or supplement relevant state rules."
* . ^isModifier = false
* text MS
* text ^short = "Rules Authoring Agency Description"
* text ^definition = "Description of the Rules Authoring Agency"
* identifier MS
* identifier ^short = "Rules Authoring Agency Id"
* type 1..1 MS
* type = urn:oid:2.16.840.1.114222.4.5.232#RR12 "Rules Authoring Agency"
* type ^isModifier = false
* name 1.. MS
* name ^short = "Rules Authoring Agency Name"
* telecom MS
* telecom ^short = "Rules Authoring Agency Contact Information"
* address MS
* address ^short = "Rules Authoring Agency Address"