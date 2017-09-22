#!/bin/bash
name="Case-Reporting"
path1=/Users/ehaas/Documents/FHIR/IG-Template2/
path2=/Users/ehaas/Downloads/
path3=/Users/ehaas/Documents/FHIR/IG-tools/
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo "================================================================="
sleep 1
git status
sleep 3
python3.5 ${path3}definitions.py
sleep 3
git status
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ${path1}ig.json -watch
