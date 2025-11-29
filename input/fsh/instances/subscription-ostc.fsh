Instance: subscription-ostc
InstanceOf: Subscription
Title: "Subscription - Organism Substance Trigger Codes"
Description: "Example of a Subscription resource for monitoring Organism Substance trigger codes (OSTC) for public health reporting."
Usage: #example
* status = #active
* reason = "Example subscription for Organism_Substance trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://example.org/fhir/us/ecr/ValueSet/valueset-organism-substance-triggers-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"