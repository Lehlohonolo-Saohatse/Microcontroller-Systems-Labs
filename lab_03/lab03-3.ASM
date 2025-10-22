    LIST    P=16F84
    INCLUDE "P16F84.INC"
    __CONFIG _XT_OSC & _WDT_OFF & _PWRTE_ON

    ORG     0x00        ; Reset vector
    GOTO    START
;------------------------------
        CBLOCK  0x0C
        INDEX
        TEMP
        TEMP2
        ENDC
;------------------------------
START
        
        BSF     STATUS, 5
        CLRF    TRISB       
        BCF     STATUS, 5

        CLRF    PORTB       ; Clear PORTB initially
        CLRF    INDEX       ; Start index from 0

MAIN_LOOP   
		MOVF    INDEX, W    ; W = INDEX
        MOVWF   TEMP        ; TEMP = INDEX (for *4 calc)
        ADDWF   TEMP, F     ; TEMP += INDEX (x2)
        ADDWF   TEMP, F     ; TEMP += INDEX (x3) 
        ADDWF   TEMP, F     ; TEMP += INDEX (x4) 
        MOVF    TEMP, W     ; W = TEMP (4*INDEX)
        MOVWF   PORTB       ; Output to PORTB
        CALL    DELAY       ; Small delay for visibility

        INCF    INDEX, F    ; INDEX++
        MOVLW   .12          ; Check if INDEX == 12 (after 11*4=44)
        SUBWF   INDEX, W
        BTFSS   STATUS, Z    ; Skip if not equal
        GOTO    MAIN_LOOP

HERE    GOTO    HERE        

DELAY
        MOVLW   .1
        MOVWF   TEMP2
D1      DECFSZ  TEMP2, F
        GOTO    D1
        RETURN
        END