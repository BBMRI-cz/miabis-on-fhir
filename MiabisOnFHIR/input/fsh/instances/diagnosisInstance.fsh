Instance: DiagnosisInstance
InstanceOf: DiagnosisReport
Usage: #example
Title: "Example Diagnosis Report"
Description: "example of a diagnosis report"

* identifier.value = "diagnosisId"
* specimen = Reference("Sample/sampleId")
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #52797-8
* result[+].reference = "Observation/observationId"
* status = #final
