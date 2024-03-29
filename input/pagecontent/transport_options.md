There are two supported transport options that can be used individually or in combination. This flexibility is needed to support point-to-point transport as well as transport through Health Information Exchanges and Health Information Networks.

### FHIR Messaging Option

One option for transmitting the content in this implementation guide is the use of FHIR Messaging. FHIR Messaging involves the use of a top-level FHIR Message bundle and then a small FHIR Messaging header. FHIR Messaging enables the movement of content through an information exchange intermediary and allows, but does not require, a store and forward exchange paradigm. The FHIR Message header includes the identity of the ultimate intended recipient and other information helpful for message exchange. All resources should be populated in the FHIR Message bundle because subsequent retrieval of resources back through an intermediary may not be enabled.

The following profiles have been defined for the FHIR Messaging Option:

#### Profiles
<ul>
  <li><a href="StructureDefinition-us-ph-reporting-bundle.html">US Public Health Reporting Bundle</a></li>
  <li><a href="StructureDefinition-ecr-messageheader.html">eCR MessageHeader</a> (further constrains <a href="StructureDefinition-us-ph-messageheader.html">US Public Health MessageHeader</a>)</li>
</ul>

The first resource in the <a href="StructureDefinition-us-ph-reporting-bundle.html">US Public Health Reporting Bundle</a> is the <a href="StructureDefinition-us-ph-messageheader.html">US Public Health MessageHeader</a>, which in the eCR case is the <a href="StructureDefinition-ecr-messageheader.html">eCR MessageHeader</a>. The focus of the <a href="StructureDefinition-ecr-messageheader.html">eCR MessageHeader</a> is either the <a href="StructureDefinition-eicr-document-bundle.html">eICR Document Bundle</a> or  <a href="StructureDefinition-rr-document-bundle.html">RR Document Bundle</a>.

The <a href="StructureDefinition-eicr-document-bundle.html">eICR Document Bundle</a> contains the <a href="StructureDefinition-eicr-composition.html">eICR Composition</a> and the <a href="StructureDefinition-rr-document-bundle.html">RR Document Bundle</a> contains the <a href="StructureDefinition-rr-composition.html">RR Composition</a>.

### Basic REST Option

The second option for transmitting the content in this implementation guide is described here as Basic REST. In this case, a point-to-point RESTful exchange is supported. If the immediate inclusion of all resource content must be ensured, then a top level bundle and insistence on their inclusion will be the responsibility of the transmitting server.

The following profiles have been defined for the RESTful Submit Option:

#### Profiles
<ul>
  <li><a href="StructureDefinition-eicr-document-bundle.html">eICR Document Bundle</a></li>
	<li><a href="StructureDefinition-rr-document-bundle.html">RR Document Bundle</a></li>
</ul>

The <a href="StructureDefinition-eicr-document-bundle.html">eICR Document Bundle</a> contains the <a href="StructureDefinition-eicr-composition.html">eICR Composition</a> and the <a href="StructureDefinition-rr-document-bundle.html">RR Document Bundle</a> contains the <a href="StructureDefinition-rr-composition.html">RR Composition</a>.
