Invariant: epd-1
Description: "The code value of the namedEventType SHALL be the same as the name element"
* severity = #error
* expression = "name.supersetOf(extension('http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension').value.coding.code)"
* xpath = "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"name\")])"