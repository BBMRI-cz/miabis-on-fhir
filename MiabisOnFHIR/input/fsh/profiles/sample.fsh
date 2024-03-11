Profile: Sample
Parent: Specimen
Id: miabis-sample
Title: "Sample"
Description: "Sample is a portion or quantity of biological material that is collected from a sample donor, or a digital representation of a biological entity of the sample donor, such as an image."

//  TODO: missing diagnosis - the profile does not support it, right now added as a extension, but should be asked what to do with it 

* accessionIdentifier ^definition = "Unique ID of the sample within a sample collection, often represented by the sample barcode; text identifier. The Sample ID is meant for sharing."
* accessionIdentifier 1..1 
* collection.collectedDateTime ^short = "Sample creation date and time"
* collection.collectedDateTime ^definition =  "The date and time the sample was created in the form previously described in detailedSampleType. Date/time format must be ISO8601-compliant or partial, for example, YYYY"
* collection.collectedDateTime 0..1
* type ^short = "Sample type"
* type ^definition = "The type of biological specimen intended for testing diagnostics, disease propagation, treatment, or for research purposes."
* type from materialTypeVS
* type 1..1
* collection.bodySite.coding obeys specimenOntologyInvariant
* collection.bodySite.coding.system ^definition = "Name of ontology used for describing the anatomical source of the sample material, for example, ICD-O-3 topography code"
* collection.bodySite.coding.version ^definition = "Version of the ontology used for describing the anatomical source of the sample material"
* collection.bodySite.coding.code ^definition = "Anatomical site code from the selected anatomical site ontology version"
* collection.bodySite.coding.display ^definition = "Description from the selected anatomical site ontology code"
* extension contains SampleStorageTemperatureExtension named storageTemperature 0..1 and
    SampleDiagnosisExtension named diagnosis 0..
