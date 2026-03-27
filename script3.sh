#!/bin/bash
# =================================================================
# Script 3: Disk and Permission Auditor
# Author: Ankur Sen
# Course: Open Source Software
# Description: Audits system directories for size and permissions
# =================================================================

# -------- DIRECTORIES TO CHECK --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================================="
echo "    DISK & PERMISSION AUDIT REPORT    "
echo "========================================================="
echo ""

echo "Scanning important system directories..."
echo "----------------------------------------------------"

# -------- LOOP THROUGH DIRECTORIES --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        GROUP=$(ls -ld $DIR | awk '{print $4}')

        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Owner     : $OWNER"
        echo "Group     : $GROUP"
        echo "Size      : $SIZE"
        echo "----------------------------------------------------"

    else
        echo "Directory : $DIR does NOT exist"
        echo "----------------------------------------------------"
    fi
done

echo ""

# -------- APACHE CONFIG CHECK --------
# If you chose Git or Python, change this path to /etc/git or /etc/python3
APACHE_CONF="/etc/apache2"

echo "Checking Apache configuration directory..."
echo "----------------------------------------------------"

if [ -d "$APACHE_CONF" ]; then
    AP_PERMS=$(ls -ld $APACHE_CONF | awk '{print $1, $3, $4}')
    echo "Apache Config Directory Found!"
    echo "Path      : $APACHE_CONF"
    echo "Permissions & Ownership : $AP_PERMS"
else
    echo "Apache configuration directory not found."
fi

echo "----------------------------------------------------"
echo ""

# -------- SECURITY NOTE --------
echo "SECURITY INSIGHT:"
echo "This script helps identify permission settings"
echo "which are critical for system security."
echo "Improper permissions may lead to vulnerabilities."
echo ""

echo "========================================================="
