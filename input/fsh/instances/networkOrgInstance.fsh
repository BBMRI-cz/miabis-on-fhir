Instance: NetworkOrgInstance
InstanceOf: NetworkOrganization
Usage: #example
Title: "NetworkOrgInstance"
Description: "Example instance of a Network as an Organization"
* id = "example-network"
* identifier.value = "networkOrgId"
* name = "collectionOrgName"
* alias = "collectionOrgAlias"
* telecom[+].system = #url
* telecom[=].value = "http://collectionOrg.com"
* contact[+].name.given[+] = "contactName"
* contact[=].name.family = "contactFamilyName"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "contactEmail"

* address[+].country = "CZ"
* partOf = Reference(Organization/example-juristic-person)
* extension[commonCollaborationTopics].valueCodeableConcept = CommonCollaborationTopicsCS#Charter
* extension[description].valueString = "descriptionExample"

