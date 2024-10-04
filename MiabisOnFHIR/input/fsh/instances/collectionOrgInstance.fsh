Instance: CollectionOrgInstance
InstanceOf: CollectionOrganization
Usage: #example
Title: "CollectionOrgInstance"
Description: "Example instance of a Collection Organization"

* identifier.value = "collectionOrgId"
* name = "collectionOrgName"
* alias = "collectionOrgAlias"
* telecom[0].system = #url
* telecom[0].value = "http://collectionOrg.com"
* contact[+].name.given[+] = "contactName"
* contact[=].name.family = "contactFamilyName"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "contactEmail"

* address[+].country = "CZ"

* partOf = Reference("Biobank/biobankId")

* extension[datasetType].valueCodeableConcept = CollectionDatasetTypeCS#Genomic
* extension[sampleSource].valueCodeableConcept = SampleSourceCS#Human
* extension[sampleCollectionSetting].valueCodeableConcept = SampleCollectionSettingCS#RoutineHealthCare
* extension[collectionDesign].valueCodeableConcept = CollectionDesignCS#CaseControl
* extension[useAndAccessConditions].valueCodeableConcept = UseAndAccessConditionsCS#CommercialUse
* extension[publications].valueString = "publicationExample"
* extension[description].valueString = "descriptionExample"

// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-datasetType-extension"
// * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-collection-datasetType-vs"
// * extension[=].valueCodeableConcept.coding[=].code = CollectionDatasetTypeCS#Genomic
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-sampleSource-extension"
// * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-collection-sampleSource-vs"
// * extension[=].valueCodeableConcept.coding[=].code = SampleSourceCS#Human
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-sampleCollectionSetting-extension"
// * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-collection-sampleCollectionSetting-vs"
// * extension[=].valueCodeableConcept.coding[=].code = SampleCollectionSettingCS#RoutineHealthCare
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-collectionDesign-extension"
// * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-collection-collectionDesign-vs"
// * extension[=].valueCodeableConcept.coding[=].code = CollectionDesignCS#CaseControl
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-useAndAccessConditions-extension"
// * extension[=].valueCodeableConcept.coding[+].system = "http://example.org/ValueSet/miabis-collection-useAndAccessConditions-vs"
// * extension[=].valueCodeableConcept.coding[=].code = UseAndAccessConditionsCS#CommercialUse
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-publications-extension"
// * extension[=].valueString = "publicationExample"
// * extension[+].url = "http://example.org/StructureDefinition/miabis-collection-description-extension"
// * extension[=].valueString = "descriptionExample"

