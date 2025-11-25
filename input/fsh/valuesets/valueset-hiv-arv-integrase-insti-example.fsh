ValueSet: ValueSetHIVARVIntegraseINSTIExample
Id: 2.16.840.1.113762.1.4.1146.1600-example
Title: "HIV Infection (ARV Integrase Strand Transfer Inhibitors [INSTIs]) (RXNORM)"
Description: "HIV Infection (ARV Integrase Strand Transfer Inhibitors [INSTIs]) (RXNORM)"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-triggering-valueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.name = "CSTE Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-steward"
* ^extension[=].valueContactDetail.name = "CSTE Steward"
* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1600-example"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1146.1600"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "eCR"
* ^useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* ^useContext[=].valueCodeableConcept = $sct#86406008
* ^useContext[=].valueCodeableConcept.text = "Human immunodeficiency virus infection (disorder)"
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#reporting
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#triggering
* ^useContext[+].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context-type#priority
* ^useContext[=].valueCodeableConcept = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-usage-context#routine

* $rxnorm#1235588 "raltegravir 100 MG Chewable Tablet"
* $rxnorm#1235591 "raltegravir 100 MG Chewable Tablet [Isentress]"
* $rxnorm#1235593 "raltegravir 25 MG Chewable Tablet"
* $rxnorm#1235595 "raltegravir 25 MG Chewable Tablet [Isentress]"
* $rxnorm#1433873 "dolutegravir 50 MG Oral Tablet"
* $rxnorm#1433879 "dolutegravir 50 MG Oral Tablet [Tivicay]"
* $rxnorm#1486838 "raltegravir 100 MG Granules for Oral Suspension"
* $rxnorm#1486841 "raltegravir 100 MG Granules for Oral Suspension [Isentress]"
* $rxnorm#1796077 "dolutegravir 10 MG Oral Tablet"
* $rxnorm#1796079 "dolutegravir 10 MG Oral Tablet [Tivicay]"
* $rxnorm#1796081 "dolutegravir 25 MG Oral Tablet"
* $rxnorm#1796083 "dolutegravir 25 MG Oral Tablet [Tivicay]"
* $rxnorm#1924313 "raltegravir 600 MG Oral Tablet"
* $rxnorm#1924315 "raltegravir 600 MG Oral Tablet [Isentress]"
* $rxnorm#2374562 "dolutegravir 5 MG Tablet for Oral Suspension"
* $rxnorm#2374566 "dolutegravir 5 MG Tablet for Oral Suspension [Tivicay]"
* $rxnorm#2475199 "cabotegravir 30 MG Oral Tablet"
* $rxnorm#2475205 "cabotegravir 30 MG Oral Tablet [Vocabria]"
* $rxnorm#744842 "raltegravir 400 MG Oral Tablet"
* $rxnorm#744846 "raltegravir 400 MG Oral Tablet [Isentress]"
* $rxnorm#1999667 "bictegravir 50 MG / emtricitabine 200 MG / tenofovir alafenamide 25 MG Oral Tablet"
* $rxnorm#1999673 "bictegravir 50 MG / emtricitabine 200 MG / tenofovir alafenamide 25 MG Oral Tablet [Biktarvy]"

* ^expansion.timestamp = "2022-04-05T10:06:43-04:00"
* ^expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1235588
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1235591
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1235593
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1235595
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1433873
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1433879
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1486838
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1486841
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1796077
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1796079
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1796081
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1796083
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1924313
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1924315
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2374562
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2374566
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2475199
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #2475205
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #744842
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #744846
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1999667
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "2022-01"
* ^expansion.contains[=].code = #1999673
