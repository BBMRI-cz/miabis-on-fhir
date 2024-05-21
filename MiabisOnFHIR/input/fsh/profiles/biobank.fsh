Profile: Biobank
Parent: Organization
Id: MIABIS-Biobank
Title: "Biobank"
Description: "This profile represents a Biobank, which is defined as an entity that stores samples and data related to the samples."
//  TODO : Country, Juristic Person, Infrastructural capabilities, Organisational capabilities,  Bioprocessing and analytical capabilities,
* identifier 1..1 MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"
* name 1..1 MS
* alias 0..1 MS
* description 0..1 MS

* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #open


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