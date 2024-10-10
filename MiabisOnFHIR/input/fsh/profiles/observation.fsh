Profile: MiabisObservation
Parent: Observation
Id: miabis-observation
Title: "Observation"
Description: "Observation containing ICD-10 code of diagnosis"

* identifier 0..1 MS
* identifier ^short = "ID of the observation."
* identifier ^definition = "ID of the observation. Usually given by the data provider"
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