Instance: ExtensionMemberEntitySearch
InstanceOf: SearchParameter
Title: "Search Group by extension containing members"
Usage: #definition

* url = "https://fhir.bbmri-eric.eu/fhir/SearchParameter/GroupMember"
* name = "groupMember"
* description = "Search parameter for searching Group by provided members via extension" 
* status = #active
* code = #groupMember
* base = #Group
* type = #reference
// * expression = "Group.extension.where(url='https://fhir.bbmri-eric.eu/StructureDefinition/miabis-member-entity-extension').valueReference.where(reference.startsWith('Specimen/'))"
* expression = "Group.extension('https://fhir.bbmri-eric.eu/StructureDefinition/miabis-member-entity-extension').value"
* target[+] = #Specimen
* target[+] = #Group
* target[+] = #Organization
* chain = "*"
