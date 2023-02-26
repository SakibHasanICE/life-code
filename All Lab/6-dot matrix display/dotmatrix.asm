
_main:

;dotmatrix.c,2 :: 		void main()
;dotmatrix.c,5 :: 		TRISC=0x00;
	CLRF       TRISC+0
;dotmatrix.c,6 :: 		TRISD=0x00;
	CLRF       TRISD+0
;dotmatrix.c,7 :: 		while(1)
L_main0:
;dotmatrix.c,10 :: 		portd=0x00;
	CLRF       PORTD+0
;dotmatrix.c,11 :: 		portc=0x00;
	CLRF       PORTC+0
;dotmatrix.c,12 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;dotmatrix.c,13 :: 		for(i=1;i<=125;i++){
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVF       _i+0, 0
	SUBLW      125
L__main63:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;dotmatrix.c,14 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotmatrix.c,15 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,16 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;dotmatrix.c,18 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotmatrix.c,19 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,20 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;dotmatrix.c,22 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotmatrix.c,23 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,24 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;dotmatrix.c,26 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotmatrix.c,27 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,28 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;dotmatrix.c,30 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotmatrix.c,31 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,32 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;dotmatrix.c,34 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotmatrix.c,35 :: 		PORTC =0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,36 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;dotmatrix.c,38 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotmatrix.c,39 :: 		PORTC = 0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,40 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;dotmatrix.c,42 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotmatrix.c,43 :: 		PORTC = 0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotmatrix.c,44 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;dotmatrix.c,13 :: 		for(i=1;i<=125;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;dotmatrix.c,45 :: 		}
	GOTO       L_main3
L_main4:
;dotmatrix.c,47 :: 		portc=0x00;
	CLRF       PORTC+0
;dotmatrix.c,48 :: 		portd=0x00;
	CLRF       PORTD+0
;dotmatrix.c,49 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;dotmatrix.c,50 :: 		for(i=1;i<=125;i++){
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main15:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVF       _i+0, 0
	SUBLW      125
L__main64:
	BTFSS      STATUS+0, 0
	GOTO       L_main16
;dotmatrix.c,51 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotmatrix.c,52 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,53 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;dotmatrix.c,55 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotmatrix.c,56 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,57 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;dotmatrix.c,59 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotmatrix.c,60 :: 		PORTC=0x60;
	MOVLW      96
	MOVWF      PORTC+0
;dotmatrix.c,61 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	NOP
	NOP
;dotmatrix.c,63 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotmatrix.c,64 :: 		PORTC=0x30;
	MOVLW      48
	MOVWF      PORTC+0
;dotmatrix.c,65 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	NOP
	NOP
;dotmatrix.c,67 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotmatrix.c,68 :: 		PORTC = 0x30;
	MOVLW      48
	MOVWF      PORTC+0
;dotmatrix.c,69 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	NOP
	NOP
;dotmatrix.c,71 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotmatrix.c,72 :: 		PORTC =0x60;
	MOVLW      96
	MOVWF      PORTC+0
;dotmatrix.c,73 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	NOP
	NOP
;dotmatrix.c,75 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotmatrix.c,76 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,77 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	NOP
	NOP
;dotmatrix.c,79 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotmatrix.c,80 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,81 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	NOP
	NOP
;dotmatrix.c,50 :: 		for(i=1;i<=125;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;dotmatrix.c,82 :: 		}
	GOTO       L_main15
L_main16:
;dotmatrix.c,84 :: 		portd=0x00;
	CLRF       PORTD+0
;dotmatrix.c,85 :: 		portc=0x00;
	CLRF       PORTC+0
;dotmatrix.c,86 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
	NOP
;dotmatrix.c,87 :: 		for(i=1;i<=125;i++){
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main27:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVF       _i+0, 0
	SUBLW      125
L__main65:
	BTFSS      STATUS+0, 0
	GOTO       L_main28
;dotmatrix.c,88 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotmatrix.c,89 :: 		PORTC=0x00;
	CLRF       PORTC+0
;dotmatrix.c,90 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	NOP
	NOP
;dotmatrix.c,92 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotmatrix.c,93 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,94 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	NOP
	NOP
;dotmatrix.c,96 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotmatrix.c,97 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,98 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	NOP
	NOP
;dotmatrix.c,100 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotmatrix.c,101 :: 		PORTC=0xCC;
	MOVLW      204
	MOVWF      PORTC+0
;dotmatrix.c,102 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	NOP
	NOP
;dotmatrix.c,104 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotmatrix.c,105 :: 		PORTC = 0xCC;
	MOVLW      204
	MOVWF      PORTC+0
;dotmatrix.c,106 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	NOP
	NOP
;dotmatrix.c,108 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotmatrix.c,109 :: 		PORTC =0xF7;
	MOVLW      247
	MOVWF      PORTC+0
;dotmatrix.c,110 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	NOP
	NOP
;dotmatrix.c,112 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotmatrix.c,113 :: 		PORTC = 0x77;
	MOVLW      119
	MOVWF      PORTC+0
;dotmatrix.c,114 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	NOP
	NOP
;dotmatrix.c,116 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotmatrix.c,117 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;dotmatrix.c,118 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	NOP
	NOP
;dotmatrix.c,87 :: 		for(i=1;i<=125;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;dotmatrix.c,119 :: 		}
	GOTO       L_main27
L_main28:
;dotmatrix.c,121 :: 		portd=0x00;
	CLRF       PORTD+0
;dotmatrix.c,122 :: 		portc=0x00;
	CLRF       PORTC+0
;dotmatrix.c,123 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
	NOP
;dotmatrix.c,124 :: 		for(i=0;i<125;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main39:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main66
	MOVLW      125
	SUBWF      _i+0, 0
L__main66:
	BTFSC      STATUS+0, 0
	GOTO       L_main40
;dotmatrix.c,126 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotmatrix.c,127 :: 		PORTC=0x00;
	CLRF       PORTC+0
;dotmatrix.c,128 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
	NOP
	NOP
;dotmatrix.c,130 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotmatrix.c,131 :: 		PORTC=0x7f;
	MOVLW      127
	MOVWF      PORTC+0
;dotmatrix.c,132 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	NOP
	NOP
;dotmatrix.c,134 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotmatrix.c,135 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,136 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main44:
	DECFSZ     R13+0, 1
	GOTO       L_main44
	DECFSZ     R12+0, 1
	GOTO       L_main44
	NOP
	NOP
;dotmatrix.c,138 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotmatrix.c,139 :: 		PORTC=0xcc;
	MOVLW      204
	MOVWF      PORTC+0
;dotmatrix.c,140 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main45:
	DECFSZ     R13+0, 1
	GOTO       L_main45
	DECFSZ     R12+0, 1
	GOTO       L_main45
	NOP
	NOP
;dotmatrix.c,142 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotmatrix.c,143 :: 		PORTC = 0xcc;
	MOVLW      204
	MOVWF      PORTC+0
;dotmatrix.c,144 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main46:
	DECFSZ     R13+0, 1
	GOTO       L_main46
	DECFSZ     R12+0, 1
	GOTO       L_main46
	NOP
	NOP
;dotmatrix.c,146 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotmatrix.c,147 :: 		PORTC =0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,148 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main47:
	DECFSZ     R13+0, 1
	GOTO       L_main47
	DECFSZ     R12+0, 1
	GOTO       L_main47
	NOP
	NOP
;dotmatrix.c,150 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotmatrix.c,151 :: 		PORTC = 0x7f;
	MOVLW      127
	MOVWF      PORTC+0
;dotmatrix.c,152 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	NOP
	NOP
;dotmatrix.c,154 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotmatrix.c,155 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;dotmatrix.c,156 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	NOP
	NOP
;dotmatrix.c,124 :: 		for(i=0;i<125;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;dotmatrix.c,158 :: 		}
	GOTO       L_main39
L_main40:
;dotmatrix.c,160 :: 		portd=0x00;
	CLRF       PORTD+0
;dotmatrix.c,161 :: 		portc=0x00;
	CLRF       PORTC+0
;dotmatrix.c,162 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main50:
	DECFSZ     R13+0, 1
	GOTO       L_main50
	DECFSZ     R12+0, 1
	GOTO       L_main50
	DECFSZ     R11+0, 1
	GOTO       L_main50
	NOP
	NOP
;dotmatrix.c,163 :: 		for(i=1;i<=125;i++){
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main51:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVF       _i+0, 0
	SUBLW      125
L__main67:
	BTFSS      STATUS+0, 0
	GOTO       L_main52
;dotmatrix.c,164 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotmatrix.c,165 :: 		PORTC=0x00;
	CLRF       PORTC+0
;dotmatrix.c,166 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	NOP
	NOP
;dotmatrix.c,168 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotmatrix.c,169 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,170 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main55:
	DECFSZ     R13+0, 1
	GOTO       L_main55
	DECFSZ     R12+0, 1
	GOTO       L_main55
	NOP
	NOP
;dotmatrix.c,172 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotmatrix.c,173 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,174 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main56:
	DECFSZ     R13+0, 1
	GOTO       L_main56
	DECFSZ     R12+0, 1
	GOTO       L_main56
	NOP
	NOP
;dotmatrix.c,176 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotmatrix.c,177 :: 		PORTC=0x30;
	MOVLW      48
	MOVWF      PORTC+0
;dotmatrix.c,178 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main57:
	DECFSZ     R13+0, 1
	GOTO       L_main57
	DECFSZ     R12+0, 1
	GOTO       L_main57
	NOP
	NOP
;dotmatrix.c,180 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotmatrix.c,181 :: 		PORTC = 0x18;
	MOVLW      24
	MOVWF      PORTC+0
;dotmatrix.c,182 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main58:
	DECFSZ     R13+0, 1
	GOTO       L_main58
	DECFSZ     R12+0, 1
	GOTO       L_main58
	NOP
	NOP
;dotmatrix.c,184 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotmatrix.c,185 :: 		PORTC =0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,186 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main59:
	DECFSZ     R13+0, 1
	GOTO       L_main59
	DECFSZ     R12+0, 1
	GOTO       L_main59
	NOP
	NOP
;dotmatrix.c,188 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotmatrix.c,189 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotmatrix.c,190 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main60:
	DECFSZ     R13+0, 1
	GOTO       L_main60
	DECFSZ     R12+0, 1
	GOTO       L_main60
	NOP
	NOP
;dotmatrix.c,192 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotmatrix.c,193 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;dotmatrix.c,194 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main61:
	DECFSZ     R13+0, 1
	GOTO       L_main61
	DECFSZ     R12+0, 1
	GOTO       L_main61
	NOP
	NOP
;dotmatrix.c,163 :: 		for(i=1;i<=125;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;dotmatrix.c,195 :: 		}
	GOTO       L_main51
L_main52:
;dotmatrix.c,199 :: 		}
	GOTO       L_main0
;dotmatrix.c,202 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
