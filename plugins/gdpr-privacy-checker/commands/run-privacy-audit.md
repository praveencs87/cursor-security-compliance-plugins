---
name: run-privacy-audit
description: Execute comprehensive GDPR and privacy compliance audit. Generates detailed compliance report with findings and remediation steps.
---

# Run Privacy Audit

Execute a complete privacy compliance audit covering all GDPR requirements.

## Audit Steps

1. **Data Inventory**
   - Identify all personal data collected
   - Map data flows (collection, processing, storage, transfer, deletion)
   - Classify data by sensitivity level
   - Document legal basis for each processing activity

2. **PII Detection**
   - Scan code for PII handling
   - Check database schemas for personal data
   - Review API endpoints collecting PII
   - Identify PII in logs and error messages

3. **Consent Management Review**
   - Verify consent collection mechanisms
   - Check consent storage and records
   - Test consent withdrawal functionality
   - Review cookie consent implementation

4. **Data Subject Rights**
   - Verify right to access implementation
   - Check right to erasure (deletion)
   - Test right to data portability
   - Review right to rectification
   - Verify right to object

5. **Data Retention**
   - Review retention policies
   - Check automatic deletion mechanisms
   - Verify deletion includes backups
   - Test user-initiated deletion

6. **Security Measures**
   - Encryption at rest and in transit
   - Access controls and authentication
   - Audit logging
   - Data breach procedures

7. **Third-Party Compliance**
   - Review data processing agreements
   - Check international data transfers
   - Verify third-party GDPR compliance
   - Audit data sharing practices

8. **Documentation Review**
   - Privacy policy accuracy
   - Records of processing activities (Article 30)
   - Data protection impact assessments (DPIAs)
   - Data breach notification procedures

## Output

Generate comprehensive report with:
- **Executive Summary**: Overall compliance status
- **Compliance Score**: Percentage of requirements met
- **Critical Issues**: High-priority violations
- **Findings by Category**: Organized by GDPR article
- **Risk Assessment**: Potential fines and impacts
- **Remediation Roadmap**: Prioritized action items
- **Timeline**: Recommended implementation schedule
