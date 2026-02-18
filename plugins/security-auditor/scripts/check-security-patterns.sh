#!/bin/bash
# Check for common security anti-patterns in code

FILE="$1"

if [ ! -f "$FILE" ]; then
    exit 0
fi

ISSUES_FOUND=0

# Check for SQL injection patterns
if grep -qE "SELECT.*\$\{|INSERT.*\$\{|UPDATE.*\$\{|DELETE.*\$\{" "$FILE"; then
    echo "⚠️  Potential SQL injection: String interpolation in SQL query detected in $FILE"
    ISSUES_FOUND=1
fi

# Check for XSS patterns
if grep -qE "innerHTML\s*=|dangerouslySetInnerHTML|v-html" "$FILE"; then
    echo "⚠️  Potential XSS: Unsafe HTML rendering detected in $FILE"
    ISSUES_FOUND=1
fi

# Check for command injection
if grep -qE "exec\(.*\$|eval\(.*\$|spawn\(.*\$" "$FILE"; then
    echo "⚠️  Potential command injection: Dynamic command execution detected in $FILE"
    ISSUES_FOUND=1
fi

# Check for weak crypto
if grep -qE "createHash\(['\"]md5|createHash\(['\"]sha1|createCipher\(" "$FILE"; then
    echo "⚠️  Weak cryptography: Insecure algorithm detected in $FILE"
    ISSUES_FOUND=1
fi

# Check for Math.random() in security context
if grep -qE "Math\.random\(\).*token|Math\.random\(\).*key|Math\.random\(\).*secret" "$FILE"; then
    echo "⚠️  Insecure random: Math.random() used for security-sensitive value in $FILE"
    ISSUES_FOUND=1
fi

if [ $ISSUES_FOUND -eq 0 ]; then
    echo "✅ No security anti-patterns detected in $FILE"
fi

exit 0
