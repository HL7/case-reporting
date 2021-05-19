It is based on the **US Core Condition** profile with further restriction of a *Must Support* constraint on the **onset\[x]** and verificationStatus data elements.

In the case of a condition being mistakenly entered into the system and later corrected:
* verificationStatus of 'entered-in-error' must be set
* in the containing [eICR Composition](StructureDefinition-eicr-composition.html), [eICR Initiation Type Extension](StructureDefinition-eicr-initiation-type-extension.html) must be set to "PHC1464|Manually initiated eICR".