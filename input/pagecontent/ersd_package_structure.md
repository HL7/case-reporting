### eRSD Package Structure

This topic describes the structure of an eRSD specification package as it is distributed, and how to navigate it. It is intended for implementers writing code that parses, validates or extracts content from an eRSD package. The [eRSD Transaction and Profiles](ersd_transaction_and_profiles.html) topic describes the conformance requirements for the resources themselves; this topic describes how those resources are arranged and how they refer to one another.

The structure described here is that of the specification currently distributed in production. Canonical URLs shown are the production URLs rather than the example URLs used elsewhere in this guide.

#### Layers

An eRSD package is a Bundle containing a small number of conformance resources and a large number of value sets, arranged in five conceptual layers. Each layer references the next.

| Layer | Resource | Canonical URL | Role |
| --- | --- | --- | --- |
| 0 | `Bundle` | none — a transport wrapper | Container for the release, with a `type` of `collection` |
| 1 | `Library` | `http://ersd.aimsplatform.org/fhir/Library/ersd-specification` | The specification library; the entry point to the package |
| 2a | `PlanDefinition` | `http://ersd.aimsplatform.org/fhir/PlanDefinition/us-ecr-specification` | The reporting workflow, its timing and its triggering logic |
| 2b | `Library` | `http://ersd.aimsplatform.org/fhir/Library/rctc` | The RCTC library; an index of the grouping value sets |
| 3 | `ValueSet` | `http://ersd.aimsplatform.org/fhir/ValueSet/{code}` | Grouping value sets, one per category of triggering information |
| 4 | `ValueSet` | `http://cts.nlm.nih.gov/fhir/ValueSet/...` | Leaf value sets, holding the trigger codes themselves |

#### Navigating the Package

**Start from the specification library, located by canonical URL.** The specification library at layer 1 is the entry point: its `relatedArtifact` entries lead to everything else in the package. Locate it by matching on its canonical URL. Do not rely on the position of resources within the Bundle; the order of entries is not part of the specification and should not be depended upon.

**Distinguish the two libraries by canonical URL.** A package contains two `Library` resources, and both have a `type` of `asset-collection`. They are told apart by their canonical URL, not by their type or their position: the specification library ends in `/Library/ersd-specification`, and the RCTC library ends in `/Library/rctc`.

**Use `composed-of` to traverse and `depends-on` to check membership.** The specification library carries `relatedArtifact` entries of both types. Entries of type `composed-of` identify its direct components — the PlanDefinition and the RCTC library. Entries of type `depends-on` additionally cover everything those components depend upon in turn, which makes them a convenient flat list for answering whether a given artifact belongs to the release, but not a way to understand how the artifacts relate to one another.

**Resolve versioned references on both URL and version.** References between artifacts in the package are generally version-pinned, taking the form `http://ersd.aimsplatform.org/fhir/ValueSet/dxtc|3.2.0`. Where a version is present it is part of the reference: resolve on the URL *and* the version, and do not substitute a different version that happens to be present in the package. Where no version is present, match on the URL alone.

**Resolve groupers to leaves through `compose.include.valueSet`.** A grouping value set does not enumerate codes directly. It references leaf value sets through `compose.include.valueSet`, and the trigger codes are found in the leaf, in `compose.include.concept.code`, with the code system given by `compose.include.system` on the enclosing element. To enumerate the trigger codes for a category, resolve each of the grouper's referenced leaves and collect their concepts.

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

An eRSD package is dominated by value sets, and implementations should be prepared for that. The release distributed at the time of writing contains 1,591 Bundle entries: two libraries, one PlanDefinition, and 1,588 value sets. Of those value sets, nine are grouping value sets and the remainder are leaves.

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
