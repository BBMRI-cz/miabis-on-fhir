// Invariant: SpecimenOntologyInvariant
// Description: "bodySite.coding.system and bodySite.coding.version are required if any ontology information is provided"
// Expression: "Specimen.collection.bodySite.coding.exists() implies (Specimen.collection.bodySite.coding.system.exists() and Specimen.collection.bodySite.coding.version.exists())"
// Severity: #error

