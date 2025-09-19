Instance: subscription-lotc
InstanceOf: Subscription
Title: "subscription-lotc"
Description: "Example of Subscription resource (lotc)"
Usage: #example
* meta.versionId = "7"
* meta.lastUpdated = "2021-08-17T08:02:21.949+00:00"
* meta.source = "#2cezrRPXECRaoMEa"
* status = #active
* reason = "Example subscription for Lab Order Test trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/valueset-lotc-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"