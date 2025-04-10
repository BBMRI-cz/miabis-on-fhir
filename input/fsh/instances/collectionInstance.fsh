Instance: CollectionInstance
InstanceOf: Collection 
Usage: #example
Title: "CollectionInstance"
Description: "Example instance of a Collection of Samples"
* id = "example-collection-group"
* identifier.value = "collectionId"
* name = "CollectionName"
* type = #person
* active = true
* actual = true
* name = "CollectionName"
* characteristic[ageRange].code = CharacteristicCS#Age
* characteristic[ageRange].exclude = false
* characteristic[ageRange].valueRange.low.value = 18
* characteristic[ageRange].valueRange.high.value = 65
* characteristic[ageRange].valueRange.low.unit = "years"
* characteristic[ageRange].valueRange.high.unit = "years"

* characteristic[sex].code = CharacteristicCS#Sex
* characteristic[sex].exclude = false
* characteristic[sex].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"

* characteristic[storageTemperature].code = CharacteristicCS#StorageTemperature
* characteristic[storageTemperature].exclude = false
* characteristic[storageTemperature].valueCodeableConcept = StorageTemperatureCS#RT

* characteristic[materialType].code = CharacteristicCS#MaterialType
* characteristic[materialType].exclude = false
* characteristic[materialType].valueCodeableConcept = CollectionSampleTypeCS#RNA

* characteristic[diagnosis].code = CharacteristicCS#Diagnosis
* characteristic[diagnosis].exclude = false
* characteristic[diagnosis].valueCodeableConcept =  http://hl7.org/fhir/sid/icd-10#C50

* managingEntity = Reference(Organization/example-biobank)

* extension[numberOfSubjects].valueInteger = 100
* extension[inclusionCriteria].valueCodeableConcept = InclusionCriteriaCS#HealthStatus
* extension[MemberEntity].valueReference = Reference(Specimen/example)



