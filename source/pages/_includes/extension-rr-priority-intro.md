

{% assign id = {{include.id}} %}
source file: source/pages/\_includes/{{id}}-intro.md

**ECR Extension: {{site.data.structuredefinitions.[id].name}}**



**Scope and Usage**

{{site.data.structuredefinitions.[id].description}}

**Context of Use**
{% assign context = {{site.data.structuredefinitions.[id].contexts}} %}
{% assign type = {{site.data.structuredefinitions.[id].contextType}} %}
{% assign basepath = {{site.data.structuredefinitions.[id].basepath}} %}
This extension is used on the {{context}} element(s).

