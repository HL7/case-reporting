Instance: observation-rr-relevant-reportable-condition-observation
InstanceOf: RRRelevantReportableConditionObservation
Title: "RR Relevant Reportable Condition Observation Example"
Description: "Example of RR Relevant Reportable Condition Observation profile"
Usage: #example
* status = #final
* code.coding[0] = $sct#64572001
* code.coding[+] = $loinc#75323-6
* code.text = "Condition"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* valueCodeableConcept = $sct#3928002 "Zika virus disease (disorder)"
* hasMember.reference = "Observation/observation-rr-reportability-information-observation"