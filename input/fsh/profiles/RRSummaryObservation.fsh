Profile: RRSummaryObservation
Parent: Observation
Id: rr-summary-observation
Title: "RR Summary Observation"
Description: "This profile contains a detailed textual description of the reportable condition(s), including actions the provider needs to take, any supplemental information that may be required, and where the initial case report was sent."
* . ^short = "Reportability Response Summary"
* . ^definition = "This profile contains a detailed textual description of the reportable condition(s), including actions the provider needs to take, any supplemental information that may be required, and where the initial case report was sent."

* code = $sct#304561000
* code MS
* code ^short = "Informing health care professional (procedure)"
* value[x] 1.. MS
* value[x] only string