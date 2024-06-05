Profile: MiabisCondition
Parent: Condition
Id: miabis-condition
Title: "Condition"
Description: "This profile represents a condition, which is linked to sample and donor. It is used to describe diagnosis of the donor and his/her sample."

* identifier 1..1 MS
* identifier ^short = "ID of Condition"
* identifier ^definition = "A unique identifier for the condition."

* subject only Reference(Donor) 
* subject 1..1 MS 
* subject ^short = "Linked Donor"
* subject ^definition = "Donor which is linked to the condition" 

* code 1..1 MS
* code ^short = "ICD-10 Code"
* code ^definition = "The ICD-10 code of the condition."
* code from http://hl7.org/fhir/ValueSet/icd-10
* stage.assessment only Reference(DiagnosticReport)
* stage.assessment 1.. MS
* stage.assessment ^short = "Diagnostic Report"
* stage.assessment ^definition = "Diagnostic Report which actually links this condition to the sample."