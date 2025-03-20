## What are FHIR stores?
FHIR stores are databases optimized for storing and managing FHIR resources. They provide a RESTful API for creating, reading, updating, and deleting structured healthcare and research data.

## What FHIR store should we use?
MIABIS on FHIR profiles are designed to work with any FHIR-compliant store. However, we recommend using the [Blaze FHIR Store](https://samply.github.io/blaze/) due to its performance in federated research environments.

## How do I start implementing MIABIS on FHIR for sharing sample-related data?
1. Understand your current data model and map it to MIABIS on FHIR profiles.
2. Set up a FHIR store for storing and querying FHIR resources.
3. Develop middleware to transform your internal data into FHIR-compatible resources.
4. Validate your implementation using FHIR validators to check for compliance.
5. Test interoperability with other systems using standard FHIR operations.

## How can I send MIABIS on FHIR-compatible resources to a FHIR store?
FHIR stores expose a REST API that allows interaction with FHIR resources using standard HTTP methods. You can use `POST`, `GET`, `PUT`, and `DELETE` to manage data.

**Example:**  
```shell
POST /fhir/Patient HTTP/1.1
Host: fhir.example.com
Content-Type: application/fhir+json
Authorization: Bearer <access_token>

{
  "resourceType": "Patient",
  "id": "example-patient-id",
  "name": [
    {
      "use": "official",
      "family": "Doe",
      "given": ["John"]
    }
  ],
  "gender": "male",
  "birthDate": "1980-01-01"
}
```

## How do I validate that my data conforms to MIABIS on FHIR profiles?
You can use FHIR validation tools like:
- **FHIR Validator** ([Validation Guide](https://hl7.org/fhir/validation.html))
- **Simplifier.net FHIR validation** ([Simplifier.net](https://simplifier.net))

**Example Validation Request:**  
```shell
# Run FHIR Validator over CLI with a file to validate (e.g., Patient resource)
java -jar fhir-validator.jar -input file:/path/to/your/resource-file.json
```

## How can I convert my existing data to FHIR?
1. Extract relevant data from your database.
2. Map fields to the appropriate FHIR resources and attributes.
3. Use a transformation tool (e.g., Python scripts, ETL pipelines, or FHIR libraries).
4. Validate and load data into a FHIR store.

This JSON:
```json
{
  "sampleId": "sampleId",
  "sampleCollectionId": "bbmri:exampleID",
  "sampleType": "BuffyCoat",
  "patientId": "example-patient-id",
  "collectedDate": "2011-04-05T13:00:00Z",
  "storageTemperature": "RT",
  "usageRestriction": "This is a restriction of sample usage"
}

```
Would map to:
```json

  "resourceType" : "Specimen",
  "id" : "example",
  "meta" : {
    "profile" : [
      🔗 "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample"
    ]
  },
  "text" : {
    "status" : "extensions",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Specimen example</b></p><a name=\"example\"> </a><a name=\"hcexample\"> </a><a name=\"example-en-US\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-miabis-sample.html\">Sample</a></p></div><p><b>Sample Collection</b>: <code>https://directory.bbmri-eric.eu/</code>/bbmri:exampleID</p><p><b>identifier</b>: sampleId</p><p><b>type</b>: <span title=\"Codes:{https://fhir.bbmri-eric.eu/CodeSystem/miabis-detailed-samply-type-cs BuffyCoat}\">Buffy coat</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Anonymous Patient Male, DoB: 1980-01-01 ( donorId)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2011-04-05 13:00:00+0000</td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td></tr><tr><td style=\"display: none\">*</td><td/></tr></table><p><b>note</b>: This is a restriction of sample usage</p></div>"
  },
  "extension" : [
    {
      "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-collection-extension",
      "valueIdentifier" : {
        "system" : "https://directory.bbmri-eric.eu/",
        "value" : "bbmri:exampleID"
      }
    }
  ],
  "identifier" : [
    {
      "value" : "sampleId"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-detailed-samply-type-cs",
        "code" : "BuffyCoat"
      }
    ]
  },
  "subject" : {
    🔗 "reference" : "Patient/example"
  },
  "collection" : {
    "collectedDateTime" : "2011-04-05T13:00:00Z"
  },
  "processing" : [
    {
      "extension" : [
        {
          "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-storage-temperature-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-storage-temperature-cs",
                "code" : "RT"
              }
            ]
          }
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "This is a restriction of sample usage"
    }
  ]
}
```
More examples for individual Resources can be found on pages for respective profiles.

## What if my data contains attributes not covered by MIABIS?
FHIR allows extensions to represent additional data while maintaining compatibility with standard profiles. If your data includes fields not covered by MIABIS, consider using **FHIR extensions** or **custom profiles** to capture the missing attributes.

## How can I query data from a FHIR store?
FHIR supports various search parameters that allow querying data efficiently. You can filter based on specific attributes, retrieve linked resources, and apply advanced query mechanisms.

**Example Query:**  
```shell
GET /fhir/Patient?name=family:doe HTTP/1.1
Host: fhir.example.com
Authorization: Bearer <access_token>

```

## What tools can help with MIABIS on FHIR adoption?
- **FHIR Validator** for checking compliance
- **Blaze FHIR Store** for hosting data
- **Postman or cURL** for testing API interactions
- **Simplifier.net** for managing and validating FHIR resources

## What is CQL and how is it used in the context of MIABIS on FHIR?

CQL (Clinical Quality Language) is a standardized, human-readable language designed to express clinical logic and quality measures. In the context of MIABIS on FHIR, CQL can be used to define rules for the interpretation and validation of data within biobank resources.

### How CQL can be applied:
CQL can be used to query, validate, and enforce data consistency across FHIR resources. For example, it could be used to check if a `Specimen` resource meets the necessary criteria (such as proper sample collection dates or valid specimen types) before it is added to a FHIR store.
It can also define complex relationships between resources, ensuring that biobank data is consistent and adheres to predefined rules.

In MIABIS on FHIR, CQL can help automate the validation of FHIR-based biobank data against MIABIS profiles, ensuring that resources are compatible with both the MIABIS model and other interoperable systems that use FHIR.

For more information on CQL and how to implement it, refer to [FHIR CQL Documentation](https://cql.hl7.org/).


## Where can I get support?
For questions, feedback, or technical assistance, you can:
- Open an issue on [GitHub](https://github.com/BBMRI-cz/miabis-on-fhir)
- Join the [FHIR Community Chat](https://chat.fhir.org/)
- Consult the [HL7 FHIR Documentation](https://hl7.org/fhir/)  

