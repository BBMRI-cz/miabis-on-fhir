Profile: Network
Parent: Group
Id: miabis-network
Title: "Network"
Description: "This resource represents a group of interconnected biobanks, collections, and/or research resources"

* identifier 1..1 MS
* identifier ^short = "ID of the collection."
* name 1..1 MS
* name ^short = "Name of the collection (preferably in English)."

* type = #person
* active 0..1 MS
* active ^short = "The state of the collection functions."
* managingEntity 1..1 MS 
* managingEntity only Reference(NetworkOrganization)
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Group.member.entity named MemberEntity 0..* MS

* extension[MemberEntity].value[x] only Reference(Network or Biobank)