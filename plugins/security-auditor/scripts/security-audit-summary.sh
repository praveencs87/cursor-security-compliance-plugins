#!/bin/bash
# Generate security audit summary at session end

echo "📊 Security Audit Summary"
echo "========================="
echo ""

# Count files modified
MODIFIED_FILES=$(git diff --name-only | wc -l)
echo "Files modified in session: $MODIFIED_FILES"

# Run quick security scan
echo ""
echo "Running quick security scan..."

ISSUES=0

# Check for common vulnerabilities
if grep -rE "SELECT.*\$\{|INSERT.*\$\{" . --include="*.js" --include="*.ts" 2>/dev/null | grep -v node_modules | grep -q .; then
    echo "⚠️  SQL injection patterns detected"
    ISSUES=$((ISSUES + 1))
fi

if grep -rE "innerHTML\s*=|dangerouslySetInnerHTML" . --include="*.js" --include="*.jsx" --include="*.ts" --include="*.tsx" 2>/dev/null | grep -v node_modules | grep -q .; then
    echo "⚠️  XSS patterns detected"
    ISSUES=$((ISSUES + 1))
fi

if grep -rE "password.*=.*['\"][^'\"]{1,20}['\"]|api[_-]?key.*=.*['\"]" . --include="*.js" --include="*.ts" --include="*.py" 2>/dev/null | grep -v node_modules | grep -q .; then
    echo "⚠️  Potential hardcoded secrets detected"
    ISSUES=$((ISSUES + 1))
fi

echo ""
if [ $ISSUES -eq 0 ]; then
    echo "✅ No major security issues detected"
else
    echo "⚠️  $ISSUES potential security issue(s) found"
    echo "Run 'security-scan' command for detailed analysis"
fi

echo ""
echo "Recommendation: Run full security audit before deployment"
