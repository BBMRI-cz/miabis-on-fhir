Profile: NetworkOrganization
Parent: Organization
Id: miabis-network-organization
Title: "Network Organization"
Description: "Network Organization represent a formal part of a Network, like ist name, contact information, url, etc."

* identifier 1..1 MS
* identifier ^short = "ID of the network."
* name 1..1 MS
* name ^short = "Name of the network (preferably in English)."
* alias 0..1 MS
* alias ^short = "Short name in use for the network. If applicable."
* telecom 0..1 MS
* telecom ^short = "Complete http-address for the network."
* telecom.system = #url
* telecom.value 0..1 MS
* telecom.value ^short = "URL of the network."
* active 0..1 MS
* active ^short = "The state of the network functions."
* active ^definition = "The state of the network functions."

* contact.name.family 1..1 MS
* contact.name.given 1..* MS
* contact.telecom 1..*  

* address 1..1 MS
* address ^short = "Address of the network."
* address ^definition = "The address of the network."
* address.country 1..1 MS
* address.country ^short = "Country of the network."
* address.country ^definition = "The country of the network."

* partOf 1..1 MS 
* partOf ^short = "The juristic person responsible for network"
 
* extension contains 
    CommonCollaborationTopicsExtension named commonCollaborationTopics 0..* MS and
    OrganizationDescriptionExtension named description 0..1 MS

* extension[commonCollaborationTopics] ^short = "Common collaboration topics for the network."
* extension[description] ^short = "Description of the network in English."
