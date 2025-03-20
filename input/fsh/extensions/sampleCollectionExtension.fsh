Extension: SampleCollectionExtension
Id: miabis-sample-collection-extension
Title: "Sample Collection"
Description: "Allows linking a Sample to a Sample Collection using an identifier instead of a direct FHIR reference."
Context: Specimen

* valueIdentifier 1..1
* valueIdentifier ^short = "Identifier of the referenced resource"
* valueIdentifier ^definition = "The identifier of the resource being referenced."
