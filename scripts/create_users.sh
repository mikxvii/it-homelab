#!/bin/bash

# Bulk user creation script for onboarding new employees
# Usage: sudo ./create_users.sh

HIRES=(
    "tom:devops"
    "sarah:marketing"
    "mike_j:security"
    "anna:devops"
    "chris:marketing"
    "karina:security"
    "nora:devops"
    "junior:marketing"
)

for ENTRY in "${HIRES[@]}"; do
    USER="${ENTRY%%:*}"
    DEPT="${ENTRY##*:}"

    if id "$USER" &>/dev/null; then
        echo "[SKIP] $USER already exists"
    else
        useradd -m -s /bin/bash -G "$DEPT" "$USER"
        echo "$USER:TempPass123" | chpasswd
        passwd -e "$USER"
        echo "[CREATED] $USER added to $DEPT"
    fi
done

echo ""
echo "===== Onboarding Complete ====="
echo "All new users must change password on first login."
