Profile: NetworkOrganization
Parent: Organization
Id: miabis-network-organization
Title: "Network Organization"
Description: "Network Organization represent a formal part of a network member, like ist name, contact information, url, etc."

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
* telecom.value ^short = "URL of the collection."

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
* partOf only Reference(Biobank)
* partOf ^short = "The organization that the collection is part of."
 
* extension contains 
    JuristicPersonExtension named juristicPerson 0..1 MS and
    CommonCollaborationTopicsExtension named commonCollaborationTopics 0..* MS and
    OrganizationDescriptionExtension named description 0..1 MS

* extension[juristicPerson] ^short = "Juristic person i.e. a university, concern, country council, etc. for the network"
* extension[commonCollaborationTopics] ^short = "Common collaboration topics for the network."
* extension[description] ^short = "Description of the network in English."
