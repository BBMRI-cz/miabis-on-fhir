Profile: Collection
Parent: Group
Id: miabis-collection
Title: "MiabisCollection"
Description: "Collection represents a set of samples and/or data items collected and/or derived in a common context and stored under a common stewardship and available for future research"

//  TODO: Acronym, Url, Contact information, Sample source,
* identifier 1..1 MS
* name 1..1 MS
* description 0..1 MS
* type = #specimen
* active 0..1 MS
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open

* characteristic contains 
    ageRange 1..1 MS and
    sex 1..* MS and
    storageTemperature 1..* MS and
    materialType 1..* MS and 
    diagnosis 1..* MS 

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

* extension contains 
    CollectionDatasetTypeExtension named datasetType 0..1 MS and
    SampleSourceExtension named sampleSource 0..1 MS and
    SampleCollectionSettingExtension named sampleCollectionSetting 0..1 MS and
    CollectionDesignExtension named collectionDesign 0..* MS and
    UseAndAccessConditionsExtension named useAndAccessConditions 0..* MS and
    NumberOfSubjectsExtension named numberOfSubjects 0..1 MS and
    InclusionCriteriaExtension named inclusionCriteria 0..* MS and
    PublicationsExtension named publications 0..* MS 


