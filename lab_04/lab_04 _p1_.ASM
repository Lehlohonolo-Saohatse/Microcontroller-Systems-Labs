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

        BSF     STATUS, 5 
        CLRF    TRISB       
        BCF     STATUS, 5 

        CLRF    PORTB       
        CLRF    COUNT

MAIN_LOOP   
		MOVF    COUNT, W    ; Move COUNT into W
        MOVWF   PORTB       ; Output to PORTB

        INCF    COUNT, F    ; COUNT = COUNT + 1
        MOVLW   .100         ; Compare with 100
        SUBWF   COUNT, W    
        BTFSS   STATUS, Z   ; If COUNT == 100, stop
        GOTO    MAIN_LOOP

HERE    GOTO    HERE        ; Infinite loop


DD      DECFSZ  TEMP, F
        GOTO    DD
        RETURN
        
        END