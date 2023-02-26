
_main:

;LAB_5.c,3 :: 		void main() {
;LAB_5.c,4 :: 		int i=100,j;
	MOVLW      100
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
;LAB_5.c,6 :: 		TRISC = 0x00; //PORTC as a output
	CLRF       TRISC+0
;LAB_5.c,7 :: 		TRISD = 0x00; //PORTD as a output
	CLRF       TRISD+0
;LAB_5.c,8 :: 		PORTC=0x00;   //  initialize portc off condition
	CLRF       PORTC+0
;LAB_5.c,9 :: 		PORTD=0x00;   //  initialize portd off condition
	CLRF       PORTD+0
;LAB_5.c,11 :: 		while(1){
L_main0:
;LAB_5.c,12 :: 		left = i/100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_left_L0+0
	MOVF       R0+1, 0
	MOVWF      main_left_L0+1
;LAB_5.c,13 :: 		middle = (i%100)/10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_middle_L0+0
	MOVF       R0+1, 0
	MOVWF      main_middle_L0+1
;LAB_5.c,14 :: 		right = (i%100)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_right_L0+0
	MOVF       R0+1, 0
	MOVWF      main_right_L0+1
;LAB_5.c,16 :: 		for(j=0;j<34;j++){
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main2:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      34
	SUBWF      main_j_L0+0, 0
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;LAB_5.c,17 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;LAB_5.c,18 :: 		portc = array[left];
	MOVF       main_left_L0+0, 0
	MOVWF      R0+0
	MOVF       main_left_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;LAB_5.c,19 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;LAB_5.c,20 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;LAB_5.c,21 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;LAB_5.c,22 :: 		portc = array[middle];
	MOVF       main_middle_L0+0, 0
	MOVWF      R0+0
	MOVF       main_middle_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;LAB_5.c,23 :: 		portd.f2=0;
	BCF        PORTD+0, 2
;LAB_5.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;LAB_5.c,25 :: 		portd.f2=1;
	BSF        PORTD+0, 2
;LAB_5.c,26 :: 		portc = array[right];
	MOVF       main_right_L0+0, 0
	MOVWF      R0+0
	MOVF       main_right_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;LAB_5.c,27 :: 		portd.f3=0;
	BCF        PORTD+0, 3
;LAB_5.c,28 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;LAB_5.c,29 :: 		portd.f3=1;
	BSF        PORTD+0, 3
;LAB_5.c,16 :: 		for(j=0;j<34;j++){
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;LAB_5.c,30 :: 		}
	GOTO       L_main2
L_main3:
;LAB_5.c,31 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;LAB_5.c,32 :: 		if(i>999){i=100;}
	MOVLW      128
	XORLW      3
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      231
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
	MOVLW      100
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main8:
;LAB_5.c,33 :: 		}
	GOTO       L_main0
;LAB_5.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
