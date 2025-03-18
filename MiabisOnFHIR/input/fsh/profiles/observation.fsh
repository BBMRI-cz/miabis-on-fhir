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
* specimen only Reference(Sample)
* specimen 1..1 MS
* specimen ^short = "Specimen used for this observation"
* value[x] only CodeableConcept
* value[x]  ^short = "Diagnosis code"
* value[x] ^definition = "The ICD code for the diagnosis. Can be either ICD-10(WHO edition) or ICD-9"
* value[x].coding 1..
* value[x].coding ^slicing.discriminator[0].type = #value
* value[x].coding ^slicing.discriminator[0].path = "system"
* value[x].coding ^slicing.discriminator[1].type = #value
* value[x].coding ^slicing.discriminator[1].path = "version"
* value[x].coding ^slicing.rules = #closed
* value[x].coding contains icd-10-who 0..* and icd-9 0..* 
* value[x].coding[icd-10-who].system 1..
* value[x].coding[icd-10-who].system = "http://hl7.org/fhir/sid/icd-10" (exactly)
* value[x].coding[icd-10-who].code 1..
* value[x].coding[icd-9].system 1..
* value[x].coding[icd-9].system = "http://hl7.org/fhir/sid/icd-9" (exactly)
* value[x].coding[icd-9].code 1..
