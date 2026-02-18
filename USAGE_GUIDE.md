# Usage Guide - Security & Compliance Cursor Plugins

Complete guide for using the Security Auditor and GDPR Privacy Checker plugins.

## Table of Contents

1. [Installation](#installation)
2. [Security Auditor Usage](#security-auditor-usage)
3. [GDPR Privacy Checker Usage](#gdpr-privacy-checker-usage)
4. [Common Workflows](#common-workflows)
5. [Best Practices](#best-practices)
6. [Troubleshooting](#troubleshooting)

## Installation

### Option 1: From Cursor Marketplace (Recommended)
1. Open Cursor
2. Go to Settings → Plugins
3. Search for "Security Auditor" or "GDPR Privacy Checker"
4. Click Install

### Option 2: From Source
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/cursor-security-plugins.git
   ```
2. In Cursor: Settings → Plugins → Install from folder
3. Select the plugin folder

### Option 3: Local Development
1. Copy the plugin folder to your project
2. Reference in `.cursorrules` or `.cursor/` directory

## Security Auditor Usage

### 1. Run Comprehensive Security Scan

```
@security-auditor run security scan
```

This executes a full security audit including:
- SQL injection detection
- XSS vulnerability scanning
- Command injection checks
- Secret detection
- Dependency vulnerability scanning
- OWASP Top 10 compliance

**Output:** Detailed security report with findings, severity levels, and remediation steps.

### 2. Security Code Review

```
@security-reviewer review this code for security vulnerabilities
```

Use this agent to review specific code sections for:
- Injection risks
- Exposed secrets
- Insecure cryptography
- Authentication/authorization issues
- Data exposure

**Example:**
```
@security-reviewer check this authentication function for security issues
```

### 3. Scan for Exposed Secrets

```
@secrets-scanner find any hardcoded credentials in this file
```

Detects:
- API keys (AWS, GitHub, Stripe, etc.)
- Passwords and credentials
- Private keys
- JWT tokens
- Database connection strings

**Example:**
```
@secrets-scanner scan the entire codebase for exposed secrets
```

### 4. Dependency Audit

```
@dependency-auditor check for vulnerable packages
```

Integrates with:
- npm audit
- Snyk
- Trivy

**Example:**
```
@dependency-auditor audit dependencies and suggest upgrades
```

### 5. OWASP Top 10 Compliance Check

```
@owasp-checker verify OWASP Top 10 compliance
```

Checks all OWASP Top 10 categories:
- A01: Broken Access Control
- A02: Cryptographic Failures
- A03: Injection
- A04: Insecure Design
- A05: Security Misconfiguration
- A06: Vulnerable Components
- A07: Authentication Failures
- A08: Software and Data Integrity Failures
- A09: Security Logging Failures
- A10: Server-Side Request Forgery

### 6. Generate Security Report

```
@security-auditor generate security report
```

Creates comprehensive documentation including:
- Executive summary
- Vulnerability breakdown by severity
- Detailed findings with remediation
- Compliance status
- Remediation roadmap

## GDPR Privacy Checker Usage

### 1. Run Privacy Compliance Audit

```
@gdpr-privacy-checker run privacy audit
```

Comprehensive GDPR audit covering:
- PII detection
- Consent management
- Data retention policies
- Data subject rights
- Third-party data sharing
- Security measures

**Output:** Full compliance report with GDPR article references.

### 2. Detect PII in Code

```
@pii-scanner find all PII in this codebase
```

Identifies:
- Direct identifiers (names, emails, phone numbers)
- Indirect identifiers (IP addresses, device IDs)
- Sensitive categories (health data, biometric data)

**Example:**
```
@pii-scanner check if this API endpoint exposes PII
```

### 3. Compliance Review

```
@compliance-reviewer check GDPR compliance for this feature
```

Reviews code against GDPR requirements:
- Legal basis for processing
- Data protection principles
- Individual rights implementation
- Special categories of data handling

**Example:**
```
@compliance-reviewer verify this user registration flow is GDPR compliant
```

### 4. Audit Consent Management

```
@consent-auditor verify consent implementation
```

Checks:
- Consent collection mechanisms
- Consent storage and records
- Withdrawal functionality
- Cookie consent
- Granular consent options

**Example:**
```
@consent-auditor review the consent banner implementation
```

### 5. Check Data Retention

```
@data-retention-checker review retention policies
```

Verifies:
- Documented retention periods
- Automatic deletion mechanisms
- User-initiated deletion
- Backup inclusion in deletion

**Example:**
```
@data-retention-checker check if user data is properly deleted after account closure
```

### 6. Generate Article 30 Documentation

```
@gdpr-privacy-checker generate data processing audit
```

Creates Records of Processing Activities documentation required by GDPR Article 30.

## Common Workflows

### Workflow 1: Pre-Deployment Security Check

```bash
# 1. Run security scan
@security-auditor run security scan

# 2. Check for secrets
@secrets-scanner scan for exposed credentials

# 3. Audit dependencies
@dependency-auditor check vulnerable packages

# 4. Generate report
@security-auditor generate security report
```

### Workflow 2: GDPR Compliance Verification

```bash
# 1. Run privacy audit
@gdpr-privacy-checker run privacy audit

# 2. Detect PII
@pii-scanner find all PII

# 3. Check consent
@consent-auditor verify consent management

# 4. Review retention
@data-retention-checker check retention policies

# 5. Generate documentation
@gdpr-privacy-checker generate data processing audit
```

### Workflow 3: New Feature Security Review

```bash
# 1. Security review
@security-reviewer review this new feature for vulnerabilities

# 2. Privacy review
@compliance-reviewer check GDPR compliance for this feature

# 3. PII check
@pii-scanner check if this feature handles PII

# 4. Consent verification (if collecting data)
@consent-auditor verify consent for data collection
```

### Workflow 4: Code Review Before PR

```bash
# 1. Security patterns check
@security-reviewer review changes for security issues

# 2. Secret scan
@secrets-scanner check for hardcoded credentials

# 3. PII detection
@pii-scanner verify no PII in logs or errors

# 4. OWASP check
@owasp-checker verify OWASP compliance
```

## Best Practices

### Security Auditor Best Practices

1. **Run scans regularly**
   - Before each deployment
   - After dependency updates
   - Weekly for active projects

2. **Address critical findings immediately**
   - Exposed secrets: Rotate immediately
   - SQL injection: Fix before deployment
   - XSS vulnerabilities: Patch urgently

3. **Use hooks effectively**
   - Enable `beforeShellExecution` hook to block dangerous commands
   - Use `afterFileEdit` hook to catch secrets early
   - Enable `beforeCommit` hook for pre-commit validation

4. **Keep dependencies updated**
   - Run `@dependency-auditor` weekly
   - Update vulnerable packages promptly
   - Review security advisories

### GDPR Privacy Checker Best Practices

1. **Identify PII early**
   - Run `@pii-scanner` on new features
   - Document all PII collection
   - Implement protection before deployment

2. **Maintain consent records**
   - Audit consent implementation regularly
   - Test withdrawal mechanisms
   - Keep consent version history

3. **Enforce retention policies**
   - Document retention periods
   - Implement automatic deletion
   - Test deletion mechanisms

4. **Regular compliance audits**
   - Monthly privacy audits
   - Quarterly Article 30 updates
   - Annual comprehensive review

5. **Document everything**
   - Maintain processing records
   - Document legal basis
   - Keep audit trails

## Troubleshooting

### Security Auditor Issues

**Issue: Scripts not executing**
```bash
# Make scripts executable
chmod +x plugins/security-auditor/scripts/*.sh
```

**Issue: npm audit not found**
```bash
# Install npm if needed
sudo apt install npm
# Or use yarn
sudo apt install yarn
```

**Issue: Snyk not installed**
```bash
# Install Snyk CLI
npm install -g snyk
snyk auth
```

**Issue: Trivy not installed**
```bash
# Install Trivy
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo "deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy
```

### GDPR Privacy Checker Issues

**Issue: PII not detected**
- Ensure code is properly formatted
- Check that patterns match your data format
- Review custom PII types in your domain

**Issue: False positives**
- Review context of flagged items
- Add exceptions for test data
- Adjust detection patterns if needed

**Issue: Consent audit failing**
- Verify consent implementation follows GDPR requirements
- Check consent storage includes required fields
- Test withdrawal mechanisms

## Advanced Usage

### Custom Rules

Add custom security or privacy rules by creating `.mdc` files in the `rules/` directory:

```markdown
---
description: Your custom rule description
alwaysApply: true
---

your-custom-rule:

- Rule guideline 1
- Rule guideline 2
- Example code patterns
```

### Custom Skills

Create custom skills in `skills/your-skill/SKILL.md`:

```markdown
---
name: your-skill
description: What this skill does
---

# Your Skill Name

## When to use
- Use case 1
- Use case 2

## Instructions
1. Step 1
2. Step 2
```

### Integration with CI/CD

Add to your CI/CD pipeline:

```yaml
# .github/workflows/security.yml
name: Security Scan
on: [push, pull_request]
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Security Scan
        run: |
          npm audit
          snyk test
          # Add custom security checks
```

## Support

For issues or questions:
- GitHub Issues: [repository-url]
- Email: security@example.com
- Documentation: [docs-url]

## Updates

Check for plugin updates regularly:
- Cursor Settings → Plugins → Check for updates
- Or pull latest from repository

## License

MIT License - See LICENSE file for details
