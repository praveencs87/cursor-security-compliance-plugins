#!/bin/bash
# Scan files for hardcoded secrets and credentials

FILE="$1"

if [ ! -f "$FILE" ]; then
    exit 0
fi

# Patterns for common secrets
declare -A SECRET_PATTERNS=(
    ["AWS Access Key"]="AKIA[0-9A-Z]{16}"
    ["GitHub Token"]="gh[pousr]_[0-9a-zA-Z]{36}"
    ["Stripe Key"]="sk_live_[0-9a-zA-Z]{24,}"
    ["Generic API Key"]="api[_-]?key['\"]?\s*[:=]\s*['\"][0-9a-zA-Z]{20,}"
    ["Password"]="password['\"]?\s*[:=]\s*['\"][^'\"]{8,}"
    ["Private Key"]="-----BEGIN.*PRIVATE KEY-----"
    ["JWT Token"]="eyJ[a-zA-Z0-9_-]*\.eyJ[a-zA-Z0-9_-]*\.[a-zA-Z0-9_-]*"
)

FOUND_SECRETS=0

for name in "${!SECRET_PATTERNS[@]}"; do
    pattern="${SECRET_PATTERNS[$name]}"
    if grep -qE "$pattern" "$FILE"; then
        echo "🔴 SECURITY ALERT: Potential $name found in $FILE"
        FOUND_SECRETS=1
    fi
done

if [ $FOUND_SECRETS -eq 1 ]; then
    echo ""
    echo "⚠️  Hardcoded secrets detected!"
    echo "Please remove secrets and use environment variables or secret management."
    echo "Consider rotating any exposed credentials immediately."
fi

exit 0
