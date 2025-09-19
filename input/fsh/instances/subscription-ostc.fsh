Instance: subscription-ostc
InstanceOf: Subscription
Title: "subscription-ostc"
Description: "Example of Subscription resource (ostc)"
Usage: #example
* meta.versionId = "7"
* meta.lastUpdated = "2021-08-17T08:02:21.950+00:00"
* meta.source = "#CuyeEjVRdwrLn81I"
* status = #active
* reason = "Example subscription for Organism_Substance trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/valueset-ostc-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"