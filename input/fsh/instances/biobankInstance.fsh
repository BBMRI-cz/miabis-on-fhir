Instance: BiobankInstance
InstanceOf: Biobank
Usage: #example
Title: "BiobankInstance"
Description: "Example instance of a Biobank"
* id = "example-biobank"
* identifier[bbmri-eric-id].value = "biobankId"
* name = "biobankName"
* alias = "biobankAlias"
* telecom[0].system = #url
* telecom[0].value = "http://biobank.com"
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
* extension[description].valueString = "descriptionExample"

