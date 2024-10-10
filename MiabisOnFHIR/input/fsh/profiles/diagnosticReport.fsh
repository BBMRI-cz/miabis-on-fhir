Profile: DiagnosisReport
Parent: DiagnosticReport
Id: miabis-diagnosis-report
Title: "Diagnosis Report"
Description: "provides information about the diagnosis linked to sample"

* identifier 0..1 MS
* identifier ^short = "ID of Condition"
* identifier ^definition = "A unique identifier for the condition."

* status = #final

* specimen only Reference(Sample)
* specimen 0..1 MS 
* specimen ^short = "Linked Sample"
* specimen ^definition = "Sample which is linked to this specific diagnosis"

* result only Reference(MiabisObservation)
* result 0..* MS
