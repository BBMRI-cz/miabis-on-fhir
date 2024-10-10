Profile: Collection
Parent: Group
Id: miabis-collection
Title: "Collection"
Description: "Collection represents a set of samples and/or data items collected and/or derived in a common context and stored under a common stewardship and available for future research"

//  TODO: Acronym, Url,
* identifier 1..1 MS
* identifier ^short = "ID of the collection."
* name 1..1 MS
* name ^short = "Name of the collection (preferably in English)."

* type = #person
* type ^short = "The type of resources this group contains. For this resource type, this is always set to person. (should be specimen, but this is only supported in R5)"
* active 0..1 MS
* active ^short = "The state of the collection functions."
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open

* characteristic contains 
    ageRange 0..1 MS and
    sex 1..* MS and
    storageTemperature 0..* MS and
    materialType 1..* MS and 
    diagnosis 0..* MS 

* characteristic[ageRange] ^short = "Age of youngest and oldest sample donor at the time of sample donation."
* characteristic[sex] ^short = "The sex of the individuals in the collection."
* characteristic[storageTemperature] ^short = "The long-term storage temperature at which the sample(s) are stored after preparation, based on SPREC v3."
* characteristic[materialType] ^short = "The biospecimen saved from a biological entity for propagation e.g. testing, diagnostics, treatment or research purposes."
* characteristic[diagnosis] ^short = "The diagnosis of the individuals in the collection."


* characteristic[ageRange].code = CharacteristicCS#Age
* characteristic[ageRange].value[x] only Range


* characteristic[sex].code = CharacteristicCS#Sex
* characteristic[sex].value[x] only CodeableConcept
* characteristic[sex].value[x] from http://hl7.org/fhir/ValueSet/administrative-gender


* characteristic[storageTemperature].code = CharacteristicCS#StorageTemperature
* characteristic[storageTemperature].value[x] only CodeableConcept
* characteristic[storageTemperature].value[x] from StorageTemperatureVS


* characteristic[materialType].code = CharacteristicCS#MaterialType
* characteristic[materialType].value[x] only CodeableConcept
* characteristic[materialType].value[x] from MaterialTypeVS


* characteristic[diagnosis].code = CharacteristicCS#Diagnosis
* characteristic[diagnosis].value[x] only CodeableConcept
* characteristic[diagnosis].value[x] from DiagnosisVS

* managingEntity 1..1 MS
* managingEntity only Reference(CollectionOrganization)
* managingEntity ^short = "Organization resource containing details of this collection, such as contact information, publications, etc."

* extension contains 
    NumberOfSubjectsExtension named numberOfSubjects 0..1 MS and
    InclusionCriteriaExtension named inclusionCriteria 0..* MS and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-Group.member.entity named MemberEntity 0..* MS

* extension[MemberEntity].value[x] only Reference(Specimen)

* extension[numberOfSubjects] ^short = "Total number of subjects included in the collection."
* extension[inclusionCriteria] ^short = "Information on type of parameters that determine which subjects will become collection participants."


