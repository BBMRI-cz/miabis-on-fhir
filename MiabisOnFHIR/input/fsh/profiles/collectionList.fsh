Profile: ListOfSpecimens
Parent: List
Id: miabis-list-of-specimens
Title: "List of specimens"
Description: "List of specimens belonging to a Collection resource"

* mode = #working
* title 1..1 MS
* title ^short = "Name of collection this list belongs to"

* subject only Reference(Collection)
* subject 1..1 MS
* subject ^short = "Collection this list belongs to"

* entry 0..* MS
* entry.date 1..1 MS
* entry.item only Reference(Specimen)
* entry.item 1..1 MS
* entry.deleted 1..1 MS
