Profile: ECRMessageHeader
Parent: USPublicHealthMessageHeader
Id: ecr-messageheader
Title: "eCR MessageHeader"
Description: "This MessageHeader profile represents metadata to support the eCR messaging paradigm."
* source.name MS
* source.contact MS
* focus 1..1 MS
* focus only Reference(EICRDocumentBundle or RRDocumentBundle)