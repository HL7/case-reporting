Instance: subscription-dxtc
InstanceOf: Subscription
Title: "Subscription - Diagnosis Problem Trigger Codes"
Description: "Example of a Subscription resource for monitoring Diagnosis Problem trigger codes (DXTC) for public health reporting."
Usage: #example
* status = #active
* reason = "Example subscription for Diagnosis_Problem trigger codes. Review http://hl7.org/fhir/subscription.html and modify status, channel, endpoint, etc. before using"
* criteria = "Condition?code:in=http://example.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"
* channel.type = #email
* channel.endpoint = "mailto:nobody@example.org"