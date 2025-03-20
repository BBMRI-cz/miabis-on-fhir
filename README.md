# MIABIS on FHIR

FHIR representation of MIABIS (Minimum Information About BIobank Data Sharing)

## Overview

This repository provides the source code for the MIABIS (Minimum Information About BIobank Data Sharing) on FHIR Implementation Guide
(IG).
It works with [SUSHI (SUSHI Unshortens Short Hand Inputs)](https://github.com/FHIR/sushi),
which serves as an interpreter for [FSH (FHIR Shorthand)](https://hl7.org/fhir/uv/shorthand/reference.html).
This allows the creation of FHIR profiles using FSH, which simplifies the process of developing and maintaining FHIR profiles.
These profiles are then uploaded to the [Simplifier](https://simplifier.net/).

## Usage

The source code for the FHIR profiles is located in the folder [Profiles](input/fsh/profiles).
To generate the necessary JSON files for uploading to Simplifier, the user needs to have **SUSHI** installed.
For installation instructions,
see [here](https://github.com/FHIR/sushi?tab=readme-ov-file#installation-for-sushi-users).
This project also has an automated CI pipeline
that publishes the Implementation Guide on https://bbmri-cz.github.io/miabis-on-fhir/.


## Build the IG
To build the Project, run the following command:
```bash
   sushi build
```

## Validate the IG
If the build is successful, the generated files will be located in the **_fsh-generated_** folder.
To validate the instances/examples based on this Implementation Guide (IG), download the FHIR Validator.
To validate the example instances, move your generated *instance.json files to a separate folder and run the following command:

```bash
java -jar validator_cli.jar -ig {fsh_generated_resources} -version 4.0.1 -extension http://example/org/ -allow-example-urls true {instances}
```
