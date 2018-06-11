# case-reporting

Authors:

- John Loonsk
- Laura Conn
- Sarah Gaunt
- Eric Haas
- Rick Geimer

This project will determine and document a core, "Population/Public Health Case" based on the FHIR standard for use in reporting from Electronic Health Records (EHR) to health departments and a "Reportability Response Report" from health departments to EHRs.

This repository consists of:

- Source material
  - FHIR Conformance Resources (StructureDefinitions, CodeSystem, ValueSet, etc)
  - Examples
  - Markdown and HTML files which provide the context and guidance
  - Definitions file for configuring the publication tooling
  - bash scripts for publication of the IG using the [IG-Publisher tool](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)


## After a commit the IG is automatically rendered at:

http://build.fhir.org/ig/HL7/case-reporting/index.html

*Note: a build takes 2-3 minutes to complete. You should see a notification at https://chat.fhir.org/#narrow/stream/committers/topic/ig-build.

### Find debugging info about the build

For a build log, see:
http://build.fhir.org/ig/HL7/case-reporting/build.log

#### Issues logged at

https://github.com/HL7/case-reporting/issues


## Setup instructions

See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

- [IG-Template2](https://github.com/Healthedata1/IG-Template2) describes the directory structure and general workflow for running the igpublisher.

The `source` directory contains all the new and edited content for creating an IG. This is include pages,resource and examples , and custom navigation and logos, images and even stylesheets. The `framework` directory and several template files located in the root directory ( for example `sd.html`) hold the static content for IG and they don't need to be changed to produce an IG. If you want to customize your IG then you may have to edit these files adn you are on your own. The published output is in the `output` directory which is needed if you are using the ig autopublisher as we are here.

The directory tree for this repo:

~~~
.
├── dependencies
│   ├── ccdafhir
│   ├── uscore
│   └── uscore-ballot
├── output
│   ├── assets
│   │   ├── css
│   │   ├── fonts
│   │   ├── ico
│   │   ├── images
│   │   ├── js
│   │   └── json
│   └── page_template_library
├── framework
│   ├── _includes
│   ├── _layouts
│   └── assets
│       ├── css
│       ├── fonts
│       ├── ico
│       ├── images
│       └── js
├── generated_output
│   ├── qa
│   ├── temp
│   │   ├── _data
│   │   ├── _includes
│   │   ├── _layouts
│   │   ├── assets
│   │   │   ├── css
│   │   │   ├── fonts
│   │   │   ├── ico
│   │   │   ├── images
│   │   │   ├── js
│   │   │   └── json
│   │   ├── data
│   │   └── page_template_library
│   └── txCache
├── my_notes
│   └── notes
│       ├── RR-ccda-draft
│       │   ├── schematron
│       │   ├── transform
│       │   └── xml
│       │       ├── html
│       │       └── samples
│       └── rr-batchbundle
└── source
    ├── examples
    │   └── drafts
    ├── page_template_library
    ├── pages
    │   ├── _includes
    │   └── assets
    │       ├── css
    │       ├── images
    │       └── json
    ├── resources
    │   └── drafts
    └── worddocs

60 directories

~~~
