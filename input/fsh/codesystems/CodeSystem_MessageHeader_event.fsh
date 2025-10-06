CodeSystem: CodeSystem_MessageHeader_event
Id: codesystem-messageHeader-event
Title: "MessageHeader Event Code System"
Description: "This code system contains codes that identify the event a message represents."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* ^jurisdiction.text = "United States of America (the)"
* ^caseSensitive = true
* ^content = #complete
* #process-eicr "Process eICR" "Process the eICR that is the focus of the eCR Task referenced by the eCR MessageHeader. See the Electronic Initial Case Report (eICR) Transaction and Profiles page in the eCR IG for further details."
* #process-rr "Process Reportability Response" "Process the Reportability Response that is the focus of the eCR Task referenced by the eCR MessageHeader. See the Reportability Response (RR) Transaction and Profiles page in the eCR IG for further details."