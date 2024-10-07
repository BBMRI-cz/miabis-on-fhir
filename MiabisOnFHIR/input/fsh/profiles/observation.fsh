Profile: MiabisObservation
Parent: Observation
Id: miabis-observation
Title: "Observation"
Description: "Observation containing ICD-10 code of diagnosis"
// * code from http://hl7.org/fhir/ValueSet/icd-10
// * code 1..1 MS
// * code ^short = "Diagnosis code"
// * code ^definition = "The ICD-10 code for the diagnosis"

* identifier 1..1 MS
* identifier ^short = "ID of the observation."
* identifier ^definition = "ID of the observation. As the observation is linked to the sample, the ID of the sample is used as the ID of the observation."
* value[x] only CodeableConcept
* effectiveDateTime 0..1 MS 
* effectiveDateTime ^short = "When the observation was made, ie. when the diagnosis was made."
* effectiveDateTime ^definition = "When the observation was made, ie. when the diagnosis was made."
* subject only Reference(Donor)
* subject 1..1 MS
* subject ^short = "Subject (donor) that the observation is about."
* subject ^definition = "Subject (donor) that the observation is about."
* value[x] from DiagnosisVS
* value[x] 1..1 MS
* value[x]  ^short = "Diagnosis code"
* value[x] ^definition = "The ICD-10 code for the diagnosis"