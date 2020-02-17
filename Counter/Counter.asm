
_main:

;Counter.c,18 :: 		void main() {
;Counter.c,19 :: 		lcd_init();
	CALL       _Lcd_Init+0
;Counter.c,20 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Counter.c,21 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Counter.c,23 :: 		lcd_out_cp("COUNTER: ");
	MOVLW      ?lstr1_Counter+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Counter.c,24 :: 		while(1)
L_main0:
;Counter.c,26 :: 		for(i=0;i<=50;i++)
	CLRF       _i+0
L_main2:
	MOVF       _i+0, 0
	SUBLW      50
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Counter.c,28 :: 		IntToStr(i,txt);
	MOVF       _i+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Counter.c,29 :: 		lcd_out(1,9,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Counter.c,30 :: 		delay_ms(10);
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
;Counter.c,26 :: 		for(i=0;i<=50;i++)
	INCF       _i+0, 1
;Counter.c,31 :: 		}
	GOTO       L_main2
L_main3:
;Counter.c,32 :: 		}
	GOTO       L_main0
;Counter.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
