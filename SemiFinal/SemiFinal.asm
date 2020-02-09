
_main:

;SemiFinal.c,1 :: 		void main()
;SemiFinal.c,3 :: 		TRISA = 0X01;
	MOVLW      1
	MOVWF      TRISA+0
;SemiFinal.c,4 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;SemiFinal.c,6 :: 		while(1)
L_main0:
;SemiFinal.c,8 :: 		if(PORTA.B0 == 1 || PORTA.B1 == 1)
	BTFSC      PORTA+0, 0
	GOTO       L__main16
	BTFSC      PORTA+0, 1
	GOTO       L__main16
	GOTO       L_main4
L__main16:
;SemiFinal.c,10 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;SemiFinal.c,11 :: 		if (PORTA.B0 == 1 && PORTA.B1 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main8
	BTFSS      PORTA+0, 1
	GOTO       L_main8
L__main15:
;SemiFinal.c,13 :: 		PORTB.B1 = 0;
	BCF        PORTB+0, 1
;SemiFinal.c,14 :: 		}
	GOTO       L_main9
L_main8:
;SemiFinal.c,15 :: 		else if(PORTA.B0 == 1 || PORTA.B1 == 1)
	BTFSC      PORTA+0, 0
	GOTO       L__main14
	BTFSC      PORTA+0, 1
	GOTO       L__main14
	GOTO       L_main12
L__main14:
;SemiFinal.c,17 :: 		PORTB.B1 = 1;
	BSF        PORTB+0, 1
;SemiFinal.c,18 :: 		}
L_main12:
L_main9:
;SemiFinal.c,19 :: 		}
	GOTO       L_main13
L_main4:
;SemiFinal.c,20 :: 		else PORTB.B1 =0;
	BCF        PORTB+0, 1
L_main13:
;SemiFinal.c,21 :: 		}
	GOTO       L_main0
;SemiFinal.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
