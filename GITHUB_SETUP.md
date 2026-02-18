# GitHub Repository Setup Guide

## Step-by-Step Instructions

### 1. Create GitHub Repository

1. Go to: https://github.com/new
2. Fill in repository details:
   - **Repository name**: `cursor-security-compliance-plugins` (or your preferred name)
   - **Description**: "Security Auditor and GDPR Privacy Checker plugins for Cursor IDE"
   - **Visibility**: ✅ **Public** (required for Cursor Marketplace)
   - **Initialize**: ❌ Do NOT initialize with README (we already have one)
3. Click "Create repository"

### 2. Connect Local Repository to GitHub

After creating the repository on GitHub, run these commands:

```bash
cd /home/praveen/CURSOR/security-compliance-plugins

# Add your GitHub repository as remote (replace with your actual repo URL)
git remote add origin https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Example:**
```bash
git remote add origin https://github.com/praveenuser/cursor-security-compliance-plugins.git
git branch -M main
git push -u origin main
```

### 3. Verify Repository

After pushing, verify on GitHub:
- ✅ All files are visible
- ✅ README.md displays correctly
- ✅ Logos are visible (check `plugins/*/assets/logo.svg`)
- ✅ Repository is public

### 4. Submit to Cursor Marketplace

Once your GitHub repository is ready:

#### Option 1: Via Cursor Marketplace Portal
1. Go to: https://cursor.com/marketplace/publish
2. Enter your repository URL
3. Fill out the submission form
4. Submit

#### Option 2: Via Email
Send email to: **kniparko@anysphere.com**

**Email Template:**
```
Subject: Cursor Plugin Submission: Security & Compliance Plugins

Hi Cursor Team,

I'd like to submit two plugins for the Cursor Marketplace:

1. Security Auditor - Comprehensive security auditing with OWASP Top 10 checks
2. GDPR Privacy Checker - Privacy compliance and PII detection

Repository: https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins

Both plugins include:
- Rules, Skills, Agents, Commands, and Hooks
- Comprehensive documentation
- MIT License

Please let me know if you need any additional information.

Best regards,
Praveen
```

## Repository Information to Update

Before submitting, update these files with your actual GitHub URL:

### 1. Update README.md
Replace placeholder URLs:
```markdown
- GitHub Issues: https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins/issues
- Repository: https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins
```

### 2. Update plugin.json files
Both plugin manifests at:
- `plugins/security-auditor/.cursor-plugin/plugin.json`
- `plugins/gdpr-privacy-checker/.cursor-plugin/plugin.json`

Add:
```json
{
  "homepage": "https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins",
  "repository": "https://github.com/YOUR_USERNAME/cursor-security-compliance-plugins"
}
```

### 3. Update marketplace.json
File: `.cursor-plugin/marketplace.json`

Update owner information:
```json
{
  "owner": {
    "name": "Your Name or Organization",
    "email": "your-email@example.com"
  }
}
```

## Pre-Submission Checklist

Before pushing to GitHub:

- [ ] Git repository initialized ✅ (already done)
- [ ] All files committed ✅ (already done)
- [ ] Update author information in plugin.json files
- [ ] Update repository URLs in README.md
- [ ] Verify all scripts are executable
- [ ] Test plugins locally in Cursor
- [ ] Create GitHub repository (public)
- [ ] Push to GitHub
- [ ] Verify repository displays correctly
- [ ] Submit to Cursor Marketplace

## Quick Commands Reference

```bash
# Check git status
git status

# View commit history
git log --oneline

# Add more changes
git add .
git commit -m "Update repository URLs"
git push

# View remote URL
git remote -v
```

## Troubleshooting

### Authentication Issues
If you need to authenticate with GitHub:

```bash
# Using HTTPS (will prompt for username/password or token)
git push

# Or use SSH (if you have SSH keys set up)
git remote set-url origin git@github.com:YOUR_USERNAME/cursor-security-compliance-plugins.git
```

### Personal Access Token
If using HTTPS and two-factor authentication:
1. Go to: https://github.com/settings/tokens
2. Generate new token (classic)
3. Select scopes: `repo` (full control)
4. Use token as password when pushing

## After Submission

Once submitted:
- Monitor for feedback from Cursor team
- Respond to any questions or change requests
- Update version numbers for future releases
- Maintain changelog in README.md

## Support

For issues:
- Cursor Marketplace: https://cursor.com/marketplace
- Cursor Docs: https://cursor.com/docs/plugins/building
- Email: kniparko@anysphere.com

---

**Current Status:**
- ✅ Git repository initialized
- ✅ Initial commit created
- ⏳ Waiting for GitHub repository creation
- ⏳ Waiting for push to GitHub
- ⏳ Waiting for marketplace submission
