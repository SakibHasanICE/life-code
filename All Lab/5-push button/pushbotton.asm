
_main:

;pushbotton.c,1 :: 		void main()
;pushbotton.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;pushbotton.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;pushbotton.c,6 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;pushbotton.c,7 :: 		while(1)
L_main0:
;pushbotton.c,9 :: 		if(portd.f0=1)
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;pushbotton.c,11 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;pushbotton.c,13 :: 		}
	GOTO       L_main3
L_main2:
;pushbotton.c,17 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;pushbotton.c,18 :: 		}
L_main3:
;pushbotton.c,20 :: 		}
	GOTO       L_main0
;pushbotton.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
