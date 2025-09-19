CodeSystem: USPublicHealthMessageTypesCodeSystem
Id: us-ph-message-types-codesystem
Title: "US Public Health Message Types CodeSystem"
Description: "The US Public Health Message Types CodeSystem is a 'starter set' of codes supported for identifying types of messages being exchanged."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-09-06"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/us/ecr/ValueSet/us-ph-message-types-valueset"
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^count = 11
* #message-report "Indicates a message containing a report exchanged between clinical care and PHA/Research Organization." "Indicates a message that contains data for a specific use case. Hep C, Cancer and Healthcare Surveys are example use cases etc."
* #message-report #cancer-report-message "Indicates a message containing cancer reporting data sent from clinical care to PHA." "Indicates that cancer data are present in the message being sent from clinical care to PHA."
* #message-report #cancer-response-message "Indicates a message containing cancer report response data sent from PHA to clinical care." "Indicates that a message containing response data for an already submitted cancer report is being sent from PHA to clinical care."
* #message-report #hepc-report-message "Indicates a message containing Hep C data sent from clinical care to PHA." "Indicates that Hep C data are present in the message being sent from clinical care to PHA."
* #message-report #hepc-response-message "Hep C Response Message sent from PHA to clinical care." "Indicates that a message containing response data for an already submitted Hep C report message is being sent from PHA to clinical care."
* #message-report #healthcare-survey-report-message "Indicates a message containing healthcare survey data sent from clinical care to PHA." "Indicates that healthcare survey data are present in the message being sent from clinical care to PHA."
* #message-report #healthcare-survey-response-message "Indicates a message containing healthcare survey data sent from PHA to clinical care." "Indicates that healthcare survey data are present in the response being sent from PHA to clinical care in response to a healthcare survey report message."
* #message-report #research-report-message "Indicates a message containing healthcare data sent from clinical care to Research Organization." "Indicates that research data are present in the message being sent from clinical care to Research Organization."
* #message-report #research-response-message "Indicates a message containing response data from Research Organization to clinical care." "Indicates that research data are present in the response being sent from Research Organization to clinical care in response to a submitted research report message."
* #message-report #eicr-case-report-message "Indicates a message containing electronic case report healthcare data sent from clinical care." "Indicates that electronic case report data are present in the message being sent from clinical care."
* #message-report #reportability-response-message "Indicates a message containing reportability response data in response to an electronic case report." "Indicates that reportability response data are present in the response to an electronic case report."