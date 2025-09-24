# 📘 Lab 1: Introduction to Software Development for Microcontrollers

This lab introduces the use of MPLAB IDE for PIC16F84 microcontroller development, following the Quick Start Guide.

## 🎯 Objective
Provide a tutorial on running MPLAB IDE, creating projects, setting up tools, adding files, building, and testing with simulator.

## 📋 Procedure
Refer to Chapter 2 of MPLAB IDE Quick Start Guide for steps on project creation and debugging a simple assembly program.

## ❓ Discussion Questions
1. Steps to fix error messages: Identified and corrected invalid directives or syntax errors in the template code.
2. Function of variables and keywords: e.g., PORTB for output port, TRISB for direction control, STATUS for flags.
3. Reason for error on PORTC: PIC16F84 does not have PORTC; only PORTA and PORTB are available.
4. Purpose of PORTB and TRISB: PORTB is an 8-bit bidirectional port; TRISB sets the direction (0 = output, 1 = input).
5. What the program does: Toggles bits on PORTB to simulate LED blinking or simple output.

## 💻 Assembly Code
See `tutorial.asm` for the debugged code from the guide.

## 📝 Notes
- Attach raw program, error messages, and debugged program in report.
- Use screen shots of simulator outputs.

*Completed on September 24, 2025.*