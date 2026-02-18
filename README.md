# Security & Compliance Cursor Plugins

A collection of professional Cursor plugins for security auditing and GDPR/privacy compliance.

## Plugins

### 1. 🔒 Security Auditor
Comprehensive security auditing with vulnerability scanning, OWASP Top 10 checks, and dependency audits.

**Features:**
- SQL injection, XSS, and command injection detection
- Secrets and credentials scanning
- Insecure cryptography detection
- OWASP Top 10 compliance checking
- Dependency vulnerability scanning (npm audit, Snyk, Trivy)
- Automated security hooks (beforeShellExecution, afterFileEdit)
- Security report generation

### 2. 🛡️ GDPR Privacy Checker
GDPR and privacy compliance checker for identifying PII, validating consent, and ensuring regulatory compliance.

**Features:**
- PII detection and classification
- Consent management auditing
- Data retention policy validation
- Data anonymization recommendations
- Third-party data sharing controls
- GDPR Article 30 documentation generation
- Privacy impact assessments

## Installation

### From Cursor Marketplace
1. Open Cursor Settings
2. Go to Plugins
3. Search for "Security Auditor" or "GDPR Privacy Checker"
4. Click Install

### From Source
1. Clone this repository
2. In Cursor, go to Settings → Plugins → Install from folder
3. Select the plugin folder you want to install

## Quick Start

### Security Auditor

```bash
# Run comprehensive security scan
@security-auditor run security scan

# Review code for vulnerabilities
@security-reviewer check this code for security issues

# Scan for secrets
@secrets-scanner find exposed credentials

# Check dependencies
@dependency-auditor audit packages
```

### GDPR Privacy Checker

```bash
# Run privacy compliance audit
@gdpr-privacy-checker run privacy audit

# Detect PII
@pii-scanner find all PII in this code

# Check consent implementation
@consent-auditor verify consent management

# Review data retention
@data-retention-checker check retention policies
```

## Plugin Structure

```
cursor-security-plugins/
├── .cursor-plugin/
│   └── marketplace.json          # Multi-plugin marketplace config
├── plugins/
│   ├── security-auditor/
│   │   ├── .cursor-plugin/
│   │   │   └── plugin.json       # Plugin manifest
│   │   ├── assets/
│   │   │   └── logo.svg          # Plugin logo
│   │   ├── rules/                # Security rules (.mdc files)
│   │   ├── skills/               # Security skills (SKILL.md)
│   │   ├── agents/               # AI agents (.md files)
│   │   ├── commands/             # Custom commands (.md files)
│   │   ├── hooks/                # Event hooks (hooks.json)
│   │   ├── scripts/              # Automation scripts (.sh)
│   │   └── README.md
│   └── gdpr-privacy-checker/
│       ├── .cursor-plugin/
│       │   └── plugin.json
│       ├── assets/
│       │   └── logo.svg
│       ├── rules/                # Privacy rules (.mdc files)
│       ├── skills/               # Privacy skills (SKILL.md)
│       ├── agents/               # Compliance agents (.md files)
│       ├── commands/             # Audit commands (.md files)
│       └── README.md
└── README.md                     # This file
```

## Components

### Rules
Persistent coding standards and security/privacy guidelines that are always applied during development.

### Skills
Specialized capabilities that agents can invoke for specific tasks like vulnerability scanning or PII detection.

### Agents
AI specialists with domain expertise in security or privacy compliance that provide focused code reviews.

### Commands
Custom commands that execute complex workflows like security scans or compliance audits.

### Hooks
Event-driven automation that runs at specific points (before shell execution, after file edits, etc.).

## Security Auditor Components

**Rules:**
- SQL Injection Prevention
- XSS Prevention
- Command Injection Prevention
- Secrets Management
- Insecure Crypto Detection

**Skills:**
- Vulnerability Scanner
- Dependency Auditor
- OWASP Top 10 Checker

**Agents:**
- Security Reviewer
- Secrets Scanner

**Commands:**
- Run Security Scan
- Generate Security Report

**Hooks:**
- Block dangerous shell commands
- Scan for secrets after edits
- Pre-commit security checks
- Session-end security summary

## GDPR Privacy Checker Components

**Rules:**
- PII Handling Standards
- Data Retention Policies
- Consent Management
- Data Anonymization
- Third-Party Sharing Controls

**Skills:**
- PII Detector
- Consent Auditor
- Data Retention Checker

**Agents:**
- Compliance Reviewer
- PII Scanner

**Commands:**
- Run Privacy Audit
- Generate Data Processing Audit (Article 30)

## Requirements

### Security Auditor
- Optional: npm/yarn for dependency scanning
- Optional: Snyk CLI for advanced vulnerability detection
- Optional: Trivy for container scanning

### GDPR Privacy Checker
- No external dependencies required

## Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - see LICENSE file for details

## Support

For issues, questions, or feature requests:
- GitHub Issues: https://github.com/praveencs87/cursor-security-compliance-plugins/issues
- Email: praveencs87@gmail.com

## Compliance Notes

These plugins are tools to assist with security and privacy compliance. They do not guarantee compliance with GDPR, OWASP, or other standards. Always consult with legal and security professionals for compliance verification.

## Version History

### 1.0.0 (Initial Release)
- Security Auditor plugin with OWASP Top 10 coverage
- GDPR Privacy Checker plugin with full GDPR article coverage
- Automated hooks for security and privacy checks
- Comprehensive documentation and examples
