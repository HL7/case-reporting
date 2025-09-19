Profile: RR_Responsible_Agency_Organization
Parent: USPublicHealthOrganization
Id: rr-responsible-agency-organization
Title: "Responsible Agency Organization"
Description: "This Organization profile represents the Responsible Agency which is a PHA to which reporting is legally required."




* . 1.. MS
* . ^short = "Responsible Agency"
* . ^definition = "The Responsible Agency profile is based on the eCR Organization profile and sets the type to 'Responsible Agency'. A Responsible Agency is a PHA to which reporting is legally required. This represents the PHA for the location in which care was provided and/or where the patient lives."
* . ^isModifier = false
* text MS
* text ^short = "Repsponsible Agency Description"
* text ^definition = "Description of the Responsible Agency"
* identifier MS
* identifier ^short = "Responsible Agency Id"
* type 1..1 MS
* type = urn:oid:2.16.840.1.114222.4.5.232#RR8 "Responsible Agency"
* type ^isModifier = false
* name 1.. MS
* name ^short = "Responsible Agency Name"
* telecom MS
* telecom ^short = "Responsible Agency Contact Information"
* address MS
* address ^short = "Responsible Agency Address"