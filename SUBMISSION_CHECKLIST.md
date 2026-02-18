# Submission Checklist

Before submitting these plugins to the Cursor Marketplace, verify the following:

## General Requirements

- [x] Each plugin has a valid `.cursor-plugin/plugin.json`
- [x] Plugin names are unique, lowercase, and kebab-case
- [x] `.cursor-plugin/marketplace.json` entries map to real plugin folders
- [x] All frontmatter metadata is present in rule, skill, agent, and command files
- [x] Logos are committed and referenced with relative paths
- [x] README.md files are complete and accurate

## Security Auditor Plugin

### Structure
- [x] `.cursor-plugin/plugin.json` with correct metadata
- [x] Logo at `assets/logo.svg`
- [x] 5 security rules (.mdc files)
- [x] 3 skills (SKILL.md files)
- [x] 2 agents (.md files)
- [x] 2 commands (.md files)
- [x] Hooks configuration (hooks.json)
- [x] 6 automation scripts (.sh files)
- [x] README.md with usage instructions

### Content
- [x] SQL Injection Prevention rule
- [x] XSS Prevention rule
- [x] Command Injection Prevention rule
- [x] Secrets Management rule
- [x] Insecure Crypto rule
- [x] Vulnerability Scanner skill
- [x] Dependency Auditor skill
- [x] OWASP Checker skill
- [x] Security Reviewer agent
- [x] Secrets Scanner agent
- [x] Run Security Scan command
- [x] Generate Security Report command
- [x] Security hooks (beforeShellExecution, afterFileEdit, etc.)

## GDPR Privacy Checker Plugin

### Structure
- [x] `.cursor-plugin/plugin.json` with correct metadata
- [x] Logo at `assets/logo.svg`
- [x] 5 privacy rules (.mdc files)
- [x] 3 skills (SKILL.md files)
- [x] 2 agents (.md files)
- [x] 2 commands (.md files)
- [x] README.md with usage instructions

### Content
- [x] PII Handling rule
- [x] Data Retention rule
- [x] Consent Management rule
- [x] Data Anonymization rule
- [x] Third-Party Sharing rule
- [x] PII Detector skill
- [x] Consent Auditor skill
- [x] Data Retention Checker skill
- [x] Compliance Reviewer agent
- [x] PII Scanner agent
- [x] Run Privacy Audit command
- [x] Generate Data Processing Audit command

## Documentation

- [x] Main README.md with overview of both plugins
- [x] Individual plugin README.md files
- [x] USAGE_GUIDE.md with comprehensive examples
- [x] LICENSE file (MIT)
- [x] .gitignore file
- [x] SUBMISSION_CHECKLIST.md (this file)

## Testing

Before submission, test:

### Security Auditor
- [ ] Run `@security-auditor run security scan` on a test project
- [ ] Verify `@security-reviewer` provides relevant security feedback
- [ ] Test `@secrets-scanner` detects common secret patterns
- [ ] Confirm hooks execute correctly (make scripts executable first)
- [ ] Verify dependency auditor integrates with npm audit/Snyk

### GDPR Privacy Checker
- [ ] Run `@gdpr-privacy-checker run privacy audit` on a test project
- [ ] Verify `@pii-scanner` detects PII in code
- [ ] Test `@compliance-reviewer` provides GDPR-specific feedback
- [ ] Confirm consent auditor identifies consent issues
- [ ] Verify data retention checker works correctly

## Pre-Submission Steps

1. **Make scripts executable**
   ```bash
   chmod +x plugins/security-auditor/scripts/*.sh
   ```

2. **Test locally**
   - Install plugins in Cursor
   - Run all commands
   - Verify agents respond correctly
   - Check rules are applied

3. **Review all files**
   - Check for typos
   - Verify all links work
   - Ensure examples are accurate
   - Validate JSON syntax

4. **Update metadata**
   - Set correct version numbers
   - Update author information
   - Add repository URL
   - Set homepage URL

5. **Create repository**
   - Initialize git repository
   - Commit all files
   - Push to GitHub
   - Verify repository is public

6. **Final validation**
   - All files committed
   - No sensitive data in repository
   - README renders correctly on GitHub
   - Logos display properly

## Submission

### Method 1: Via Cursor Team
- Email: kniparko@anysphere.com
- Subject: "Cursor Plugin Submission: Security & Compliance Plugins"
- Include:
  - Repository URL
  - Brief description
  - Screenshots (optional)
  - Contact information

### Method 2: Via Slack (if available)
- Share repository link in appropriate channel
- Provide brief overview
- Mention both plugins in submission

### Method 3: Via Marketplace Portal
- Go to: https://cursor.com/marketplace/publish
- Submit repository link
- Fill out submission form

## Post-Submission

- [ ] Monitor for feedback from Cursor team
- [ ] Address any requested changes
- [ ] Update version numbers for future releases
- [ ] Maintain changelog
- [ ] Respond to user issues/feedback

## Repository Information

**Repository URL:** [To be added]
**Homepage:** [To be added]
**Author:** Security Tools Team
**Email:** security@example.com
**License:** MIT

## Notes

- Both plugins follow the official Cursor plugin template structure
- All components include proper frontmatter metadata
- Scripts include error handling and user feedback
- Documentation is comprehensive with examples
- Plugins are production-ready

## Version History

- **1.0.0** - Initial release
  - Security Auditor with OWASP Top 10 coverage
  - GDPR Privacy Checker with full GDPR compliance
  - Comprehensive documentation
  - Automated hooks and scripts
