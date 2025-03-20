[![CI](https://github.com/BBMRI-cz/miabis-on-fhir/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/BBMRI-cz/miabis-on-fhir/actions/workflows/ci.yml)
# MIABIS on FHIR

FHIR representation of[ MIABIS (Minimum Information About BIobank Data Sharing)](https://miabis.bbmri-eric.eu).
## Goal
The Goal of this project is to provide guidance and all necessary information for adopting the MIABIS on FHIR profiles.

## Availability
The implementation guide is available through GitHub Pages [here](https://bbmri-cz.github.io/miabis-on-fhir/),
as well as on the [Simplifier](https://simplifier.net/miabis).
## State
MIABIS on FHIR has been marked active and ready for production use with its **1.0.0 release**.
It is currently being adopted by the [BBMRI-ERIC Federated Search platform](https://www.bbmri-eric.eu/bbmri-sample-and-data-portal/).
A reference usage of the project can be found in an [ETL tool](https://github.com/BBMRI-cz/fhir-module)
used by BBMRI.cz.
> [!NOTE]  
> To help with adoption, we have developed a Python library which can be found [here](https://pypi.org/project/MIABIS-on-FHIR).
## Overview

This repository provides the source code for the MIABIS (Minimum Information About BIobank Data Sharing) on FHIR Implementation Guide
(IG).
It works with [SUSHI (SUSHI Unshortens Short Hand Inputs)](https://github.com/FHIR/sushi),
which serves as an interpreter for [FSH (FHIR Shorthand)](https://hl7.org/fhir/uv/shorthand/reference.html).
This allows the creation of FHIR profiles using FSH, which simplifies the process of developing and maintaining FHIR profiles.

## Usage

The source code for the FHIR profiles is located in the folder [Profiles](input/fsh/profiles).
To generate the necessary JSON files for uploading to Simplifier, the user needs to have **SUSHI** installed.
For installation instructions,
see [here](https://github.com/FHIR/sushi?tab=readme-ov-file#installation-for-sushi-users).
This project also has an automated CI pipeline
that publishes the Implementation Guide on.


## Build the IG
To build the Project, run the following command:
```bash
   sushi build
```

## Validate the IG
If the build is successful, the generated files will be located in the **_fsh-generated_** folder.
To validate the instances/examples based on this Implementation Guide (IG),
download the [FHIR Validator](https://github.com/hapifhir/org.hl7.fhir.core/releases).
To validate the example instances, move your generated *instance.json files to a separate folder and run the following command:

```bash
java -jar validator_cli.jar -ig {fsh_generated_resources} -version 4.0.1 -extension http://example/org/ -allow-example-urls true {instances}
```
## Running the Publisher
To build HTML content from the IG you need to run the Publisher.
> [!WARNING]  
> For the Publisher to work correctly, you need to have Java, Ruby and Jekyll installed.

The Publisher can be downloaded by simply running the provided script:
```shell
./_updatePublisher.sh
```
The page content can be generated using the following command:
```shell
java -jar input-cache/publisher.jar -ig ig.ini
```