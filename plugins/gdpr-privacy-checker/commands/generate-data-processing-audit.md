---
name: generate-data-processing-audit
description: Generate audit log of all data processing activities for GDPR Article 30 compliance (Records of Processing Activities).
---

# Generate Data Processing Audit

Create comprehensive records of processing activities as required by GDPR Article 30.

## Required Information

For each processing activity, document:

1. **Basic Information**
   - Name and contact details of controller
   - Name and contact details of data protection officer (if applicable)
   - Purposes of processing
   - Categories of data subjects
   - Categories of personal data

2. **Data Recipients**
   - Categories of recipients
   - Third-party processors
   - International transfers and safeguards

3. **Retention Periods**
   - Time limits for erasure
   - Criteria for determining retention

4. **Security Measures**
   - Technical measures
   - Organizational measures
   - Encryption methods
   - Access controls

## Processing Activities to Document

- User registration and authentication
- Customer relationship management
- Marketing and communications
- Analytics and performance monitoring
- Payment processing
- Customer support
- Legal compliance
- Security and fraud prevention

## Output Format

Generate structured documentation:

```json
{
  "controller": {
    "name": "Company Name",
    "contact": "dpo@company.com"
  },
  "processingActivities": [
    {
      "name": "User Registration",
      "purpose": "Account creation and authentication",
      "legalBasis": "Contract (Article 6(1)(b))",
      "dataCategories": ["name", "email", "password"],
      "dataSubjects": ["website users", "customers"],
      "recipients": ["email service provider"],
      "retention": "Account lifetime + 30 days",
      "security": ["AES-256 encryption", "bcrypt password hashing"],
      "internationalTransfers": "None"
    }
  ]
}
```

## Compliance Checklist

- [ ] All processing activities documented
- [ ] Legal basis identified for each activity
- [ ] Data categories specified
- [ ] Recipients listed
- [ ] Retention periods defined
- [ ] Security measures described
- [ ] International transfers documented
- [ ] Regular review process established

## Review Schedule

- Update records when new processing activities added
- Review quarterly for accuracy
- Update after privacy policy changes
- Maintain version history
