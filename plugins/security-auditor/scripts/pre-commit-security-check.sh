#!/bin/bash
# Pre-commit security checks

echo "🔒 Running pre-commit security checks..."

FAILED=0

# Check for secrets in staged files
echo "Checking for secrets..."
git diff --cached --name-only | while read file; do
    if [ -f "$file" ]; then
        ./scripts/scan-for-secrets.sh "$file"
        if [ $? -ne 0 ]; then
            FAILED=1
        fi
    fi
done

# Check for security patterns
echo "Checking for security anti-patterns..."
git diff --cached --name-only | while read file; do
    if [ -f "$file" ]; then
        ./scripts/check-security-patterns.sh "$file"
    fi
done

# Check if .env files are being committed
if git diff --cached --name-only | grep -qE "\.env$|\.env\..*"; then
    echo "🔴 ERROR: .env file in commit! Add to .gitignore"
    FAILED=1
fi

if [ $FAILED -eq 1 ]; then
    echo ""
    echo "❌ Pre-commit security checks failed!"
    echo "Please fix the issues above before committing."
    exit 1
fi

echo "✅ Pre-commit security checks passed!"
exit 0
