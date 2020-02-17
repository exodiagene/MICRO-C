
_main:

;Arithmetic.c,23 :: 		void main()
;Arithmetic.c,25 :: 		lcd_init();
	CALL       _Lcd_Init+0
;Arithmetic.c,26 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Arithmetic.c,27 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Arithmetic.c,28 :: 		TRISA = 0x01;
	MOVLW      1
	MOVWF      TRISA+0
;Arithmetic.c,29 :: 		LCD_OUT_cp("ARITHMETIC OP:");
	MOVLW      ?lstr1_Arithmetic+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Arithmetic.c,30 :: 		lcd_chr(2,1,'0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,31 :: 		lcd_chr(2,5,'0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,32 :: 		lcd_chr(2,7,'=');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      61
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,35 :: 		while(1)
L_main0:
;Arithmetic.c,37 :: 		if(PORTA.B0 == 0)
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;Arithmetic.c,39 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;Arithmetic.c,40 :: 		if(PORTA.B0 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main4
;Arithmetic.c,42 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Arithmetic.c,43 :: 		N1 = ch(i);
	MOVF       _i+0, 0
	MOVWF      FARG_ch_num+0
	MOVF       _i+1, 0
	MOVWF      FARG_ch_num+1
	CALL       _ch+0
	MOVF       R0+0, 0
	MOVWF      _N1+0
;Arithmetic.c,44 :: 		lcd_chr(2,1,N1);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,45 :: 		if(i==10)
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      10
	XORWF      _i+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;Arithmetic.c,47 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
;Arithmetic.c,48 :: 		lcd_chr(2,1,'0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,49 :: 		}
L_main5:
;Arithmetic.c,50 :: 		}
L_main4:
;Arithmetic.c,51 :: 		}
L_main2:
;Arithmetic.c,53 :: 		if(PORTA.B1 == 0)
	BTFSC      PORTA+0, 1
	GOTO       L_main6
;Arithmetic.c,55 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;Arithmetic.c,57 :: 		if(PORTA.B1 == 1)
	BTFSS      PORTA+0, 1
	GOTO       L_main8
;Arithmetic.c,59 :: 		j++;
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;Arithmetic.c,60 :: 		N2 = ch(j);
	MOVF       _j+0, 0
	MOVWF      FARG_ch_num+0
	MOVF       _j+1, 0
	MOVWF      FARG_ch_num+1
	CALL       _ch+0
	MOVF       R0+0, 0
	MOVWF      _N2+0
;Arithmetic.c,61 :: 		lcd_chr(2,5,N2);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,62 :: 		if(j==10)
	MOVLW      0
	XORWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      10
	XORWF      _j+0, 0
L__main40:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;Arithmetic.c,64 :: 		j=0;
	CLRF       _j+0
	CLRF       _j+1
;Arithmetic.c,65 :: 		lcd_chr(2,5,'0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,66 :: 		}
L_main9:
;Arithmetic.c,67 :: 		}
L_main8:
;Arithmetic.c,69 :: 		}
L_main6:
;Arithmetic.c,71 :: 		if(PORTA.B0 == 1 && PORTA.B1 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main12
	BTFSS      PORTA+0, 1
	GOTO       L_main12
L__main37:
;Arithmetic.c,73 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
;Arithmetic.c,74 :: 		if(PORTA.B0 == 1 && PORTA.B1 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main16
	BTFSS      PORTA+0, 1
	GOTO       L_main16
L__main36:
;Arithmetic.c,76 :: 		s++;
	INCF       _s+0, 1
;Arithmetic.c,77 :: 		if(s == 4)
	MOVF       _s+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;Arithmetic.c,79 :: 		s=0;
	CLRF       _s+0
;Arithmetic.c,80 :: 		}
L_main17:
;Arithmetic.c,81 :: 		}
L_main16:
;Arithmetic.c,82 :: 		}
L_main12:
;Arithmetic.c,84 :: 		switch(s)
	GOTO       L_main18
;Arithmetic.c,86 :: 		case 0:
L_main20:
;Arithmetic.c,87 :: 		lcd_chr(2,3,'+');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      43
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,88 :: 		rs = i + j;
	MOVF       _j+0, 0
	ADDWF      _i+0, 0
	MOVWF      _rs+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _j+1, 0
	MOVWF      _rs+1
;Arithmetic.c,89 :: 		break;
	GOTO       L_main19
