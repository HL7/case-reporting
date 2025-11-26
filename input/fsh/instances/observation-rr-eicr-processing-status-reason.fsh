Instance: observation-rr-eicr-processing-status-reason
InstanceOf: RREicrProcessingStatusReasonObservation
Title: "RR eICR Processing Status Reason Example: observation-rr-eicr-processing-status-reason"
Description: "Example of RR eICR Processing Status Reason Observation profile"
Usage: #example
* status = #final
* code = urn:oid:2.16.840.1.114222.4.5.232#RR6 "eICR Processing Status Reason"
* effectiveDateTime = "2025-07-02"
* performer.display = "Acme Platform"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#RRVS30 "eICR was processed with the warning of: inactive RCTC code"
* component.code = urn:oid:2.16.840.1.114222.4.5.274#RRVS32 "Inactive RCTC code detail"
* component.valueCodeableConcept = $sct#69092001 "Leptospirosis icterohemorrhagica (disorder)"