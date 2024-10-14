Instance: ObservationInstance
InstanceOf: MiabisObservation
Usage: #example
Title: "Example observation"
Description: "Example instance of an Observation"

* identifier.value = "observationId"
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#A01

* effectiveDateTime = "2020-01-01"
* subject = Reference(Patient/donorId)
* specimen = Reference(Sample/sampleId)
* status = #final
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #52797-8