;**********************************************************************
;                                                                     *
;   This file is a basic code template for assembly code generation   *
;   on the PIC16F84A. This file contains the basic code               *
;   building blocks to build upon.                                    *
;                                                                     *
;   Refer to the MPASM User's Guide for additional information on     *
;   features of the assembler (Document DS33014).                     *
;                                                                     *
;   Refer to the respective PIC data sheet for additional             *
;   information on the instruction set.                               *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Filename:        Problem2.asm                                     *
;    Date:            September 25, 2025                              *
;    File Version:    1.0                                             *
;                                                                     *
;    Author:          L Saohatse                                            *
;                                                        *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files required: P16F84A.INC                                      *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes: Program to calculate 7 + 15 + 208 and display result      *
;           on PORTB of PIC16F84A using MPLAB simulator. Includes     *
;           CLRWDT to prevent Watchdog Timer timeout.                 *
;                                                                     *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************

    list      p=16F84A             ; list directive to define processor
    #include <p16F84a.inc>         ; processor specific variable definitions

    __CONFIG   _CP_OFF & _WDT_ON & _PWRTE_ON & _RC_OSC

; '__CONFIG' directive is used to embed configuration data within .asm file.
; The labels following the directive are located in the respective .inc file.
; See respective data sheet for additional information on configuration word.

;***** VARIABLE DEFINITIONS
    w_temp        EQU     0x0C        ; variable used for context saving 
    status_temp   EQU     0x0D        ; variable used for context saving
    result        EQU     0x0E        ; variable to store calculation result

;**********************************************************************
    RESET_VECTOR      CODE    0x0000  ; processor reset vector
        goto    start                 ; go to beginning of program

    ISR               CODE    0x0004  ; interrupt vector location

Interrupt:
        movwf   w_temp                ; save off current W register contents
        movf    STATUS,w              ; move status register into W register
        movwf   status_temp           ; save off contents of STATUS register

        ; No interrupt handling required for this program

        movf    status_temp,w         ; retrieve copy of STATUS register
        movwf   STATUS                ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w              ; restore pre-isr W register contents
        retfie                        ; return from interrupt

    MAIN_PROGRAM    CODE

start:
        ; Configure PORTB as output
        bsf     STATUS, RP0           ; Select Bank 1
        clrf    TRISB                 ; Set all PORTB pins as output (0 = output)
        bcf     STATUS, RP0           ; Select Bank 0
        clrf    PORTB                 ; Clear PORTB initially

        ; Perform calculation: 7 + 15 + 208
        movlw   0x07                  ; Load 7 into W
        movwf   result                ; Store in result
        movlw   0x0F                  ; Load 15 into W
        addwf   result, F             ; Add to result (7 + 15 = 22)
        movlw   0xD0                  ; Load 208 (0xD0 in hex) into W
        addwf   result, F             ; Add to result (22 + 208 = 230, 0xE6)

Main:
        movf    result, W             ; Move result to W register
        movwf   PORTB                 ; Output result to PORTB
        clrwdt                        ; Clear Watchdog Timer to prevent timeout
        goto    Main                  ; Loop forever

    end