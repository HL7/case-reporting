### eRSD Package Structure

This topic describes the structure of an eRSD specification package and how to navigate it. It is intended for implementers writing code that parses, validates or extracts content from an eRSD package. The [eRSD Transaction and Profiles](ersd_transaction_and_profiles.html) topic describes the conformance requirements for the resources themselves; this topic describes how those resources are arranged and how they refer to one another.

The structure described here illustrates a conformant reporting specification. Canonical URLs shown are representative examples and use the established canonical patterns rather than the example URLs used elsewhere in this guide.

#### Layers

An eRSD package is a Bundle containing a small number of conformance resources and a large number of value sets, arranged in five conceptual layers. Each layer references the next.

| Layer | Resource | Canonical URL | Role |
| --- | --- | --- | --- |
| 0 | `Bundle` | none — a transport wrapper | Container for the release. A package distributed as a file is a `collection`; a package obtained from a server operation may use another type |
| 1 | `Library` | `http://ersd.aimsplatform.org/fhir/Library/ersd-specification` | The specification library; the entry point to the package |
| 2a | `PlanDefinition` | `http://ersd.aimsplatform.org/fhir/PlanDefinition/us-ecr-specification` | The reporting workflow, its timing and its triggering logic |
| 2b | `Library` | `http://ersd.aimsplatform.org/fhir/Library/rctc` | The RCTC library; an index of the grouping value sets |
| 3 | `ValueSet` | `http://ersd.aimsplatform.org/fhir/ValueSet/{code}` | Grouping value sets, one per category of triggering information |
| 4 | `ValueSet` | most under `http://cts.nlm.nih.gov/fhir/ValueSet/`, some under the eRSD base | Leaf value sets, holding the trigger codes themselves |

#### Navigating the Package

**Start from the specification library, located by canonical URL.** The specification library at layer 1 is the entry point to the package. Locate it by matching on its canonical URL. Do not rely on the position of resources within the Bundle; the order of entries is not part of the specification and should not be depended upon. Its `relatedArtifact` entries are the route to the rest of the package, in the two ways described below.

**Distinguish the libraries by canonical URL.** A specification package contains two `Library` resources, and both have a `type` of `asset-collection`. (Other eRSD packages may contain more; a supplemental package carries additional libraries of its own.) They are told apart by their canonical URL, not by their type or their position: the specification library ends in `/Library/ersd-specification`, and the RCTC library ends in `/Library/rctc`.

**Use `composed-of` to traverse and `depends-on` to check membership.** The specification library carries `relatedArtifact` entries of both types. Entries of type `composed-of` identify at least its direct components — the PlanDefinition and the RCTC library. Entries of type `depends-on` additionally cover everything those components depend upon in turn, which makes them a convenient flat list for answering whether a given artifact belongs to the release, but not a way to understand how the artifacts relate to one another.

**Resolve versioned references on both URL and version.** References between artifacts in the package are generally version-pinned, taking the form `http://ersd.aimsplatform.org/fhir/ValueSet/dxtc|3.2.0`. Where a version is present it is part of the reference: resolve on the URL *and* the version, and do not substitute a different version that happens to be present in the package. Where no version is present, match on the URL alone.

**Resolve grouper definitions through `compose.include.valueSet`,** or use their persisted expansions. A grouper value set does not enumerate codes in its definition; its `compose.include` elements reference the leaf value sets that make up the group. The grouper is also distributed with a persisted expansion containing the resulting codes. A consumer that does not intend to re-expand can therefore obtain the trigger codes directly from the grouper's `expansion.contains`, just as it can from the persisted expansion of a leaf value set. The grouper's persisted expansion and the persisted expansions of its referenced leaves are both authoritative representations of the codes for the distributed package. If following the definitions rather than using the expansion, resolve each value set referenced through `compose.include.valueSet` and collect the codes from the referenced leaves, either from their `compose.include.concept` definitions or their persisted `expansion.contains`. Within a leaf, each `compose.include` element carries a `system` naming the code system, and that `system` applies to every concept in that include element.

**Do not use the canonical URL to tell a grouper from a leaf.** Most leaf value sets sit under the terminology server's base URL and the grouping value sets under the eRSD base, but this does not hold in general: provisional value sets are published under the eRSD base and are leaves. The reliable test is the content of `compose.include` — a grouper references other value sets through `valueSet`, a leaf enumerates codes through `concept`.

#### Profiles by Layer

The resources in a package do not all conform to the same profiles, and the difference is easiest to see by layer.

| Layer | Conforms to |
| --- | --- |
| Specification library | `us-ph-specification-library` and the CRMI manifest library profile |
| PlanDefinition | `ersd-plandefinition` and `us-ph-plandefinition` |
| RCTC library | `us-ph-triggering-valueset-library` |
| Grouping value sets | `us-ph-triggering-valueset` |
| Leaf value sets | `shareablevalueset`, together with the CQF Measures computable and publishable value set profiles |

#### Scale

An eRSD package is dominated by value sets, and implementations should be prepared for that. Release 3.2.0 contains 1,591 Bundle entries: two libraries, one PlanDefinition, and 1,588 value sets, of which nine are grouping value sets and the remainder are leaves. These figures describe one release and will change with each; they are given to indicate the order of magnitude an implementation should expect rather than as a fixed expectation.

#### Specification Library Metadata

Beyond its `relatedArtifact` entries, the specification library carries the metadata that identifies the release:

* `status` distinguishes a released specification, which is `active`, from one still being authored, which is `draft`
* `version` identifies the release, and `approvalDate` records that it was approved, which is a prerequisite for release
* `effectivePeriod` gives the date from which the specification is intended to be in use, which may be later than the date it was published
* `useContext` identifies the specification as being for reporting, and records the kind of specification it is

The CRMI extensions the library also carries, including the expansion parameters and the release label, are described in the [eRSD Transaction and Profiles](ersd_transaction_and_profiles.html) topic.

#### Distribution

This implementation guide is not prescriptive about how an eRSD package reaches an implementing system; the requirements are on the contents of the package, not its transport. The following describes how the specification is distributed in practice, and is informative only.

The specification is published as a Bundle in both JSON and XML, made available for download and through a polling API that an implementing system can check for new releases. A release is accompanied by a description of what changed, and by the trigger code workbook and change log that the release was generated from.

#### Program-Specific Specifications

The structure described above is not unique to a single specification. A public health program with its own reporting requirements may be served by its own eRSD specification, distributed as a separate package with the same layering and the same conventions, but with its own canonical URLs for the specification library, the PlanDefinition, the trigger code library and the grouping value sets.

Such a specification is a distinct package and is versioned independently. An implementing system consuming more than one should treat them as separate specifications rather than merging their contents, since the canonical URLs, and therefore the version-pinned references within each package, do not overlap.
