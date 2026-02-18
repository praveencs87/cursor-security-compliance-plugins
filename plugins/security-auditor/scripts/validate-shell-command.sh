#!/bin/bash
# Validate shell commands before execution to prevent dangerous operations

COMMAND="$1"

# List of dangerous patterns
DANGEROUS_PATTERNS=(
    "rm -rf /"
    "rm -rf /*"
    "mkfs"
    "dd if=/dev/zero"
    "> /dev/sda"
    "wget.*|.*sh"
    "curl.*|.*sh"
    "eval.*\$"
    "chmod 777"
)

# Check for dangerous patterns
for pattern in "${DANGEROUS_PATTERNS[@]}"; do
    if echo "$COMMAND" | grep -qE "$pattern"; then
        echo "⚠️  SECURITY WARNING: Dangerous command detected!"
        echo "Command: $COMMAND"
        echo "Pattern: $pattern"
        echo "This command has been blocked for security reasons."
        exit 1
    fi
done

# Check for commands with user input
if echo "$COMMAND" | grep -qE '\$\{.*\}|\$\(.*\)'; then
    echo "⚠️  WARNING: Command contains variable substitution"
    echo "Ensure user input is properly sanitized"
fi

exit 0
