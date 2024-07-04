Profile: NetworkMembers
Parent: List
Id: miabis-network-members
Title: "Network Members"
Description: "This resource contains a list of all members of specified network."

* mode = #working
* title 1..1 MS
* title ^short = "Name of collection this list belongs to"

* subject only Reference(Network)
* subject 1..1 MS
* subject ^short = "Network this list belongs to"

* entry 0..* MS
* entry.date 1..1 MS
* entry.item only Reference(Collection or Biobank)
* entry.item 1..1 MS