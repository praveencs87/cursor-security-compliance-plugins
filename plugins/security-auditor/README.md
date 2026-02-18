# Security Auditor Plugin

Comprehensive security auditing plugin for Cursor with vulnerability scanning, OWASP Top 10 checks, dependency audits, and automated security hooks.

## Features

### 🛡️ Rules
- **SQL Injection Prevention** - Enforce parameterized queries
- **XSS Prevention** - Proper input escaping and sanitization
- **Command Injection Prevention** - Safe shell command execution
- **Secrets Management** - Prevent hardcoded credentials
- **Insecure Crypto** - Enforce strong cryptographic algorithms

### 🔍 Skills
- **Vulnerability Scanner** - Comprehensive OWASP Top 10 scanning
- **Dependency Auditor** - npm audit, Snyk, Trivy integration
- **OWASP Checker** - Full OWASP Top 10 compliance checking

### 🤖 Agents
- **Security Reviewer** - AI agent for security code reviews
- **Secrets Scanner** - Specialized agent for detecting exposed credentials

### ⚡ Commands
- **run-security-scan** - Execute comprehensive security audit
- **generate-security-report** - Create detailed security reports

### 🪝 Hooks
- **beforeShellExecution** - Block dangerous shell commands
- **afterFileEdit** - Scan for secrets and security anti-patterns
- **beforeCommit** - Pre-commit security validation
- **sessionEnd** - Security audit summary

## Installation

Add to your `.cursorrules` or install from Cursor Marketplace.

## Usage

### Run Security Scan
```
@security-auditor run security scan
```

### Review Code for Security Issues
```
@security-reviewer review this code for vulnerabilities
```

### Check Dependencies
```
@dependency-auditor check for vulnerable packages
```

### Scan for Secrets
```
@secrets-scanner find any exposed credentials
```

## Configuration

Scripts require execution permissions:
```bash
chmod +x scripts/*.sh
```

## Requirements

Optional but recommended:
- `npm` or `yarn` for dependency scanning
- `snyk` for advanced vulnerability detection
- `trivy` for container scanning

## License

MIT
