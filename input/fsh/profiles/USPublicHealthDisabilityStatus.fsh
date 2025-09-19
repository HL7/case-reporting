Profile: USPublicHealthDisabilityStatus
Parent: Observation
Id: us-ph-disability-status
Title: "US Public Health Disability Status"
Description: """This profile represents the Disability Element defined here: https://aspe.hhs.gov/basic-report/hhs-implementation-guidance-data-collection-standards-race-ethnicity-sex-primary-language-and-disability-status.

The six item set of questions used on ACS and other major surveys to gauge disability is the data standard for survey questions on disability. Note the age thresholds for survey participants for the different disability questions.

#### Data Standard for Disability Status

1.     Are you deaf or do you have serious difficulty hearing?
2.     Are you blind or do you have serious difficulty seeing, even when wearing glasses?
3.     Because of a physical, mental, or emotional condition, do you have serious difficulty concentrating, remembering, or making decisions? (5 years old or older)
4.     Do you have serious difficulty walking or climbing stairs? (5 years old or older)
5.     Do you have difficulty dressing or bathing? (5 years old or older)
6.     Because of a physical, mental, or emotional condition, do you have difficulty doing errands alone such as visiting a doctor’s office or shopping? (15 years old or older)"""





* . ^short = "US Public Health Disability Status"
* code 1..1 MS
* code from DisabilityStatusAssessment (required)
* code ^short = "Disability status"
* code ^binding.description = "Disability Status"
* subject 1.. MS
* subject only Reference(USPublicHealthPatient)
* value[x] 1.. MS
* value[x] only boolean