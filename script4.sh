#!/bin/bash
# =================================================================
# Script 4: Log File Analyzer
# Author: Ankur Sen
# Course: Open Source Software
# Description: Analyzes log file for keyword occurrences
# =================================================================

# -------- INPUT --------
LOGFILE=$1
KEYWORD=${2:-"error"} # default = error
COUNT=0

echo "========================================================="
echo "        LOG FILE ANALYZER TOOL        "
echo "========================================================="
echo ""

# -------- CHECK FILE --------
if [ ! -f "$LOGFILE" ]; then
    echo "[-] Error: File not found!"
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi

echo "Analyzing file : $LOGFILE"
echo "Searching for : $KEYWORD"
echo "----------------------------------------------------"

# -------- READ FILE --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "[+] Total occurrences of '$KEYWORD': $COUNT"
echo "----------------------------------------------------"

# -------- LAST 5 MATCHES --------
echo ""
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "----------------------------------------------------"

# -------- EMPTY FILE CHECK (DO-WHILE STYLE SIMULATION) --------
if [ ! -s "$LOGFILE" ]; then
    echo ""
    echo "[!] Warning: File is empty!"
fi

echo ""
echo "SECURITY INSIGHT:"
echo "Log analysis helps detect suspicious activities,"
echo "errors, and possible intrusion attempts."
echo ""
echo "========================================================="
