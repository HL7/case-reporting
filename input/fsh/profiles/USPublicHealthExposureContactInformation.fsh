Profile: USPublicHealthExposureContactInformation
Parent: Observation
Id: us-ph-exposure-contact-information
Title: "US Public Health Exposure Contact Information"
Description: "This Observation profile represents potential patient exposure and contact information and should be used to record information about the patient's exposure to an agent (exposure source) or to record information about those that the patient could have exposed to an agent (exposure target). Recording of this information could assist/support in contact tracing or other control measures."





* . ^short = "US Public Health Exposure Contact Information"
* . ^definition = "This profile represents patient exposure information."
* extension only USPublicHealthAddressExtension
* extension MS
* extension ^short = "Exposure/contact address"
* extension ^definition = "If an address where the exposure/contact took place is known then it can be contained in the address-extension."
* category 1..1 MS
* category from ActClassExposure (required)
* category ^short = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
* category ^definition = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
* category ^binding.description = "ActClassExposure"
* code 1..1 MS
* code ^short = "The type of exposure/contact (environmental, activity, event, location, person, animal, etc.)."
* code ^definition = "Suggested value sets: [Exposure Setting (COVID-19)](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=FA5D6D86-C7B2-EA11-818F-005056ABE2F0), [Exposure Location](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=9BE75E17-176B-DE11-9B52-0015173D1785), [Social History Type](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113883.3.88.12.80.60/expansion)"
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* focus only Reference(USPublicHealthPatient or RelatedPerson or Group or USCoreLocation)
* focus MS
* focus ^short = "Contains either the patient's contact with an entity (person, animal, or substance) or presence at a location where exposure to an agent could have occurred or the patient's contact with an entity (person, animal, or substance) or presence at a location where transmission from the patient could have occurred"
* focus ^definition = "Contact with an entity (person, animal) or at a location."
* effective[x] MS
* effective[x] ^short = "Time or period the contact/exposure occurred."
* value[x] only CodeableConcept or string
* value[x] MS
* value[x] ^short = "Specific exposure/contact"
* value[x] ^definition = "Specific exposure/contact"
* component MS
* component ^short = "Possible agent of concern in the exposure"
* component.code = $v3-ParticipationType#EXPAGNT
* component.code MS
* component.code ^short = "ExposureAgent"
* component.code ^definition = " The physical (including energy), chemical or biological substance that is participating in the exposure. For example in communicable diseases, the disease causing pathogen."
* component.value[x] 1.. MS
* component.value[x] only CodeableConcept or string
* component.value[x] ^short = "Possible agent of concern in the exposure"