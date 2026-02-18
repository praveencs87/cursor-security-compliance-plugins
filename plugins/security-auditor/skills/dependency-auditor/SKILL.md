---
name: dependency-auditor
description: Audit project dependencies for known vulnerabilities and outdated packages. Integrates with npm audit, Snyk, and Trivy.
---

# Dependency Auditor

## When to use

- Before adding new dependencies
- During regular security reviews
- After dependency updates
- When investigating security incidents

## Instructions

1. Analyze package.json, package-lock.json, requirements.txt, or equivalent files
2. Identify dependencies with known CVEs
3. Check for outdated packages with security patches
4. Flag dependencies with high severity vulnerabilities
5. Recommend safe upgrade paths
6. Identify unused or unnecessary dependencies
7. Check for typosquatting or malicious packages
8. Verify package integrity and checksums

## Tools to use

Run these commands and analyze results:
```bash
npm audit
npm outdated
snyk test
trivy fs --security-checks vuln .
```

## Output format

- **Package**: Name and current version
- **Vulnerability**: CVE ID and description
- **Severity**: Critical/High/Medium/Low
- **Fixed in**: Version that fixes the issue
- **Recommendation**: Upgrade command or mitigation
