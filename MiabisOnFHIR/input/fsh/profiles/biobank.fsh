Profile: Biobank
Parent: Organization
Id: miabis-biobank
Title: "Biobank"
Description: "This profile represents a Biobank, which is defined as an entity that stores samples and data related to the samples."

* identifier 1..1 MS
* identifier ^short = "ID of the biobank"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id].system = "http://www.bbmri-eric.eu/" (exactly)
* name 1..1 MS
* name ^short = "Name of the biobank (preferably in English)."
* alias 0..1 MS
* alias ^short = "Short name in use for the biobank. If applicable."

* contact.name.family 1..1 MS
* contact.name.given 1..* MS
* contact.telecom 1..* MS 

* telecom 0..1 MS
* telecom ^short = "Complete http-address for the collection."
* telecom.system = #url
* telecom.value 0..1 MS
* telecom.value ^short = "URL of the collection."


* telecom 0..1 MS
* telecom ^short = "Complete http-address for the collection."
* telecom.system = #url
* telecom.value 0..1 MS
* telecom.value ^short = "URL of the collection."


* address 1..1 MS
* address ^short = "Address of the biobank."
* address ^definition = "The address of the biobank."
* address.country 1..1 MS
* address.country ^short = "Country of the biobank."

* extension contains
    InfrastructuralCapabilitiesExtension named infrastructuralCapabilities 0..* MS and
    OrganisationalCapabilitiesExtension named organisationalCapabilities 0..* MS and
    BioprocessingAndAnalyticalCapabilitiesExtension named bioprocessingAndAnalyticalCapabilities 0..* MS and
    QualityManagementStandardExtension named qualityManagementStandard 0..* MS and
    JuristicPersonExtension named juristicPerson 0..1 MS and
    OrganizationDescriptionExtension named description 0..1 MS

* extension[infrastructuralCapabilities] ^short = "The technical infrastructural capabilities that the biobank can offer to the clients."
* extension[organisationalCapabilities] ^short = "The organisational capabilities and services that the biobank can provide to support clients."
* extension[bioprocessingAndAnalyticalCapabilities] ^short = "The bioprocessing and analytical services that the biobank can offer to the clients."
* extension[qualityManagementStandard] ^short = "The standards that the biobank is certified or accredited for."
* extension[juristicPerson] ^short = "The legal entity that is responsible for the biobank."
* extension[description] ^short = "Description of the biobank in English."