Invariant: SpecimenOntologyInvariant
Description: "bodySite.concept.coding.system and bodySite.concept.coding.version are required if any ontology information is provided"
Expression: "Specimen.collection.bodySite.concept.coding.exists() implies (Specimen.collection.bodySite.concept.coding.system.exists() and Specimen.collection.bodySite.concept.coding.version.exists())"
Severity: #error

