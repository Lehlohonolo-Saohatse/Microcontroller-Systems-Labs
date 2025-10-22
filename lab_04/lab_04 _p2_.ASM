    LIST    P=16F84
    INCLUDE "P16F84.INC"
    __CONFIG _XT_OSC & _WDT_OFF & _PWRTE_ON

    ORG     0x00        ; Reset vector
    GOTO    START

CBLOCK  0x0C
        COUNT
    ENDC

START
    BSF     STATUS, 5   
    CLRF    TRISB       
    BCF     STATUS, 5   
    CLRF    PORTB       
    CLRF    COUNT       

MAIN_LOOP   
    MOVF    COUNT, W    
    CALL    SEG_PATTERNS
    MOVWF   PORTB       

    INCF    COUNT, F    
    MOVLW   .10         
    SUBWF   COUNT, W    
    BTFSS   STATUS, Z   
    GOTO    MAIN_LOOP
    GOTO    START       

; Seven-segment display patterns for digits 0-9
ZERO   EQU  B'01111110'  ; 0
ONE    EQU  B'00001100'  ; 1
TWO    EQU  B'10110110'  ; 2
THREE  EQU  B'10011110'  ; 3
FOUR   EQU  B'11001100'  ; 4
FIVE   EQU  B'11011010'  ; 5
SIX    EQU  B'11111010'  ; 6
SEVEN  EQU  B'00001110'  ; 7
EIGHT  EQU  B'11111110'  ; 8
NINE   EQU  B'11011110'  ; 9

; Lookup table for seven-segment patterns
    ORG 0x20
SEG_PATTERNS
    ADDWF   PCL, F
    RETLW   ZERO
    RETLW   ONE
    RETLW   TWO
    RETLW   THREE
    RETLW   FOUR
    RETLW   FIVE
    RETLW   SIX
    RETLW   SEVEN
    RETLW   EIGHT
    RETLW   NINE

    END