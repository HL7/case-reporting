Instance: observation-rr-relevant-reportable-condition-observation
InstanceOf: RRRelevantReportableConditionObservation
Title: "Observation - RR Relevant Reportable Condition"
Description: "Example of a Reportability Response (RR) Relevant Reportable Condition observation identifying Zika virus disease as a reportable condition for patient Eve Everywoman."
Usage: #example
* status = #final
* code.coding[0] = $sct#64572001
* code.coding[+] = $loinc#75323-6
* code.text = "Condition"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* valueCodeableConcept = $sct#3928002 "Zika virus disease (disorder)"
* hasMember.reference = "Observation/observation-rr-reportability-information-observation"