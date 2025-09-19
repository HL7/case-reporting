Mapping: eCR-CDA-for-RRComposition
Id: eCR-CDA
Title: "eCR FHIR to CDA Mapping"
Description: "This table maps FHIR eCR profile elements to eICR/RR CDA template elements located in the CDA eICR IG (R2 STU2) and CDA RR IG (R2 STU1)."
Source: RRComposition
* section[sliceEICRSection].extension[extensionAlternatelyManuallyInitiatedEICR] -> "[RR R1 STU1] Manually Initiated eICR/code" "No mapping for Alternately Initiation eICR in the current version of CDA RR"
* section[sliceEICRSection].extension[extensionEICRReceiptTime] -> "[RR R1 STU1] Received eICR Information/eICR External Document Reference/effectiveTime"