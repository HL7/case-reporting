---
title: StructureDefinition-pregnancy-status-observation-intro
layout: default
active: StructureDefinition-pregnancy-status-observation-intro
---

This profile represents current and/or prior pregnancy statuses and their date ranges, enabling investigators to determine if a patient was pregnant, possibly pregnant, not pregnant or whether the pregnancy status was unknown during a particular date range.

This profile is includes the determination method, determination date, and recorded date of the pregnancy status. It also contains profiles to represent various aspects of the pregnancy.

Use the effectiveTime to indicate the date range over which the patient was pregnant/possibly pregnant/not pregnant/unknown. To record the date that the pregnancy status was recorded, use author/time and to record the date on which the pregnancy status determination was made, use performer/time.

To record the plurality of the pregnancy, use the contained profile Pregnancy Plurality. To record the outcome(s) of the pregnancy, use the contained template Pregnancy Outcome (birth order is specified in the required entryRelationship/sequence element). To record the date of the first prenatal visit for this pregnancy, use the contained template First Prenatal Visit for this Pregnancy and to record the total number of prenatal care visits for this pregnancy use the contained template Total Number of Prenatal Care Visits for this Pregnancy.

**TODO - update this to suit use case for just eCR**