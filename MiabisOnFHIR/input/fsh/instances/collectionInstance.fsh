Instance: CollectionInstance
InstanceOf: Collection 
Usage: #example
Title: "CollectionInstance"
Description: "example of a collection instance"

* identifier.value = "collectionId"
* name = "CollectionName"
* type = #person
* active = true
* actual = true
* name = "CollectionName"
* characteristic[ageRange].code = CharacteristicCS#Age
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"
// * characteristic[=].code[=].coding[=].code = CharacteristicCS#Age
* characteristic[ageRange].exclude = false
* characteristic[ageRange].valueRange.low.value = 18
* characteristic[ageRange].valueRange.high.value = 65
* characteristic[ageRange].valueRange.low.unit = "years"
* characteristic[ageRange].valueRange.high.unit = "years"
* characteristic[sex].code = CharacteristicCS#Sex
* characteristic[sex].exclude = false
* characteristic[sex].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"
// * characteristic[=].code[=].coding[=].code = CharacteristicCS#Sex
// * characteristic[=].exclude = false
// * characteristic[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/ValueSet/administrative-gender"
// * characteristic[=].valueCodeableConcept.coding[=].code = #female
* characteristic[storageTemperature].code = CharacteristicCS#StorageTemperature
* characteristic[storageTemperature].exclude = false
* characteristic[storageTemperature].valueCodeableConcept = StorageTemperatureCS#RT
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"
// * characteristic[=].code[=].coding[=].code = CharacteristicCS#StorageTemperature
// * characteristic[=].exclude = false
// * characteristic[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-storage-temperature-vs"
// * characteristic[=].valueCodeableConcept.coding[=].code = StorageTemperatureCS#RT
* characteristic[materialType].code = CharacteristicCS#MaterialType
* characteristic[materialType].exclude = false
* characteristic[materialType].valueCodeableConcept = MaterialTypeCS#RNA
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"
// * characteristic[=].code[=].coding[=].code = CharacteristicCS#MaterialType
// * characteristic[=].exclude = false
// * characteristic[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-material-type-vs"
// * characteristic[=].valueCodeableConcept.coding[=].code = MaterialTypeCS#RNA
* characteristic[diagnosis].code = CharacteristicCS#Diagnosis
* characteristic[diagnosis].exclude = false
* characteristic[diagnosis].valueCodeableConcept =  http://hl7.org/fhir/sid/icd-10#C50
// * characteristic[+].code[+].coding[+].system = "http://example.org/ValueSet/miabis-characteristic-vs"
// * characteristic[=].code[=].coding[=].code = CharacteristicCS#Diagnosis
// * characteristic[=].exclude = false
// * characteristic[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/ValueSet/icd-10"
// * characteristic[=].valueCodeableConcept.coding[=].code = #C50

* managingEntity = Reference("CollectionOrganization/collectionOrgId")

* extension[numberOfSubjects].valueInteger = 100
* extension[inclusionCriteria].valueCodeableConcept = InclusionCriteriaCS#HealthStatus
// * extension[+].url = "http://example.org/StructureDefinition/miabis-number-of-subjects-extension"
// // * extension[=].valueInteger = 100
// // * extension[+].url = "http://example.org/StructureDefinition/miabis-inclusion-criteria-extension"
// // * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-inclusion-criteria-vs"
// // * extension[=].valueCodeableConcept.coding[=].code = InclusionCriteriaCS#HealthStatus 
// // * extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Group.member.entity"
// * extension[=].valueReference = Reference("Specimen/specimenId")





