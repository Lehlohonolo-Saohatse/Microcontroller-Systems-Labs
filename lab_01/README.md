# 📘 Lab 1: Introduction to Software Development for Microcontrollers

Welcome to **Lab 1** of **ELYM 328 – Introduction to Microcontroller Systems** at North-West University, South Africa! This lab provides a tutorial on using MPLAB IDE for PIC16F84 microcontroller programming, focusing on project setup and basic debugging.

---

## 🎯 Objective
Give a tutorial on software development for microcontrollers using the PIC microcontroller family and PIC16F84 as a case study.

## 📋 Procedure
Refer to Chapter 2 of the MPLAB IDE Quick Start Guide. Key steps include:
- Running MPLAB IDE and selecting the PIC16F84A device.
- Creating a project using the Project Wizard and setting up language tools.
- Adding files (e.g., assembly template and linker script).
- Building the project and fixing errors.
- Creating and testing code with the simulator.

## 📊 Results
- Initial build failed due to errors (see Attachment 2 for details).
- After fixes, the program built successfully, generating .hex and .cod files.
- Simulation showed PORTB incrementing in an infinite loop, with delay for visibility.

## ❓ Discussion
1. **Steps to fix error messages**: Indented code, defined variables with cblock, replaced PORTC/TRISC with PORTB/TRISB, added bank switching, removed illegal suffixes, and aligned code structure.
2. **Function/purpose of variables and keywords**:
   - Variables: COUNT (counter), DVAR (inner delay), DVAR2 (outer delay), w_temp (W register temp), status_temp (STATUS temp).
   - Keywords: clrf (clear register), movwf (move W to file), incf (increment file), movf (move file to W), movlw (move literal to W), decfsz (decrement and skip if zero), goto (jump), call (subroutine call), return (return), banksel (bank select), swapf (swap nibbles), retfie (return from interrupt).
3. **Reason for initial PORTC error messages**: PIC16F84A lacks PORTC (only PORTA/PORTB per datasheet), causing undefined symbols.
4. **Purpose of PORTB and TRISB**: PORTB is an 8-bit bidirectional I/O port (RB0-RB7) with pull-ups and interrupt-on-change. TRISB configures direction (0=output, 1=input).
5. **What the program does**: Configures PORTB as output, initializes a counter to zero, increments it in a loop, displays on PORTB, and uses a nested delay subroutine for visibility, running infinitely.

## 💻 Assembly Code
See `source_file.asm` for the debugged program (Attachment 3).

## 📄 Attachments
- Attachment 1: Raw program before debugging.
- Attachment 2: Error messages from initial build.
- Attachment 3: Debugged program.

## 📝 Notes
- Report format: Title, Aims/Objectives, Introduction, Equipment, Procedure, Results, Discussion, Conclusion.
- Use screenshots of simulator outputs for verification.
- Student: L Saohatse (37569422), Due Date: 02/09/2025.

*Completed for ELYM 328 – Introduction to Microcontroller Systems, September 24, 2025.*
