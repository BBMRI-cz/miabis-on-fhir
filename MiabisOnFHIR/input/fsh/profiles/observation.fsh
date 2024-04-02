Profile: MiabisObservation
Parent: Observation
Id: miabis-observation
Title: "Observation"
Description: "Observation containing ICD-10 code of diagnosis"
* code from http://hl7.org/fhir/ValueSet/icd-10
* code 1..1 MS
* code ^short = "Diagnosis code"
* code ^definition = "The ICD-10 code for the diagnosis"

* valueCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10
* valueCodeableConcept 1..1 MS
* valueCodeableConcept  ^short = "Diagnosis code"
* valueCodeableConcept ^definition = "The ICD-10 code for the diagnosis"