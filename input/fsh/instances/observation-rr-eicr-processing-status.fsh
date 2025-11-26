Instance: observation-rr-eicr-processing-status
InstanceOf: RREicrProcessingStatusObservation
Title: "RR eICR Processing Status Example: observation-rr-eicr-processing-status"
Description: "Example of RR eCIR Processing Status Observation profile"
Usage: #example
* status = #final
* code = urn:oid:2.16.840.1.114222.4.5.274#RRVS20 "eICR was processed - with a warning"
* effectiveDateTime = "2025-07-02"
* performer.display = "Acme Platform"
* hasMember.reference = "Observation/observation-rr-eicr-processing-status-reason"