Instance: ObservationInstance
InstanceOf: MiabisObservation
Usage: #example
Title: "Example observation"
Description: "Example instance of an Observation"

* identifier.value = "observationId"
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#A01
// * valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/sid/icd-10"
// * valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#A01
* status = #final
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #52797-8