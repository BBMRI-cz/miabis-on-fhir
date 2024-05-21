Profile: ManagingPerson
Parent: Practitioner
Id: miabis-related-person
Title: "Managing Person"
Description: "Managing person of collection"

* name 1..1 MS
* name ^short = "Name of the managing person"
* name.family 1..1 MS
* name ^short = "Family name of the managing person"
* name.given 1..1 MS
* name ^short = "Given name of the managing person"
* telecom 1..* MS
* address 1..1 MS
* address.line 1..* MS
* address.line ^short = "Street name and number"
* address.city 1..1 MS
* address.city ^short = "City of the managing person"
* address.postalCode 1..1 MS
* address.postalCode ^short = "Postal code of the managing person"
* address.country 1..1 MS
* address.country ^short = "Country of the managing person"