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

* partOf = Reference(Organization/biobankId)

* extension[datasetType].valueCodeableConcept = CollectionDatasetTypeCS#Genomic
* extension[sampleSource].valueCodeableConcept = SampleSourceCS#Human
* extension[sampleCollectionSetting].valueCodeableConcept = SampleCollectionSettingCS#RoutineHealthCare
* extension[collectionDesign].valueCodeableConcept = CollectionDesignCS#CaseControl
* extension[useAndAccessConditions].valueCodeableConcept = UseAndAccessConditionsCS#CommercialUse
* extension[publications].valueString = "publicationExample"
* extension[description].valueString = "descriptionExample"

