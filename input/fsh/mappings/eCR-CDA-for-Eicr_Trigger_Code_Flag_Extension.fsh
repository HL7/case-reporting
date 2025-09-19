Mapping: eCR-CDA-for-Eicr_Trigger_Code_Flag_Extension
Id: eCR-CDA
Title: "eCR FHIR to CDA Mapping"
Description: "This table maps FHIR eCR profile elements to eICR/RR CDA template elements located in the CDA eICR IG (R2 STU2) and CDA RR IG (R2 STU1)."
Source: Eicr_Trigger_Code_Flag_Extension
* extension[triggerCodeValueSet].value[x] -> "[eICR R2 STU3.1] @sdtc:valueSet (Any of the eICR trigger code templates)"
* extension[triggerCodeValueSetVersion].value[x] -> "[eICR R2 STU3.1] @sdtc:valueSetVersion (Any of the eICR trigger code templates)"
* extension[triggerCode].value[x] -> "[eICR R2 STU3.1] Any of the eICR trigger codes (code, value[xsi:type='CD'], or translation"