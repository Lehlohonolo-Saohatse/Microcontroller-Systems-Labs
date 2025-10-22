
    LIST    P=16F84
    INCLUDE "P16F84.INC"
    __CONFIG _XT_OSC & _WDT_OFF & _PWRTE_ON

    ORG     0x00        ; Reset vector
    GOTO    START
CBLOCK  0x0C
        COUNT
        TEMP
        ENDC

;------------------------------
START

        ; Configure PORTB as output
        BSF     STATUS, RP0 ; Select Bank1
        CLRF    TRISB       ; All PORTB = output
        BCF     STATUS, RP0 ; Back to Bank0

        CLRF    PORTB       ; Clear PORTB initially
        CLRF    COUNT       ; Start from 0

MAIN_LOOP   MOVF    COUNT, W    ; Move COUNT into W
        MOVWF   PORTB       ; Output to PORTB
        CALL    DELAY       ; Small delay for visibility

        MOVLW   .3           ; Add 3 to COUNT
        ADDWF   COUNT, F

        MOVLW   .39          ; Check if COUNT == 39 (after 36)
        SUBWF   COUNT, W
        BTFSS   STATUS, Z    ; Skip if Z=0 (not done)
        GOTO    MAIN_LOOP

HERE    GOTO    HERE        ; Infinite loop (halt after 36)

DELAY
        MOVLW   .2
        MOVWF   TEMP
D1      DECFSZ  TEMP, F
        GOTO    D1
        RETURN
        
        END