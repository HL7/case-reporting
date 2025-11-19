This document describes support for both default and site or program-specific data requirement FHIR Query specification.

### Overview

  eRSD PlanDefinition actions can contain input data requirements. Implementing systems may find these useful for understanding what the data requirements are for a given program. These input data requirements can include a default FHIR Query pattern for retrieval of their respective data. When included, the query pattern will be attached to the input via the "cqf-fhirQueryPattern" extension. This gives implementing systems a default query for use in retrieval of the data. It may be the case, however, that for various reasons - implementation constraints, optimization, etc. - an implementing system will want to override those default queries and define and leverage a custom query of their own design. This can be accomplished by defining the queries in a site and/or program-specific configuration file that the implementing system is aware of, checks and uses in leiu of the default query provided as part of the eRSD PlanDefinition.

### Default Query Example
Below is an example of a PlanDefinition action's input property with a default FHIR Query pattern specified in the "cqf-fhirQueryPattern" extension:
```xml
<input id="conditions">
    <extension url="http://hl7.org/fhir/StructureDefinition/cqf-fhirQueryPattern">
        <valueString value="Condition?code:in=http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example&patient=Patient/{{context.patientId}}" />
    </extension>
    <type value="Condition"/>
    <codeFilter>
        <path value="code"/>
        <valueSet value="http://hl7.org/fhir/us/ecr/ValueSet/valueset-diagnosis-problem-triggers-example"/>
    </codeFilter>
</input>
```

### Overriding the Default Queries
It may be the case that the default queries are not ideal for an implementing system. For various reasons, like implementation constraints, optimization, etc., an implementing system might want to override the default queries provided in the eRSD PlanDefinition and define and leverage custom queries of their own design. This can be accomplished by defining the queries in a site and/or program-specific configuration that the implementing system is aware of, checks and uses in leiu of the default queries that are provided as part of the eRSD PlanDefinition.