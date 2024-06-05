Profile: Collection
Parent: Group
Id: miabis-collection
Title: "MiabisCollection"
Description: "Collection represents a set of samples and/or data items collected and/or derived in a common context and stored under a common stewardship and available for future research"

//  TODO: Acronym, Url,
* identifier 1..1 MS
* identifier ^short = "ID of the collection."
* name 1..1 MS
* name ^short = "Name of the collection (preferably in English)."

* type = #person
* active 0..1 MS
* active ^short = "The state of the collection functions."
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open

* characteristic contains 
    ageRange 1..1 MS and
    sex 1..* MS and
    storageTemperature 1..* MS and
    materialType 1..* MS and 
    diagnosis 1..* MS 

* characteristic[ageRange] ^short = "Age of youngest and oldest sample donor at the time of sample donation."
* characteristic[sex] ^short = "The sex of the individuals in the collection."
* characteristic[storageTemperature] ^short = "The long-term storage temperature at which the sample(s) are stored after preparation, based on SPREC v3."
* characteristic[materialType] ^short = "The biospecimen saved from a biological entity for propagation e.g. testing, diagnostics, treatment or research purposes."
* characteristic[diagnosis] ^short = "The diagnosis of the individuals in the collection."

* characteristic[ageRange].code from CharacteristicVS
* characteristic[ageRange].code.coding.code = CharacteristicCS#Age
* characteristic[ageRange].value[x] only Range

* characteristic[sex].code from CharacteristicVS
* characteristic[sex].code.coding.code = CharacteristicCS#Sex
* characteristic[sex].value[x] only CodeableConcept
* characteristic[sex].value[x] from SexVS

* characteristic[storageTemperature].code from CharacteristicVS
* characteristic[storageTemperature].code.coding.code = CharacteristicCS#StorageTemperature
* characteristic[storageTemperature].value[x] only CodeableConcept
* characteristic[storageTemperature].value[x] from StorageTemperatureVS

* characteristic[materialType].code from CharacteristicVS
* characteristic[materialType].code.coding.code = CharacteristicCS#MaterialType
* characteristic[materialType].value[x] only CodeableConcept
* characteristic[materialType].value[x] from MaterialTypeVS

* characteristic[diagnosis].code from CharacteristicVS
* characteristic[diagnosis].code.coding.code = CharacteristicCS#Diagnosis
* characteristic[diagnosis].value[x] only CodeableConcept
* characteristic[diagnosis].value[x] from http://hl7.org/fhir/ValueSet/icd-10

* managingEntity 1..1 MS
* managingEntity only Reference(ManagingPerson)
* managingEntity ^short = "The person or organization responsible for the collection and his contact information."

* extension contains 
    CollectionDatasetTypeExtension named datasetType 0..1 MS and
    SampleSourceExtension named sampleSource 0..1 MS and
    SampleCollectionSettingExtension named sampleCollectionSetting 0..1 MS and
    CollectionDesignExtension named collectionDesign 0..* MS and
    UseAndAccessConditionsExtension named useAndAccessConditions 0..* MS and
    NumberOfSubjectsExtension named numberOfSubjects 0..1 MS and
    InclusionCriteriaExtension named inclusionCriteria 0..* MS and
    PublicationsExtension named publications 0..* MS and
    CollectionDescriptionExtension named description 0..1 MS


* extension[datasetType] ^short = "Types of datasets (groups of related data) obtained or otherwise derived from donors or their specimens."
* extension[sampleSource] ^short = "The source from which the samples were collected or isolated."
* extension[sampleCollectionSetting] ^short = "The context in which the sample collection was/is conducted."
* extension[collectionDesign] ^short = "The overall design of the collection that explains how the collection was/is built up."
* extension[useAndAccessConditions] ^short = "The conditions that may change the availability of the samples/data in the collection."
* extension[numberOfSubjects] ^short = "Total number of subjects included in the collection."
* extension[inclusionCriteria] ^short = "Information on type of parameters that determine which subjects will become collection participants."
* extension[publications] ^short = "key publications produced in the collection (provide DOI, if possible)."
* extension[description] ^short = "Description of the collection in English."

