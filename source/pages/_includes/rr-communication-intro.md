{% assign id = {{include.id}} %}
source file: source/pages/\_includes/{{id}}-intro.md

**ECR Profile: {{site.data.structuredefinitions.[id].name}}**

**Scope and Usage**

{{site.data.structuredefinitions.[id].description}}


**Additional Profile specific implementation guidance:**

The [Mappings tab](eicr-composition-map.html) above provides the mappings from the RR Data Elements to this profile as well to the *HL7 CDA® R2 Implementation Guide: Reportability Response, Release 1 STU Release 1.0 - US Realm*.

Figure 1 is a graph of a generic scenario using the RR Communication Profile resource to show the linkages and relationships to the other FHIR core resources.  ( created using [ClinFHIR](http://clinfhir.com/) Scenario Builder)

{% include img.html img="rr-comm-graph.png" caption="Figure 1: Reportability Response Communication Graph" %}


#### Examples

- [Example-1](Communication-rr-example-1.html)
- [Example-2](Communication-rr-example-2.html)
- [Example-3](Communication-rr-example-3.html)
- [Example-4](Communication-rr-example-4.html)

---
