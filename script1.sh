#!/bin/bash
# =================================================================
# Script 1: System Identity Report
# Author: Ankur Sen
# Course: Open Source Software
# Description: Displays system information in a structured way
# =================================================================

# -------- VARIABLES --------
STUDENT_NAME="Ankur Sen"
SOFTWARE_CHOICE="Apache HTTP Server"

# -------- SYSTEM INFO --------
DISTRO=$(lsb_release -d | cut -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# -------- DISPLAY HEADER --------
echo "========================================================="
echo "    OPEN SOURCE AUDIT --- SYSTEM IDENTITY    "
echo "========================================================="
echo ""
echo "Student : $STUDENT_NAME"
echo "Software : $SOFTWARE_CHOICE"
echo ""

# -------- SYSTEM INFORMATION --------
echo "---------------- SYSTEM INFORMATION ----------------"
echo "Distribution : $DISTRO"
echo "Kernel Ver   : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo "----------------------------------------------------"
echo ""

# -------- LICENSE INFORMATION --------
echo "---------------- LICENSE INFORMATION ----------------"
echo "This system is based on GNU/Linux."
echo "Linux is distributed under the GNU General Public License (GPL)."
echo ""
echo "This means you are FREE to:"
echo " - Use the software for any purpose"
echo " - Study how it works"
echo " - Modify the source code"
echo " - Share copies with others"
echo ""
echo "However, you must also:"
echo " - Share modifications under the same license"
echo " - Give credit to original developers"
echo "----------------------------------------------------"
echo ""

# -------- QUOTE --------
echo "\"Free as in freedom, not just free as in free beer.\""
echo "        — Richard Stallman"
echo "========================================================="
