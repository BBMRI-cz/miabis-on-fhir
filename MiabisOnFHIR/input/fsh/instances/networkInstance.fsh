Instance: NetworkInstance
InstanceOf: Network
Usage: #example
Title: "NetworkInstance"
Description: "example of a network instance"

* identifier.value = "networkId"
* name = "networkName"
* type = #person
* active = true
* actual = true
* managingEntity = Reference(Organization/networkOrgId)
* extension[MemberEntity].valueReference = Reference(Collection/collectionId)
