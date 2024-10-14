Profile: MiabisCondition
Parent: Condition
Id: miabis-condition
Title: "Condition"
Description: "This profile represents a condition, which is linked to sample and donor. It is used to describe diagnosis of the donor and his/her sample."

* identifier 0..1 MS
* identifier ^short = "ID of Condition"
* identifier ^definition = "A unique identifier for the condition."

* subject only Reference(Donor) 
* subject 1..1 MS 
* subject ^short = "Linked Donor"
* subject ^definition = "Donor which is linked to the condition" 

* code 0..1 MS
* code ^short = "ICD-10 Code representing diagnosis of the patient."
* code ^definition = "The ICD-10 code of the condition. This code is used to represent only the diagnosis of the patient. It is not used to represent the condition of the sample. For the condition of the sample, use the stage.assessment element."
* code from DiagnosisVS
* stage.assessment only Reference(DiagnosisReport)
* stage.assessment 1.. MS
* stage.assessment ^short = "Diagnostic Report"
* stage.assessment ^definition = "This element is used to link the condition to the sample and to the diagnosis of the said sample. It is used to represent the condition of the sample. For the diagnosis of the patient (which is not linked to a specific sample, ie condition that patient has been diagnoses elsewhere), use the code element."