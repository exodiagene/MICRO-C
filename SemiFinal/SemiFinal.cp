#line 1 "C:/Users/Gene/Documents/My Program Files/Micro C/Prelim/SemiFinal.c"
void main()
{
 TRISA = 0X01;
 TRISB = 0X00;

 while(1)
 {
 if(PORTA.B0 == 1 || PORTA.B1 == 1)
 {
 delay_ms(20);
 if (PORTA.B0 == 1 && PORTA.B1 == 1)
 {
 PORTB.B1 = 0;
 }
 else if(PORTA.B0 == 1 || PORTA.B1 == 1)
 {
 PORTB.B1 = 1;
 }
 }
 else PORTB.B1 =0;
 }
}
