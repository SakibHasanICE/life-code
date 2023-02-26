
_main:

;LAB_4.c,1 :: 		void main() {
;LAB_4.c,3 :: 		TRISC = 0x00; //Set as PORTC output
	CLRF       TRISC+0
;LAB_4.c,4 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;LAB_4.c,6 :: 		while(1)
L_main0:
;LAB_4.c,8 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;LAB_4.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LAB_4.c,10 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;LAB_4.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LAB_4.c,14 :: 		}
	GOTO       L_main0
;LAB_4.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
