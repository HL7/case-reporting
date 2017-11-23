
/\_include/eicr-ccda-on-fhir-intro.md  file}}


<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

#### Introduction

##### Mandatory Data Elements and Terminology

**must have:**

1. blah
1. blah
1. blah

##### Mapping of CSTE EICR Data elements to CCDA and FHIR

Introductory text here.......

{% assign id = {{include.id}} %}

- {{site.data.structuredefinitions.[id].name}}

{% include eicr-ccda-on-fhir-custom-mapping.md %}
<br />

---


##### Additional Profile specific implementation guidance

##### Graph

Figure 1 is a graph of a scenario using the PH Case Composition resource to show the linkages and relationships to the other FHIR core resources.  ( created using [ClinFHIR](http://clinfhir.com/) Scenario Builder)

{% include img.html img="phcase-comp-graph.png" caption="Figure 1: PH Case Composition Graph - Zika testing" %}

##### Examples

| HL7 CDA® R2 eICR | PHCase Composition |PHCase Composition Bundle
|--------------------------------------------------------------------|---------------------------------|---|
|[EICR CCDA Example-1](eicr-example1.html)|[CR Composition Example 1](Composition-eicr-ccda-on-fhir-genexample.html)|[PHCase Bundle Example 1](#.html)|
|[EICR CCDA Example-2](eicr-example2.html)|[PHCase Example 2](#.html)|[PHCase Bundle Example 2](#.html)|
{: .grid}
