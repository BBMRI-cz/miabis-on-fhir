Instance: SampleCollectionIdSearch
InstanceOf: SearchParameter
Title: "Search by Sample Collection ID"
Description: "Allows searching for specimens by the sample collection ID stored in the miabis-sample-collection-extension."
Usage: #definition

* url = "http://example.org/fhir/SearchParameter/Specimen-sample-collection-id"
* version = "1.0.0"
* name = "SampleCollectionIdSearch"
* status = #active
* experimental = false
* code = #sample-collection-id
* base = #Specimen
* type = #token
* expression = "Specimen.extension('https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-extension').value as Identifier"
* xpathUsage = #normal
* description = "Allows searching for specimens by the sample collection ID stored in the miabis-sample-collection-extension."