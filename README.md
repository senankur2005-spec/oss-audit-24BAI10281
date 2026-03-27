# Open Source Audit Project — Apache HTTP Server

**Name:** Ankur Sen
**Registration Number:** 24BAI10281
**Course:** Open Source Software
**Software Selected:** Apache HTTP Server

---

## Project Overview

This repository contains my Open Source Software Capstone Project based on the **Apache HTTP Server**.

The aim of this project is to study how an open-source software works in a real Linux environment and to understand its structure, functionality, and philosophy.

Along with the analysis, I have developed shell scripts to demonstrate practical interaction with the system.

The project combines both theoretical understanding and hands-on Linux experience.

---

## Implemented Scripts

### Script 1 — System Identity Report

Prints system-level information such as:

* Kernel version
* Logged-in user
* Uptime
* Linux distribution
* Licensing details

---

### Script 2 — Package Status Inspector

* Checks whether Apache is installed
* Displays version and package details
* Uses conditional and case statements

---

### Script 3 — Directory Audit Tool

* Checks important Linux directories
* Displays size, ownership, and permissions
* Helps understand access control

---

### Script 4 — Log Monitoring Script

* Scans log files for keywords (e.g., "error")
* Counts occurrences
* Displays recent matching entries

---

### Script 5 — Manifest Generator

* Interactive script
* Takes user input
* Generates a custom open-source philosophy statement
* Saves output to a text file

---

## Running the Project

### Requirements

* Linux OS (Ubuntu)
* Bash shell
* Apache installed
* sudo privileges (for log analysis)

---

### Steps to Execute

#### 1. Clone Repository

```bash
git clone https://github.com/senankur2005-spec/oss-audit-24BAI10281.git
cd oss-audit-24BAI10281
```

#### 2. Give Execution Permissions

```bash
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh
```

#### 3. Run Scripts

```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```

---

## Tools & Concepts Used

* Bash scripting
* Linux commands (`uname`, `uptime`, `du`, `ls`, `grep`)
* Conditional statements (`if-else`)
* Loops (`for`, `while`)
* Case statements
* File handling and redirection

---

## Project Insight

Through this project, I understood how open-source tools like Apache HTTP Server operate within a Linux system.

I also explored how logs, permissions, and services play an important role in system administration and basic security monitoring.

---

## Note

This project has been developed as part of an academic assignment and reflects my own understanding of open-source systems and Linux shell scripting.
