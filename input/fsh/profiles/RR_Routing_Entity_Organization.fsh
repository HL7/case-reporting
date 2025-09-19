Profile: RR_Routing_Entity_Organization
Parent: USPublicHealthOrganization
Id: rr-routing-entity-organization
Title: "Routing Entity Organization"
Description: "This Organization profile represents the Routing Entity which is a PHA or other organization identified by the PHA (such as an HIE) to which the eICR and/or the Reportability Response will be provided immediately following the creation of the Reportability Response."




* . 1.. MS
* . ^short = "Routing Entity"
* . ^definition = "The Routing Entity profile is based on the eCR Organization profile and sets the type to 'Routing Entity'. A Routing Entity is a PHA or other organization identified by the PHA (such as an HIE) to which the eICR and/or the Reportability Response will be provided immediately following the creation of the Reportability Response. This entity may just be acting to route the eICR and Reportability Response on their way to a Responsible Agency."
* . ^isModifier = false
* text MS
* text ^short = "Routing Entity Description"
* text ^definition = "Description of the Routing Entity"
* identifier MS
* identifier ^short = "Routing Entity Id"
* type 1..1 MS
* type = urn:oid:2.16.840.1.114222.4.5.232#RR7 "Routing Entity"
* type ^isModifier = false
* name 1.. MS
* name ^short = "Routing Entity Name"
* telecom MS
* telecom ^short = "Routing Entity Contact Information"
* address MS
* address ^short = "Routing Entity Address"