## Introduction
Welcome to the **MIABIS on FHIR Implementation Guide (IG)**.  
This guide defines a FHIR-based representation of the *Minimum Information About BIobank data Sharing (MIABIS)* standard, providing a structured framework for biobank data interoperability.

MIABIS defines a common data model for biobank metadata, enabling biobanks, cohorts, and biomolecular resources to share structured information about their collections. By adopting **FHIR (Fast Healthcare Interoperability Resources)** as the underlying standard, we ensure seamless integration with existing healthcare and research infrastructures.

## Purpose
This framework offers a practical, machine-actionable representation of MIABIS, enabling standardized sharing of sample-related data across diverse applications and systems.  
By leveraging the **FHIR ecosystem**, we facilitate system-wide interoperability while promoting **FAIR** (Findable, Accessible, Interoperable, and Reusable) data principles.

### Why MIABIS on FHIR?
- **Interoperability** – Enables seamless data exchange between biobanks and healthcare/research infrastructures.
- **Scalability** – Supports federated implementations across multiple institutions and networks.
- **Standard Compliance** – Aligns with widely accepted standards such as [FHIR](https://hl7.org/fhir/), [BBMRI-ERIC MIABIS](https://github.com/BBMRI-ERIC/miabis), and global health data models.
- **Machine-Readable Format** – Provides structured, computable representations for automated processing.

## Key Features
- **FHIR Profiles for Biobank Data** – Structured resources for describing biobank, sample, donor, and dataset metadata.
- **Extensibility** – Base profiles can be adapted to specific project needs while maintaining compliance with core standards.
- **FHIR API Support** – Enables data querying and retrieval using standard FHIR interfaces.
- **Integration with Existing Infrastructure** – Can be linked with healthcare, research, and federated data networks.

## Getting Started
To begin using MIABIS on FHIR, explore the following resources:
- **FHIR Specification:** [FHIR Standard (HL7)](https://hl7.org/fhir/)
- **MIABIS Standard:** [BBMRI-ERIC MIABIS GitHub](https://github.com/BBMRI-ERIC/miabis)
- **Example Implementations:** [Simplifier.net - BBMRI.cz](https://simplifier.net/BBMRI.cz)
- **FHIR Tools & Libraries:**
    - [HAPI FHIR (Java)](https://hapifhir.io/)
    - [FHIR.js (JavaScript)](https://github.com/FHIR/fhir.js)
    - [fhir.resources (Python)](https://github.com/nazrulworld/fhir.resources)
    - [BBMRI.cz ETL tool](https://github.com/BBMRI-cz/fhir-module)
    - [Python Library](https://pypi.org/project/MIABIS-on-FHIR)

## Contact & Feedback
For contributions, feedback, or support, please reach out to the **MIABIS on FHIR** team via:
- **GitHub Issues & Discussions:** [GitHub Repository](https://github.com/BBMRI-cz/miabis-on-fhir)
- **Community Forums:** [FHIR Chat](https://chat.fhir.org/)
- **BBMRI-ERIC Support Channels:** [BBMRI-ERIC Website](https://www.bbmri-eric.eu/)

We welcome collaboration and feedback to further improve the MIABIS on FHIR framework.

---  
**Version:** 1.0.0 | **FHIR Version:** R4/R5 | **Status:** Draft  

