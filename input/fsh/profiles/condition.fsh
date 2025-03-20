Profile: MiabisCondition
Parent: Condition
Id: miabis-condition
Title: "Condition"
Description: "This profile is used to represent only the diagnosis of the patient. It is not used to represent diagnosis linked to the sample. For the diagnosis linked to the sample, use the observation resource."

* subject only Reference(Donor) 
* subject 1..1 MS 
* subject ^short = "Linked Donor"
* subject ^definition = "Donor which is linked to the condition" 

* code 0..1 MS
* code ^short = "ICD-10 Code representing diagnosis of the patient."
* code ^definition = "The ICD-10 code of the condition. This code is used to represent only the diagnosis of the patient. It is not used to represent the condition of the sample. For the condition of the sample, use the stage.assessment element."
* code from DiagnosisVS
