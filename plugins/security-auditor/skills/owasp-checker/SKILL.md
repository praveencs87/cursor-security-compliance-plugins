---
name: owasp-checker
description: Check code against OWASP Top 10 security risks. Comprehensive security review focused on the most critical web application vulnerabilities.
---

# OWASP Top 10 Checker

## When to use

- During security code reviews
- Before major releases
- When onboarding new team members
- For compliance requirements

## OWASP Top 10 Checks

1. **A01:2021 - Broken Access Control**
   - Check authorization on all sensitive endpoints
   - Verify user can only access their own resources
   - Look for missing permission checks

2. **A02:2021 - Cryptographic Failures**
   - Identify weak encryption algorithms
   - Check for unencrypted sensitive data
   - Verify proper key management

3. **A03:2021 - Injection**
   - SQL injection in database queries
   - Command injection in shell execution
   - LDAP, XML, and other injection types

4. **A04:2021 - Insecure Design**
   - Review architecture for security flaws
   - Check for missing security controls
   - Validate threat modeling

5. **A05:2021 - Security Misconfiguration**
   - Check for default credentials
   - Verify security headers
   - Review error messages for information disclosure

6. **A06:2021 - Vulnerable Components**
   - Scan dependencies for known vulnerabilities
   - Check for outdated libraries

7. **A07:2021 - Authentication Failures**
   - Review authentication implementation
   - Check for weak password policies
   - Verify session management

8. **A08:2021 - Software and Data Integrity Failures**
   - Check for insecure deserialization
   - Verify CI/CD pipeline security
   - Review update mechanisms

9. **A09:2021 - Security Logging Failures**
   - Verify security events are logged
   - Check for sensitive data in logs
   - Validate log integrity

10. **A10:2021 - Server-Side Request Forgery (SSRF)**
    - Check URL validation in HTTP requests
    - Verify whitelist of allowed domains
    - Review proxy configurations

## Output

Provide a checklist with pass/fail for each category and specific findings.
