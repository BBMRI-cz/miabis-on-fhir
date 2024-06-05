Profile: Biobank
Parent: Organization
Id: MIABIS-Biobank
Title: "Biobank"
Description: "This profile represents a Biobank, which is defined as an entity that stores samples and data related to the samples."

* identifier 1..1 MS
* identifier ^short = "ID of the biobank"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"
* name 1..1 MS
* name ^short = "Name of the biobank (preferably in English)."
* alias 0..1 MS
* alias ^short = "Short name in use for the biobank. If applicable."
// * description 0..1 MS
// * description ^short = "Description of the biobank in English."

* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #open
* contact ^short = "Contact information for the contact person/person responsible of the biobank."


* contact.purpose = ContactTypeCS#Research
* contact.name.family 1..1 MS
* contact.name.given 1..* MS

* contact.telecom 1..*

* contact.address 1..1 MS

* contact.address.country 1..1 MS
// * contact[forschungskontakt].address only http://fhir.de/StructureDefinition/address-de-basis

* extension contains
    InfrastructuralCapabilitiesExtension named infrastructuralCapabilities 0..* MS and
    OrganisationalCapabilitiesExtension named organisationalCapabilities 0..* MS and
    BioprocessingAndAnalyticalCapabilitiesExtension named bioprocessingAndAnalyticalCapabilities 0..* MS and
    QualityManagementStandardExtension named qualityManagementStandard 0..* MS 

* extension[infrastructuralCapabilities] ^short = "The technical infrastructural capabilities that the biobank can offer to the clients."
* extension[organisationalCapabilities] ^short = "The organisational capabilities and services that the biobank can provide to support clients."
* extension[bioprocessingAndAnalyticalCapabilities] ^short = "The bioprocessing and analytical services that the biobank can offer to the clients."
* extension[qualityManagementStandard] ^short = "The standards that the biobank is certified or accredited for."