## {{ page.title }}

<ul id="toc">


  <li><a href="balloters.html#notice-to-ballot-commenters" id="markdown-toc-notice-to-ballot-commenters">Notice to Ballot Commenters</a>    <ul>
      <li><a href="balloters.html#fhir-representations-of-two-existing-cda-document-standards" id="markdown-toc-fhir-representations-of-two-existing-cda-document-standards">1.  FHIR representations of two existing CDA document standards:</a></li>
      <li><a href="balloters.html#the-framing-of-technical-transactions-for-the-exchange-of-the-eicr-the-reportability-response-and-future-supplemental-reporting-information-in-the-milieu-of-supporting-the-following" id="markdown-toc-the-framing-of-technical-transactions-for-the-exchange-of-the-eicr-the-reportability-response-and-future-supplemental-reporting-information-in-the-milieu-of-supporting-the-following">2.  The framing of technical transactions for the exchange of the eICR, the Reportability Response, and future supplemental reporting information in the milieu of supporting the following:</a></li>
      <li><a href="balloters.html#fhir-representation-of-what-is-currently-a-non-standards-based-excel-spreadsheet-process-for-distributing-trigger-codes" id="markdown-toc-fhir-representation-of-what-is-currently-a-non-standards-based-excel-spreadsheet-process-for-distributing-trigger-codes">3.  FHIR representation of what is currently a non-standards based, Excel spreadsheet process for distributing trigger codes:</a></li>
      <li><a href="balloters.html#broader-standardization-of-the-triggering--decision-support-process-for-ecr" id="markdown-toc-broader-standardization-of-the-triggering--decision-support-process-for-ecr">4.  Broader standardization of the triggering / decision support process for eCR</a></li>
      <li><a href="balloters.html#the-timing-and-roll-out-of-board-fhir-ecr-standards-advancement" id="markdown-toc-the-timing-and-roll-out-of-board-fhir-ecr-standards-advancement">5.  The timing and roll-out of board FHIR eCR standards advancement</a></li>
      <li><a href="balloters.html#how-to-ballot" id="markdown-toc-how-to-ballot">How to Ballot</a></li>
    </ul>
  </li>

  <li><a href="index.html#electronic-case-reporting-ecr-implementation-guide" id="markdown-toc-electronic-case-reporting-ecr-implementation-guide">Home: electronic Case Reporting (eCR) Implementation Guide</a>    <ul>
    <li><a href="index.html#introduction" id="markdown-toc-introduction">Introduction</a></li>
    <li><a href="index.html#stakeholders" id="markdown-toc-stakeholders">Stakeholders</a></li>
  </ul>
</li>
 <!--start guidance -->

<li>General Guidance and Questions</li>

<ul id="toc">

  <li><a href="ecr-exchange.html#ecr-exchange-transactions" id="markdown-toc-ecr-exchange-transactions">eCR Exchange Transactions</a></li>
  <ul>

  </ul>

  <li><a href="triggering.html#triggering--decision-support" id="markdown-toc-triggering--decision-support">Triggering / Decision Support</a></li>
  <ul>

  </ul>

  <li><a href="fhir-timing.html#fhir-timing-and-roll-out" id="markdown-toc-fhir-timing-and-roll-out">FHIR Timing and Roll-Out</a></li>
  <ul>

  </ul>

</ul>

<!-- end guidance -->


  <li><a href="profile.html#profiles-defined-as-part-of-this-guide" id="markdown-toc-profiles-defined-as-part-of-this-guide">Profiles defined as part of this Guide</a>    <ul>
      <li><a href="profile.html#trigger-code-transaction" id="markdown-toc-trigger-code-transaction">Trigger Code Transaction</a></li>
      <li><a href="profile.html#eicr-transaction" id="markdown-toc-eicr-transaction">eICR Transaction</a>        <ul>
          <li><a href="profile.html#profiles" id="markdown-toc-profiles">Profiles</a></li>
          <li><a href="profile.html#extensions" id="markdown-toc-extensions">Extensions</a></li>
        </ul>
      </li>
      <li><a href="profile.html#reportability-response-transaction" id="markdown-toc-reportability-response-transaction">Reportability Response Transaction</a>        <ul>
          <li><a href="profile.html#profiles-1" id="markdown-toc-profiles-1">Profiles</a></li>
          <li><a href="profile.html#extensions-1" id="markdown-toc-extensions-1">Extensions</a></li>
        </ul>
      </li>
    </ul>
  </li>

  <li><a href="terminology.html#valuesets-and-codesystems-defined-as-part-of-this-implementation-guide" id="markdown-toc-valuesets-and-codesystems-defined-as-part-of-this-implementation-guide">ValueSets and CodeSystems defined as part of this Implementation Guide</a>    <ul>
      <li><a href="terminology.html#trigger-code-transaction" id="markdown-toc-trigger-code-transaction">Trigger Code Transaction</a>        <ul>
          <li><a href="terminology.html#value-sets" id="markdown-toc-value-sets">Value Sets</a></li>
          <li><a href="terminology.html#code-systems" id="markdown-toc-code-systems">Code Systems</a></li>
        </ul>
      </li>
      <li><a href="terminology.html#eicr-transaction" id="markdown-toc-eicr-transaction">eICR Transaction</a>        <ul>
          <li><a href="terminology.html#value-sets-1" id="markdown-toc-value-sets-1">Value Sets</a></li>
          <li><a href="terminology.html#code-systems-1" id="markdown-toc-code-systems-1">Code Systems</a></li>
        </ul>
      </li>
      <li><a href="terminology.html#reportability-response-transaction" id="markdown-toc-reportability-response-transaction">Reportability Response Transaction</a>        <ul>
          <li><a href="terminology.html#value-sets-2" id="markdown-toc-value-sets-2">Value Sets</a></li>
          <li><a href="terminology.html#code-systems-2" id="markdown-toc-code-systems-2">Code Systems</a></li>
        </ul>
      </li>
    </ul>
  </li>

  <li><a href="capstatements.html#capabilitystatements-defined-for-this-guide" id="markdown-toc-capabilitystatements-defined-for-this-guide">CapabilityStatements defined for this Guide</a>    <ul>
      <li><a href="capstatements.html#trigger-code-transaction" id="markdown-toc-trigger-code-transaction">Trigger Code Transaction</a>        <ul>
          <li><a href="capstatements.html#conformance-requirements-for-the-rctc-server" id="markdown-toc-conformance-requirements-for-the-rctc-server">Conformance requirements for the RCTC Server</a></li>
          <li><a href="capstatements.html#conformance-requirements-for-an-rctc-client" id="markdown-toc-conformance-requirements-for-an-rctc-client">Conformance requirements for an RCTC Client</a></li>
        </ul>
      </li>
      <li><a href="capstatements.html#eicr-transaction" id="markdown-toc-eicr-transaction">eICR Transaction</a></li>
      <li><a href="capstatements.html#reportability-response-transaction" id="markdown-toc-reportability-response-transaction">Reportability Response Transaction</a></li>
    </ul>
  </li>

  <li><a href="donwloads.html#downloads" id="markdown-toc-downloads">Downloads</a>    <ul>
      <li><a href="donwloads.html#validator-pack-and-definitions" id="markdown-toc-validator-pack-and-definitions">Validator Pack and Definitions</a></li>
      <li><a href="donwloads.html#schematrons" id="markdown-toc-schematrons">Schematrons</a></li>
      <li><a href="donwloads.html#examples" id="markdown-toc-examples">Examples</a></li>
    </ul>
  </li>

</ul>
