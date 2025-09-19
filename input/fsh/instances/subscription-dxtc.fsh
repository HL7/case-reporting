Instance: subscription-dxtc
InstanceOf: Subscription
Title: "subscription-dxtc"
Description: "Example of Subscription resource (dxtc)"
Usage: #example
* meta.versionId = "7"
* meta.lastUpdated = "2021-08-17T08:02:21.949+00:00"
* meta.source = "#OVXkzMnUgrPGNQp3"
* status = #active
* reason = "Example subscription for Diagnosis_Problem trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/valueset-dxtc-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"