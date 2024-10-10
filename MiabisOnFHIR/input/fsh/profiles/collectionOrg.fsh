Profile: CollectionOrganization
Parent: Organization
Id: miabis-collection-organization
Title: "Collection Organization"
Description: "Collection Organization represent a formal part of a organization, like ist name, contact information, publications, etc."

* identifier 1..1 MS
* identifier ^short = "ID of the collection."
* name 1..1 MS
* name ^short = "Name of the collection (preferably in English)."
* alias 0..1 MS
* alias ^short = "Short name in use for the collection. If applicable."
* telecom 0..1 MS
* telecom ^short = "Complete http-address for the collection."
* telecom.system = #url
* telecom.value 0..1 MS
* telecom.value ^short = "URL of the collection."

* contact.name.family 1..1 MS
* contact.name.given 1..* MS
* contact.telecom 1..* 
* active 0..1 MS 
* active ^short = "The state of the collection functions."
* active ^definition = "The state of the collection functions."

* address 1..1 MS
* address ^short = "Address of the collection."
* address.country 1..1 MS
* address.country ^short = "Country of the collection."


* partOf 1..1 MS 
* partOf only Reference(Biobank)
* partOf ^short = "The organization that the collection is part of."



* extension contains 
    CollectionDatasetTypeExtension named datasetType 0..* MS and
    SampleSourceExtension named sampleSource 0..1 MS and
    SampleCollectionSettingExtension named sampleCollectionSetting 0..* MS and
    CollectionDesignExtension named collectionDesign 0..* MS and
    UseAndAccessConditionsExtension named useAndAccessConditions 0..* MS and
    PublicationsExtension named publications 0..* MS and
    OrganizationDescriptionExtension named description 1..1 MS 


* extension[datasetType] ^short = "Types of datasets (groups of related data) obtained or otherwise derived from donors or their specimens."
* extension[sampleSource] ^short = "The source from which the samples were collected or isolated."
* extension[sampleCollectionSetting] ^short = "The context in which the sample collection was/is conducted."
* extension[collectionDesign] ^short = "The overall design of the collection that explains how the collection was/is built up."
* extension[useAndAccessConditions] ^short = "The conditions that may change the availability of the samples/data in the collection."
* extension[publications] ^short = "key publications produced in the collection (provide DOI, if possible)."
* extension[description] ^short = "Description of the collection in English."