---
name: run-security-scan
description: Run comprehensive security scan using Snyk, Trivy, and custom vulnerability checks. Generates detailed security report.
---

# Run Security Scan

Execute a comprehensive security audit of the codebase using multiple security tools.

## Steps

1. **Dependency Scanning**
   - Run `npm audit` or `pip-audit` for known vulnerabilities
   - Execute `snyk test` for comprehensive dependency analysis
   - Run `trivy fs --security-checks vuln .` for container and filesystem scanning

2. **Secret Detection**
   - Scan for hardcoded credentials and API keys
   - Check git history for exposed secrets
   - Verify .gitignore includes sensitive files

3. **Code Analysis**
   - Static analysis for injection vulnerabilities
   - Check for insecure cryptographic implementations
   - Verify authentication and authorization patterns

4. **Configuration Review**
   - Check security headers (CSP, HSTS, X-Frame-Options)
   - Review CORS configurations
   - Validate environment variable usage

5. **Generate Report**
   - Compile findings by severity
   - Provide remediation steps
   - Create actionable security backlog items

## Output

Generate a markdown report with:
- Executive summary
- Critical findings requiring immediate action
- High/Medium/Low priority issues
- Remediation recommendations
- Compliance status (OWASP Top 10)
