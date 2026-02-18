---
name: generate-security-report
description: Generate comprehensive security audit report with findings, metrics, and remediation roadmap.
---

# Generate Security Report

Create a detailed security audit report for stakeholders and development teams.

## Report sections

1. **Executive Summary**
   - Overall security posture
   - Critical findings count
   - Risk score and trend
   - Compliance status

2. **Vulnerability Breakdown**
   - By severity (Critical/High/Medium/Low)
   - By category (OWASP Top 10)
   - By component (dependencies, code, configuration)

3. **Detailed Findings**
   For each vulnerability:
   - Description and location
   - Severity and impact
   - Proof of concept (if applicable)
   - Remediation steps
   - References (CVE, CWE, OWASP)

4. **Dependency Analysis**
   - Vulnerable packages list
   - Outdated dependencies
   - License compliance issues
   - Recommended upgrades

5. **Code Quality Metrics**
   - Security hotspots
   - Code coverage for security tests
   - Technical debt related to security

6. **Remediation Roadmap**
   - Prioritized action items
   - Estimated effort
   - Recommended timeline
   - Quick wins vs. long-term fixes

7. **Compliance Checklist**
   - OWASP Top 10 coverage
   - Industry standards (PCI-DSS, HIPAA if applicable)
   - Best practices adherence

## Output format

Generate report as:
- Markdown file for documentation
- JSON for CI/CD integration
- HTML for stakeholder presentation
