Instance: NetworkOrgInstance
InstanceOf: NetworkOrganization
Usage: #example
Title: "NetworkOrgInstance"
Description: "example of a network organization instance"

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
* partOf = Reference(Organization/biobankId)
* extension[juristicPerson].valueString = "juristicPerson"
* extension[commonCollaborationTopics].valueCodeableConcept = CommonCollaborationTopicsCS#Charter
* extension[description].valueString = "descriptionExample"

