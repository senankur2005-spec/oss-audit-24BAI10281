#!/bin/bash
# =================================================================
# Script 2: FOSS Package Inspector
# Author: Ankur Sen
# Course: Open Source Software
# Description: Checks if a package is installed and shows details
# =================================================================

# -------- VARIABLE --------
PACKAGE="apache2"

echo "========================================================="
echo "        FOSS PACKAGE INSPECTOR TOOL        "
echo "========================================================="
echo ""

echo "Checking package: $PACKAGE"
echo "----------------------------------------------------"

# -------- CHECK INSTALLATION --------
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "[+] Status: INSTALLED"
    echo ""

    echo "---------- PACKAGE DETAILS ----------------"
    dpkg -l | grep "$PACKAGE"
    echo "-------------------------------------------"
   
    echo ""
    echo "---------- VERSION INFORMATION ------------"
    apache2 -v 2>/dev/null
    echo "-------------------------------------------"

else
    echo "[-] Status: NOT INSTALLED"
fi

echo ""
echo "-------------------------------------------"
echo "SOFTWARE DESCRIPTION:"
echo "-------------------------------------------"

# -------- CASE STATEMENT --------
case $PACKAGE in
    apache2)
        echo "Apache HTTP Server:"
        echo " - Open-source web server used to host websites."
        echo " - Part of the LAMP stack."
        echo " - Known for flexibility, modules, and security."
        ;;
    mysql)
        echo "MySQL:"
        echo " - Open-source relational database system."
        echo " - Used in web applications and backend systems."
        ;;
    firefox)
        echo "Firefox:"
        echo " - Open-source web browser by Mozilla."
        echo " - Focuses on privacy and user control."
        ;;
    *)
        echo "Unknown package. No description available."
        ;;
esac

echo "-------------------------------------------"
echo ""

# -------- LICENSE INFO --------
echo "LICENSE NOTE:"
echo "This package follows open source licensing principles."
echo "It allows usage, modification, and distribution."
echo ""

echo "========================================================="
