
_main:

;ADC.c,5 :: 		void main() {
;ADC.c,7 :: 		uart1_init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADC.c,10 :: 		adc_init();
	CALL       _ADC_Init+0
;ADC.c,13 :: 		while(1){
L_main0:
;ADC.c,15 :: 		valADC = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
;ADC.c,17 :: 		inttostr(valADC,x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADC.c,19 :: 		uart1_write_text("Analog valu=");
	MOVLW      ?lstr1_ADC+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,20 :: 		uart1_write_text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,21 :: 		strcpy(x,"");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_ADC+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;ADC.c,22 :: 		uart1_write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADC.c,23 :: 		delay_ms(1000);
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
;ADC.c,24 :: 		}
	GOTO       L_main0
;ADC.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
