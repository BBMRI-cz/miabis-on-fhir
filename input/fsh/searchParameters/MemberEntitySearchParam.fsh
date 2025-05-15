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
// * expression = "Group.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Group.member.entity').valueReference.where(reference.startsWith('Specimen/'))"
* expression = "Group.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Group.member.entity').value"
* target[+] = #Specimen
* target[+] = #Group
* target[+] = #Organization
* chain = "*"
