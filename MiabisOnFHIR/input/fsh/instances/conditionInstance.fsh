Instance: ConditionInstance
InstanceOf: MiabisCondition
Usage: #example
Title: "Condition Instance"
Description: "example of a condition instance"

* identifier.value = "conditionId"
* subject = Reference(Patient/patientId)
* stage.assessment[+] = Reference(Observation/observationId)