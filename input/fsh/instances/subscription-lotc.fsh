Instance: subscription-lotc
InstanceOf: Subscription
Title: "Subscription - Lab Order Test Trigger Codes"
Description: "Example of a Subscription resource for monitoring Lab Order Test trigger codes (LOTC) for public health reporting."
Usage: #example
* status = #active
* reason = "Example subscription for Lab Order Test trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://example.org/fhir/us/ecr/ValueSet/valueset-lab-order-test-triggers-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"