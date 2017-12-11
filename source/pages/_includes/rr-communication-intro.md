{% assign id = {{include.id}} %}
source file: source/pages/\_includes/{{id}}-intro.md

**ECR Profile: {{site.data.structuredefinitions.[id].name}}**

The official URL for this profile is: `{{site.data.structuredefinitions.[id].url}}`

**Scope and Usage**

{{site.data.structuredefinitions.[id].description}}


**Additional Profile specific implementation guidance:**

Figure 1 is a graph of a generic scenario using the RR Communication Profile resource to show the linkages and relationships to the other FHIR core resources.  ( created using [ClinFHIR](http://clinfhir.com/) Scenario Builder)

{% include img.html img="rr-comm-graph.png" caption="Figure 1: Reportability Response Communication Graph" %}


#### Examples

- [Example-1](Communication-rr-example-1.html)
- [Example-2](Communication-rr-example-2.html)
- [Example-3](Communication-rr-example-3.html)
- [Example-4](Communication-rr-example-4.html)
