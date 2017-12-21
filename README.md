# case-reporting

Authors:

- Sarah Gaunt
- Rick Geimer
- Eric Haas
- John Loonsk
- Laura Conn

This project will determine and document a core, "Population/Public Health Case" based on the FHIR standard for use in reporting from Electronic Health Records (EHR) to health departments and a "Reportability Response Report" from health departments to EHRs.

This repository consists of:

- Source material
  - FHIR Conformance Resources (StructureDefinitions, CodeSystem, ValueSet, etc)
  - Examples
  - Markdown and HTML files which provide the context and guidance
  - Definitions file for configuring the publication tooling
  - bash scripts for publication of the IG using the [IG-Publisher tool](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)


### Rendered IG-Template at:

http://build.fhir.org/ig/HL7/case-reporting/index.html

*Note: a build takes 2-3 minutes to complete. You should see a notification at https://chat.fhir.org/#narrow/stream/committers/topic/ig-build.

## After the build is complete, you can...

### Find your rendered IG automatically available at

http://build.fhir.org/ig/HL7/case-reporting/index.html

### Find debugging info about the build

For a build log, see:
http://build.fhir.org/ig/hl7/case-reporting/build.log

#### Issues logged at 

https://github.com/HL7/case-reporting/issues


## Setup instructions

See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.
<!--
In order to create and publish this implementation guide using the IG-Publisher, other modules are needed which contains the templates and static html files. You will also need to import these modules

- [IG-Template](https://github.com/Healthedata1/IG-Template): a module containing all the static template and pages and build files for FHIR IG Publishing
-->
- If using the bash scripts `publish2.sh` you will also need the file. [IG-FileBuilder](https://github.com/Healthedata1/FHIR-IGPub-filebuilder): A python 3.5 script that will create the ig.json and ig.xml file based on the content in the `resources` and `example` directories and the `definitions.csv`.  See the inline comments for how to use and note the required python libraries you will need to run the script.

#### To run the ig-publisher from directly from the command line:

1. run the command line from this cloned (source) directory:

      java -jar ${path1}org.hl7.fhir.igpublisher.jar -ig ig.json -watch

where:
- ${path1} = relative or absolute path to the jar file


####  To run the igpublisher using the bash scripts (todo create bat files)

- update the path and title in the script to local names and paths.  The scripts run from the source directory.
- If using the bash scripts:  `publish2.sh` the relative locations of the two modules above need to updated in The `definitions.csv` file.
- To update the ig.json and ig.xml files using the IG-Filebuilder prior to running the ig publisher

       bash publish2.sh

- To run the ig publisher


       bash publish.sh

Some screenshots....

Some screenshots....
