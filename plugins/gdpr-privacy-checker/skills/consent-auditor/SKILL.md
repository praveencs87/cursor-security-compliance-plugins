---
name: consent-auditor
description: Audit consent management implementation for GDPR compliance. Verify consent collection, storage, and withdrawal mechanisms.
---

# Consent Auditor

## When to use

- Before launching new data collection features
- During GDPR compliance audits
- When adding third-party integrations
- After privacy policy updates

## Instructions

1. **Verify Consent Collection**
   - Check for explicit consent requests
   - Ensure no pre-checked boxes
   - Verify clear and plain language
   - Confirm separate consent for different purposes
   - Check consent is freely given (no forced bundling)

2. **Review Consent Storage**
   - Consent records include timestamp
   - User ID linked to consent
   - Specific purposes documented
   - IP address or proof of consent stored
   - Version of privacy policy recorded

3. **Test Consent Withdrawal**
   - Easy-to-find withdrawal mechanism
   - Withdrawal as easy as giving consent
   - Immediate effect of withdrawal
   - Confirmation of withdrawal provided
   - Data processing stops after withdrawal

4. **Check Granular Consent**
   - Separate consent for:
     - Essential functionality
     - Analytics and performance
     - Marketing and advertising
     - Third-party data sharing
     - Profiling and automated decisions

5. **Verify Cookie Consent**
   - Cookie banner implementation
   - Consent before non-essential cookies
   - Cookie policy documentation
   - Cookie preferences management

6. **Audit Consent Renewal**
   - Re-consent after policy changes
   - Periodic consent refresh for ongoing processing
   - Clear notification of changes

## Compliance Checklist

- [ ] Consent is opt-in, not opt-out
- [ ] Clear purpose for each consent
- [ ] Consent records maintained
- [ ] Withdrawal mechanism available
- [ ] No forced consent bundling
- [ ] Age verification for children's data
- [ ] Consent valid for specified purpose only
- [ ] Re-consent after material changes

## Output Format

- **Consent Type**: What consent is for
- **Compliance Status**: Compliant/Non-compliant
- **Issues Found**: Specific problems
- **GDPR Requirements**: Relevant articles (Art. 6, 7, 8)
- **Remediation**: Steps to achieve compliance
