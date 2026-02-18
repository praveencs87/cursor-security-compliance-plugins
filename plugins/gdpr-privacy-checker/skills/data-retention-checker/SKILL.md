---
name: data-retention-checker
description: Verify data retention policies and automatic deletion mechanisms are properly implemented.
---

# Data Retention Checker

## When to use

- During privacy compliance audits
- Before data retention policy updates
- When implementing new data storage
- For GDPR Article 5 compliance verification

## Instructions

1. **Identify Data Categories**
   - User account data
   - Transaction records
   - Session data
   - Analytics data
   - Backup data
   - Audit logs
   - Communication records

2. **Check Retention Policies**
   - Documented retention period for each category
   - Legal basis for retention period
   - Business justification documented
   - Privacy policy reflects retention periods

3. **Verify Automatic Deletion**
   - Scheduled cleanup jobs exist
   - Deletion logic is correct
   - Cascading deletes implemented
   - Soft delete with recovery period
   - Hard delete after retention period
   - Deletion includes backups

4. **Test Deletion Mechanisms**
   - User-initiated deletion works
   - Account closure triggers data deletion
   - Right to be forgotten implemented
   - Deletion confirmation provided
   - Audit trail of deletions maintained

5. **Check Data Minimization**
   - Only necessary data collected
   - Excessive data identified
   - Unused fields removed
   - Data aggregation where possible

6. **Review Legal Holds**
   - Process for legal hold exceptions
   - Documentation of holds
   - Release process after hold lifted

## GDPR Requirements

- **Article 5(1)(e)**: Storage limitation principle
- **Article 17**: Right to erasure
- **Article 25**: Data protection by design

## Output Format

- **Data Type**: Category of data
- **Current Retention**: How long data is kept
- **Required Retention**: Legal/business requirement
- **Deletion Mechanism**: Automatic/manual
- **Compliance Status**: Compliant/Non-compliant
- **Issues**: Problems found
- **Recommendations**: Implementation improvements

## Common Issues to Flag

- Data stored indefinitely without justification
- No automatic deletion mechanism
- Deletion doesn't include backups
- No user-initiated deletion option
- Retention period not documented
- Excessive data collection
