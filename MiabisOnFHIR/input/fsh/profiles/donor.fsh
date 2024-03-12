Profile: Donor
Parent: Patient
Id: miabis-sample-donor
Title: "Sample Donor" 
Description: "Sample donor is a person who is a source of either a biological material or a digital representation of a biological entity such as an image."

* identifier ^definition = "Sample donor ID. Unique ID code of the sample donor within the sample collection/biobank"
* identifier MS
* gender ^definition = "Biological sex of the sample donor."
* gender only code 
* gender from SexVS 
* gender 1..1
* extension contains DatasetTypeExtension named datasetType 0.. 

* extension[datasetType] ^definition = "The data categories from which data are available or can be linked to the sample donor. Can be several values"

* birthDate 0..1
* birthDate ^definition = " Date of birth is required when Event date in Event resource is used, otherwise partial date, as in birth year, can be used"
