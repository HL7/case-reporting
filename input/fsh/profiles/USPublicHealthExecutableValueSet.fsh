Profile: USPublicHealthExecutableValueSet
Parent: USPublicHealthValueSet
Id: us-ph-executable-valueset
Title: "US Public Health Executable ValueSet"
Description: "Defines an executable value set as one that SHALL have an expansion included, as well as a usage warning indicating the expansion is a point-in-time snapshot and must be maintained over time for production usage."
* ^version = "0.1.0"

* ^date = "2020-10-26T00:00:00.000Z"



* . ^short = "US Public Health Executable ValueSet"
* extension contains USPublicHealthUsageWarningExtension named usageWarning 1..1 MS
* extension[usageWarning].value[x] 1..1 MS
* extension[usageWarning].value[x] only string
* extension[usageWarning].value[x] = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion." (exactly)
* expansion 1..1 MS
* expansion.parameter MS
* expansion.contains MS