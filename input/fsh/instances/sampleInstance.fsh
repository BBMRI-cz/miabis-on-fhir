Instance: SampleInstance
InstanceOf: Sample
Usage: #example
Title: "SampleInstance"
Description: "Example instance of a Sample"
* id = "example"
* identifier.value = "sampleId"
* collection.collectedDateTime = "2011-04-05T13:00:00Z"
* type = DetailedSampleTypeCS#BuffyCoat
* subject = Reference(Patient/example)
* note.text = "This is a restriction of sample usage"
* processing.extension[storageTemperature].valueCodeableConcept = StorageTemperatureCS#RT
* extension[sampleCollection].valueIdentifier.value = "bbmri:exampleID"
* extension[sampleCollection].valueIdentifier.system = "https://directory.bbmri-eric.eu/"