
_main:

;Counter.c,8 :: 		void main()
;Counter.c,10 :: 		TRISB = 0X80;
	MOVLW      128
	MOVWF      TRISB+0
;Counter.c,11 :: 		while(1)
L_main0:
;Counter.c,13 :: 		if(i<=j)
	MOVF       _i+0, 0
	SUBWF      _j+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main2
;Counter.c,15 :: 		if(PORTB.B7 == 1)
	BTFSS      PORTB+0, 7
	GOTO       L_main3
;Counter.c,17 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;Counter.c,18 :: 		if(PORTB.B7 == 0)
	BTFSC      PORTB+0, 7
	GOTO       L_main5
;Counter.c,20 :: 		PORTB = arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Counter.c,21 :: 		i++;
	INCF       _i+0, 1
;Counter.c,22 :: 		}
L_main5:
;Counter.c,23 :: 		}
L_main3:
;Counter.c,24 :: 		}
	GOTO       L_main6
L_main2:
;Counter.c,27 :: 		if(PORTB.B7 == 1)
	BTFSS      PORTB+0, 7
	GOTO       L_main7
;Counter.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;Counter.c,30 :: 		if(PORTB.B7 == 0)
	BTFSC      PORTB+0, 7
	GOTO       L_main9
;Counter.c,32 :: 		PORTB = arr[j];
	MOVF       _j+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Counter.c,33 :: 		j--;
	DECF       _j+0, 1
;Counter.c,34 :: 		if(j==0)
	MOVF       _j+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;Counter.c,36 :: 		i=0;
	CLRF       _i+0
;Counter.c,37 :: 		j=5;
	MOVLW      5
	MOVWF      _j+0
;Counter.c,38 :: 		}
L_main10:
;Counter.c,39 :: 		}
L_main9:
;Counter.c,40 :: 		}
L_main7:
;Counter.c,41 :: 		}
L_main6:
;Counter.c,42 :: 		}
	GOTO       L_main0
;Counter.c,43 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
