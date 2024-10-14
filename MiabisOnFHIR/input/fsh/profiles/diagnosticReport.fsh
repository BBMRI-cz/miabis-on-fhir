Profile: DiagnosisReport
Parent: DiagnosticReport
Id: miabis-diagnosis-report
Title: "Diagnosis Report"
Description: "Diagnosis Report provides information about the diagnosis linked to sample"

* identifier 0..1 MS
* identifier ^short = "ID of Diagnosis Report"
* identifier ^definition = "A unique identifier for the Diagnosis Report."

* status = #final

* specimen only Reference(Sample)
* specimen 0..1 MS 
* specimen ^short = "Linked Sample"
* specimen ^definition = "Sample which is linked to this diagnosis report"

* subject only Reference(Donor)
* subject 1..1 MS
* subject ^short = "Donor which is linked to this Diagnostis report"

* result only Reference(MiabisObservation)
* result 0..* MS