;Arithmetic.c,90 :: 		case 1:
L_main21:
;Arithmetic.c,91 :: 		lcd_chr(2,3,'-');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      45
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,92 :: 		rs = i-j;
	MOVF       _j+0, 0
	SUBWF      _i+0, 0
	MOVWF      _rs+0
	MOVF       _j+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      _rs+1
;Arithmetic.c,93 :: 		break;
	GOTO       L_main19
;Arithmetic.c,94 :: 		case 2:
L_main22:
;Arithmetic.c,95 :: 		lcd_chr(2,3,'*');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,96 :: 		rs = i * j;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	MOVF       _j+0, 0
	MOVWF      R4+0
	MOVF       _j+1, 0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _rs+0
	MOVF       R0+1, 0
	MOVWF      _rs+1
;Arithmetic.c,97 :: 		break;
	GOTO       L_main19
;Arithmetic.c,98 :: 		case 3:
L_main23:
;Arithmetic.c,99 :: 		lcd_chr(2,3,'/');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      47
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Arithmetic.c,100 :: 		rs = i / j;
	MOVF       _j+0, 0
	MOVWF      R4+0
	MOVF       _j+1, 0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _rs+0
	MOVF       R0+1, 0
	MOVWF      _rs+1
;Arithmetic.c,101 :: 		break;
	GOTO       L_main19
;Arithmetic.c,102 :: 		}
L_main18:
	MOVF       _s+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVF       _s+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVF       _s+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main22
	MOVF       _s+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main23
L_main19:
;Arithmetic.c,106 :: 		IntToStr(rs,r);
	MOVF       _rs+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _rs+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _r+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Arithmetic.c,107 :: 		lcd_out(2,10,r);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _r+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Arithmetic.c,108 :: 		}
	GOTO       L_main0
;Arithmetic.c,109 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_ch:

;Arithmetic.c,112 :: 		char ch(int num)
;Arithmetic.c,114 :: 		switch(num)
	GOTO       L_ch24
;Arithmetic.c,116 :: 		case 0: return '0'; break;
L_ch26:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,117 :: 		case 1: return '1'; break;
L_ch27:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,118 :: 		case 2: return '2'; break;
L_ch28:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,119 :: 		case 3: return '3'; break;
L_ch29:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,120 :: 		case 4: return '4'; break;
L_ch30:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,121 :: 		case 5: return '5'; break;
L_ch31:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,122 :: 		case 6: return '6'; break;
L_ch32:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,123 :: 		case 7: return '7'; break;
L_ch33:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,124 :: 		case 8: return '8'; break;
L_ch34:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,125 :: 		case 9: return '9'; break;
L_ch35:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_ch
;Arithmetic.c,126 :: 		}
L_ch24:
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch42
	MOVLW      0
	XORWF      FARG_ch_num+0, 0
L__ch42:
	BTFSC      STATUS+0, 2
	GOTO       L_ch26
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch43
	MOVLW      1
	XORWF      FARG_ch_num+0, 0
L__ch43:
	BTFSC      STATUS+0, 2
	GOTO       L_ch27
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch44
	MOVLW      2
	XORWF      FARG_ch_num+0, 0
L__ch44:
	BTFSC      STATUS+0, 2
	GOTO       L_ch28
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch45
	MOVLW      3
	XORWF      FARG_ch_num+0, 0
L__ch45:
	BTFSC      STATUS+0, 2
	GOTO       L_ch29
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch46
	MOVLW      4
	XORWF      FARG_ch_num+0, 0
L__ch46:
	BTFSC      STATUS+0, 2
	GOTO       L_ch30
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch47
	MOVLW      5
	XORWF      FARG_ch_num+0, 0
L__ch47:
	BTFSC      STATUS+0, 2
	GOTO       L_ch31
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch48
	MOVLW      6
	XORWF      FARG_ch_num+0, 0
L__ch48:
	BTFSC      STATUS+0, 2
	GOTO       L_ch32
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch49
	MOVLW      7
	XORWF      FARG_ch_num+0, 0
L__ch49:
	BTFSC      STATUS+0, 2
	GOTO       L_ch33
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch50
	MOVLW      8
	XORWF      FARG_ch_num+0, 0
L__ch50:
	BTFSC      STATUS+0, 2
	GOTO       L_ch34
	MOVLW      0
	XORWF      FARG_ch_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ch51
	MOVLW      9
	XORWF      FARG_ch_num+0, 0
L__ch51:
	BTFSC      STATUS+0, 2
	GOTO       L_ch35
;Arithmetic.c,127 :: 		return 0;
	CLRF       R0+0
;Arithmetic.c,128 :: 		}
L_end_ch:
	RETURN
; end of _ch
