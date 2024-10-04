Instance: BiobankInstance
InstanceOf: Biobank
Usage: #example
Title: "BiobankInstance"
Description: "Example instance of a Biobank"

* identifier.value = "biobankId"
* identifier.system = "http://www.bbmri-eric.eu"
* name = "biobankName"
* alias = "biobankAlias" 
* contact[+].name.given[+] = "contactName"
* contact[=].name.family = "contactFamilyName"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "contactEmail"

* contact[=].telecom.system = #phone
* address[+].country = "CZ"
* extension[infrastructuralCapabilities].valueCodeableConcept = InfrastructuralCapabilitiesCS#SampleStorage
* extension[organisationalCapabilities].valueCodeableConcept = OrganisationalCapabilitiesCS#Other
* extension[bioprocessingAndAnalyticalCapabilities].valueCodeableConcept = BioprocessingAndAnalyticalCapabilitiesCS#Other
* extension[qualityManagementStandard].valueString = "ISO 9001"
* extension[juristicPerson].valueString = "juristicPerson"

