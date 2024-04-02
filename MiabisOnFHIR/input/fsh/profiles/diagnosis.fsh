Profile: MiabisDiagnosisReport
Parent: DiagnosticReport
Id: miabis-diagnosis-report
Title: "Diagnosis Report"
Description: "provides information about the diagnosis linked to sample"

* identifier 1..1 MS
* identifier ^short = "ID of Condition"
* identifier ^definition = "A unique identifier for the condition."

* specimen only Reference(Sample)
* specimen 0.. MS 
* specimen ^short = "Linked Sample"
* specimen ^definition = "Sample which is linked to this specific diagnosis"

* code from http://hl7.org/fhir/ValueSet/icd-10
* code 1..1 MS
* code ^short = "Diagnosis code"
* code ^definition = "The ICD-10 code for the diagnosis"

* status = #final
