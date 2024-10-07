Instance: SampleInstance
InstanceOf: Sample
Usage: #example
Title: "SampleInstance"
Description: "example of a sample instance"

* identifier.value = "sampleId"
* collection.collectedDateTime = "2011-04-05T13:00:00Z"
* type = MaterialTypeCS#DNA
* subject = Reference(Patient/donorId)
* note.text = "This is a restriction of sample usage"
* processing.extension[storageTemperature].valueCodeableConcept = StorageTemperatureCS#RT
