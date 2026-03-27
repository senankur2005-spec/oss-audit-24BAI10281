#!/bin/bash
# =================================================================
# Script 5: Open Source Manifesto Generator
# Author: Ankur Sen
# Course: Open Source Software
# Description: Generates a personalized open-source manifesto
# =================================================================

echo "========================================================="
echo "        OPEN SOURCE MANIFESTO GENERATOR        "
echo "========================================================="
echo ""

# -------- USER INPUT --------
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name something you would build and share: " BUILD

# -------- SYSTEM INFO --------
USER_NAME=$(whoami)
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_${USER_NAME}.txt"

echo ""
echo "Generating your manifesto..."
echo "----------------------------------------------------"

# -------- CREATE MANIFESTO --------
echo "Open Source Manifesto" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I understand the importance of collaboration and" >> $OUTPUT
echo "transparency." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it should be reflected in the software we" >> $OUTPUT
echo "use." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it with the world." >> $OUTPUT
echo "I support open knowledge, innovation, and community-driven development." >> $OUTPUT

echo "" >> $OUTPUT
echo "-- $USER_NAME" >> $OUTPUT

# -------- DISPLAY OUTPUT --------
echo ""
echo "[+] Manifesto saved to: $OUTPUT"
echo ""
echo "---------- YOUR MANIFESTO ----------"
cat $OUTPUT
echo "------------------------------------"

# -------- NOTE --------
# You can create an alias like:
# alias manifesto="./script5.sh"

echo ""
echo "Tip: You can create an alias for quick access!"
echo "========================================================="
