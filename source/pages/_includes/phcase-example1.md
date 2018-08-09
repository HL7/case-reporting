<p>
<a href="../assets/json/phcase-example1.json" download>download json file</a>
</p>

~~~ json

{
    "category": {
        "coding": [
            {
                "code": "40733004",
                "display": "Infective disorder",
                "system": "http://snomed.info/sct"
            }
        ],
        "text": "Infectious Diseases"
    },
    "clinicalFindings": [
        {
            "code": {
                "text": "not pregnant"
            }
        },
        {
            "code": {
                "coding": [
                    {
                        "code": "43025008",
                        "display": "Paroxysmal cough (finding)",
                        "system": "http://snomed.info/sct"
                    }
                ]
            }
        },
        {
            "code": {
                "text": "Persistent Cough REPORTED starting on 2016/10/05"
            }
        },
        {
            "code": {
                "text": "Dark stools"
            }
        },
        {
            "code": {
                "coding": [
                    {
                        "code": "27836007",
                        "display": "Pertussis",
                        "system": "http://snomed.info/sct"
                    }
                ]
            },
            "isReasonExtension": "TRUE"
        },
        {
            "isReasonExtension": "TRUE",
            "reference": {
                "display": "Bordetella pertussis [Presence] in Throat by Organism specific culture",
                "reference": "Observation/phcase-pert"
            }
        },
        {
            "reference": {
                "display": "Pneumococcal polysaccharide vaccine",
                "reference": "Immunization/phcase-pneumo"
            }
        }
    ],
    "code": {
        "coding": [
            {
                "code": "27836007",
                "display": "Pertussis (disorder)",
                "system": "http://snomed.info/sct"
            }
        ],
        "text": "Pertussis"
    },
    "effectivePeriod": {
        "start": "2017-11-07"
    },
    "id": "phcase-1",
    "identifier": [
        {
            "system": "https://healthauthoritywest.com/case-identifier",
            "type": {
                "coding": [
                    {
                        "code": "case-identifier",
                        "display": "Case Identifier",
                        "system": "http://hl7.org/fhir/us/ecr/CodeSystem/identifier-type"
                    }
                ]
            },
            "value": "CS12346"
        }
    ],
    "jurisdiction": {
        "display": "Health Authority West",
        "reference": "Organization/ecr-organization-health-authority-west"
    },
    "location": {
        "display": "Salem Medical Center,  4646 Brown Rd, Salem, MA  02368",
        "reference": "Location/phcase-smc"
    },
    "meta": {
        "lastUpdated": "2017-10-04T16:23:29.142584",
        "versionID": "ver2"
    },
    "note": [
        {
            "text": "This is an example using the draft Case Resource",
            "time": "2017-10-4"
        }
    ],
    "occupationCode": [
        {
            "text": "Centers for Disease Control 1, Peachtree St South Atlanta, GA, 404-564-7865  Since JAN 1, 1993"
        }
    ],
    "orderedDiagnostics": [
        {
            "isReasonExtension": "TRUE",
            "reference": {
                "display": "Zika virus envelope (E) gene [Presence] in Serum by Probe and target amplification method",
                "reference": "ProcedureRequest/phcase-zika"
            }
        }
    ],
    "reporter": {
        "display": "Henry Seven, M.D.",
        "reference": "PractitionerRole/phcase-mc"
    },
    "resourceType": "PHCase",
    "status": "in-progress",
    "subject": {
        "display": "Eve Everywoman",
        "reference": "Patient/phcase-js"
    },
    "travelHistory": [
        {
            "date": {
                "end": "2007",
                "start": "1999"
            },
            "locationCode": {
                "text": "1999 to 2007 Spent 8 years in the UK during the BSE outbreak,  In the 3 weeks before NOV 9, 2016 "
            }
        },
        {
            "date": {
                "end": "2016-10-30",
                "start": "2106-04-29"
            },
            "locationCode": {
                "coding": [
                    {
                        "code": "BRA",
                        "display": "Brazil",
                        "system": "urn:iso:std:iso:3166"
                    }
                ],
                "text": " Brazil"
            }
        },
        {
            "date": {
                "end": "2016-06-13",
                "start": "2016-7-05"
            },
            "locationReference": {
                "display": "Nadi, FJ",
                "reference": "Location/phcase-fj"
            }
        }
    ],
    "treatments": [
        {
            "display": "Azithromycin 500 MG Oral Tablet",
            "reference": "MedicationStatement/phcase-azithro"
        }
    ]
}
~~~
