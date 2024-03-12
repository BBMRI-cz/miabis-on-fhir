# MIABIS on FHIR

FHIR representation of MIABIS

## Overview
This repository provides FHIR profile for MIABIS (Minimum Information About BIobank data Sharing) specification. This repository works with [SUSHI(SUSHI Unshortens Short Hand Inputs)](https://github.com/FHIR/sushi), which acts as an interperter for [FSH(FHIR Shorthand)](https://hl7.org/fhir/uv/shorthand/reference.html). This allows to write FHIR profile specifications with FSH, which provides simple creation of FHIR profiles. These profiles are then uploaded to the [Simplifier](https://simplifier.net/). 

## Usage

Files which contain source code for FHIR profiles are Located inside folder [MiabisOnFHIR/input/fsh/](https://github.com/BBMRI-cz/miabis-on-fhir/tree/fsh_implementation/MiabisOnFHIR/input/fsh). In order to generate all the necessary JSON files which are then uploaded to the Simplifier, user needs to have SUSHI installed, for instalation look [here](https://github.com/FHIR/sushi?tab=readme-ov-file#installation-for-sushi-users). Then following steps are required:

1. open up terminal inside this folder
2. move to MiabisOnFHIR folder : ```cd MiabisOnFHIR```
3. use sushi to generate JSON files from provided files inside the fsh folder. ```sushi build```
4. if the build was successfull, generated files are located inside the `MiabisOnFHIR/fsh-generated/` folder.

