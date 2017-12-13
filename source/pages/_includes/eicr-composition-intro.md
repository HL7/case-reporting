{% assign id = {{include.id}} %}
source file: source/pages/\_includes/{{id}}-intro.md

**ECR Profile: {{site.data.structuredefinitions.[id].name}}**

**Scope and Usage**

{{site.data.structuredefinitions.[id].description}}


**Additional Profile specific implementation guidance:**

The [Mappings tab](eicr-composition-custom-mappings.html) above provides the mappings from the eICR Data Elements to this profile as well to the *HL7 CDA® R2 Implementation Guide: Public Health Case Report, Release 2: The Electronic Initial Case Report (eICR), Release 1, STU Release 1.1*.

Figure 1 is a graph of a scenario using the PH Case Composition resource to show the linkages and relationships to the other FHIR core resources.  ( created using [ClinFHIR](http://clinfhir.com/) Scenario Builder)

{% include img.html img="phcase-comp-graph.png" caption="Figure 1: PH Case Composition Graph - Zika testing" %}

- None

#### Examples

| HL7 CDA® R2 eICR | PHCase Composition |PHCase Composition Bundle
|--------------------------------------------------------------------|---------------------------------|---|
|[EICR CCDA Example-1](eicr-example1.html)|[CR Composition Example 1](Composition-eicr-composition-genexample.html)|[PHCase Bundle Example 1](todo.html)|
|[EICR CCDA Example-2](eicr-example2.html)|[PHCase Example 2](todo.html)|[PHCase Bundle Example 2](todo.html)|
{: .grid}


---
