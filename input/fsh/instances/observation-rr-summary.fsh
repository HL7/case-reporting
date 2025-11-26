Instance: observation-rr-summary
InstanceOf: RRSummary
Title: "Observation - RR Summary"
Description: "Example of a Reportability Response (RR) Summary observation providing summary information about electronic case reporting submission and reportability determination for Zika virus disease."
Usage: #example
* status = #final
* code = $sct#304561000 "Informing health care professional (procedure)"
* subject.reference = "Patient/patient-ecr-eve-everywoman"
* subject.display = "Eve Everywoman"
* effectiveDateTime = "2025-07-02"
* performer.display = "Acme Platform"
* valueString = "Your organization electronically submitted an initial case report to determine if reporting to public health is needed for a patient. 'Zika virus disease (disorder)' is reportable to 'State Department of Health'. An initial case report was sent to 'State Department of Health'. Additional information may be required for this report."