---
name: pii-detector
description: Identify Personally Identifiable Information (PII) in code, databases, logs, and configuration files. Suggests anonymization techniques.
---

# PII Detector

## When to use

- Before deploying code that handles user data
- During privacy impact assessments
- When reviewing data collection practices
- Before sharing data with third parties

## Instructions

1. **Scan for Direct PII**
   - Names (first, last, full)
   - Email addresses
   - Phone numbers
   - Physical addresses
   - Social Security Numbers
   - Passport/ID numbers
   - Credit card numbers
   - Bank account numbers

2. **Scan for Indirect PII**
   - IP addresses
   - Device IDs
   - Cookie identifiers
   - Session tokens
   - User agent strings
   - Location coordinates
   - Biometric data

3. **Check Data Storage**
   - Database schemas with PII fields
   - Encryption status of PII columns
   - Access controls on PII tables
   - Backup procedures for PII

4. **Review Data Processing**
   - Where PII is collected
   - How PII is processed
   - Where PII is transmitted
   - How long PII is retained

5. **Identify Logging Issues**
   - PII in application logs
   - PII in error messages
   - PII in debug output
   - PII in analytics events

## Anonymization Recommendations

For each PII type found, suggest:
- **Hash**: For irreversible anonymization (e.g., user IDs for analytics)
- **Encrypt**: For reversible protection (e.g., stored email addresses)
- **Tokenize**: For payment data
- **Generalize**: For age, location (e.g., "25-34" instead of "28")
- **Suppress**: Remove entirely if not needed
- **Mask**: Partial redaction (e.g., "***@example.com")

## Output Format

- **PII Type**: Category of PII found
- **Location**: File, line number, or database table
- **Context**: How it's being used
- **Risk Level**: High/Medium/Low
- **Recommendation**: Specific anonymization or protection technique
- **GDPR Article**: Relevant GDPR article reference
