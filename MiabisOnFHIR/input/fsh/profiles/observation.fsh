Profile: MiabisObservation
Parent: Observation
Id: miabis-observation
Title: "Observation"
Description: "Observation containing ICD-10 code of diagnosis"
// * code from http://hl7.org/fhir/ValueSet/icd-10
// * code 1..1 MS
// * code ^short = "Diagnosis code"
// * code ^definition = "The ICD-10 code for the diagnosis"

* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/icd-10
* value[x] 1..1 MS
* value[x]  ^short = "Diagnosis code"
* value[x] ^definition = "The ICD-10 code for the diagnosis"