
_main:

;TrafficLight.c,10 :: 		void main()
;TrafficLight.c,12 :: 		TRISA = 0X00;
	CLRF       TRISA+0
;TrafficLight.c,13 :: 		TRISB = 0X80;
	MOVLW      128
	MOVWF      TRISB+0
;TrafficLight.c,15 :: 		while(1)
L_main0:
;TrafficLight.c,17 :: 		if(PORTB.B7 == 1)
	BTFSS      PORTB+0, 7
	GOTO       L_main2
;TrafficLight.c,19 :: 		delay_ms(10);
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
;TrafficLight.c,20 :: 		if(PORTB.B7 == 0)
	BTFSC      PORTB+0, 7
	GOTO       L_main4
;TrafficLight.c,22 :: 		CountDown();
	CALL       _CountDown+0
;TrafficLight.c,24 :: 		}
L_main4:
;TrafficLight.c,25 :: 		}
L_main2:
;TrafficLight.c,26 :: 		}
	GOTO       L_main0
;TrafficLight.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_CountDown:

;TrafficLight.c,29 :: 		void CountDown()
;TrafficLight.c,31 :: 		PORTA.B1 = 1;
	BSF        PORTA+0, 1
;TrafficLight.c,32 :: 		for(i=5;i>=0;i--)
	MOVLW      5
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_CountDown5:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown22
	MOVLW      0
	SUBWF      _i+0, 0
L__CountDown22:
	BTFSS      STATUS+0, 0
	GOTO       L_CountDown6
;TrafficLight.c,34 :: 		PORTB = arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;TrafficLight.c,35 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_CountDown8:
	DECFSZ     R13+0, 1
	GOTO       L_CountDown8
	DECFSZ     R12+0, 1
	GOTO       L_CountDown8
	NOP
	NOP
;TrafficLight.c,36 :: 		if(i==0)
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown23
	MOVLW      0
	XORWF      _i+0, 0
L__CountDown23:
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown9
;TrafficLight.c,38 :: 		PORTA.B1 = 0;
	BCF        PORTA+0, 1
;TrafficLight.c,39 :: 		PORTA.B2 = 1;
	BSF        PORTA+0, 2
;TrafficLight.c,40 :: 		for(j=1;j>=0;j--)
	MOVLW      1
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_CountDown10:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown24
	MOVLW      0
	SUBWF      _j+0, 0
L__CountDown24:
	BTFSS      STATUS+0, 0
	GOTO       L_CountDown11
;TrafficLight.c,42 :: 		PORTB = arr[j];
	MOVF       _j+0, 0
	MOVWF      R0+0
	MOVF       _j+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;TrafficLight.c,43 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_CountDown13:
	DECFSZ     R13+0, 1
	GOTO       L_CountDown13
	DECFSZ     R12+0, 1
	GOTO       L_CountDown13
	NOP
	NOP
;TrafficLight.c,44 :: 		if(j==0)
	MOVLW      0
	XORWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown25
	MOVLW      0
	XORWF      _j+0, 0
L__CountDown25:
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown14
;TrafficLight.c,46 :: 		PORTA.B2 = 0;
	BCF        PORTA+0, 2
;TrafficLight.c,47 :: 		PORTA.B3 = 1;
	BSF        PORTA+0, 3
;TrafficLight.c,48 :: 		for(k=5;k>=0;k--)
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_CountDown15:
	MOVLW      128
	XORWF      _k+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown26
	MOVLW      0
	SUBWF      _k+0, 0
L__CountDown26:
	BTFSS      STATUS+0, 0
	GOTO       L_CountDown16
;TrafficLight.c,50 :: 		PORTB = arr[k];
	MOVF       _k+0, 0
	MOVWF      R0+0
	MOVF       _k+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;TrafficLight.c,51 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_CountDown18:
	DECFSZ     R13+0, 1
	GOTO       L_CountDown18
	DECFSZ     R12+0, 1
	GOTO       L_CountDown18
	NOP
	NOP
;TrafficLight.c,52 :: 		if(k==0)
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CountDown27
	MOVLW      0
	XORWF      _k+0, 0
L__CountDown27:
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown19
;TrafficLight.c,54 :: 		PORTA.B3 = 0;
	BCF        PORTA+0, 3
;TrafficLight.c,55 :: 		PORTA.B1 = 1;
	BSF        PORTA+0, 1
;TrafficLight.c,56 :: 		i=6;
	MOVLW      6
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;TrafficLight.c,57 :: 		}
L_CountDown19:
;TrafficLight.c,48 :: 		for(k=5;k>=0;k--)
	MOVLW      1
	SUBWF      _k+0, 1
	BTFSS      STATUS+0, 0
	DECF       _k+1, 1
;TrafficLight.c,58 :: 		}
	GOTO       L_CountDown15
L_CountDown16:
;TrafficLight.c,59 :: 		}
L_CountDown14:
;TrafficLight.c,40 :: 		for(j=1;j>=0;j--)
	MOVLW      1
	SUBWF      _j+0, 1
	BTFSS      STATUS+0, 0
	DECF       _j+1, 1
;TrafficLight.c,60 :: 		}
	GOTO       L_CountDown10
L_CountDown11:
;TrafficLight.c,61 :: 		}
L_CountDown9:
;TrafficLight.c,32 :: 		for(i=5;i>=0;i--)
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;TrafficLight.c,62 :: 		}
	GOTO       L_CountDown5
L_CountDown6:
;TrafficLight.c,63 :: 		}
L_end_CountDown:
	RETURN
; end of _CountDown
