#line 1 "C:/Users/Gene/Documents/GitHub/MICRO-C/Arithmetic/Arithmetic.c"
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

char ch(int num);

unsigned int i,j;
int rs;
unsigned short N1,N2,s = 0;
short r[7];


void main()
{
 lcd_init();
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);
 TRISA = 0x01;
 LCD_OUT_cp("ARITHMETIC OP:");
 lcd_chr(2,1,'0');
 lcd_chr(2,5,'0');
 lcd_chr(2,7,'=');


 while(1)
 {
 if(PORTA.B0 == 0)
 {
 delay_ms(10);
 if(PORTA.B0 == 1)
 {
 i++;
 N1 = ch(i);
 lcd_chr(2,1,N1);
 if(i==10)
 {
 i=0;
 lcd_chr(2,1,'0');
 }
 }
 }

 if(PORTA.B1 == 0)
 {
 delay_ms(20);
 {
 if(PORTA.B1 == 1)
 {
 j++;
 N2 = ch(j);
 lcd_chr(2,5,N2);
 if(j==10)
 {
 j=0;
 lcd_chr(2,5,'0');
 }
 }
 }
 }

 if(PORTA.B0 == 1 && PORTA.B1 == 1)
 {
 delay_ms(10);
 if(PORTA.B0 == 1 && PORTA.B1 == 1)
 {
 s++;
 if(s == 4)
 {
 s=0;
 }
 }
 }

 switch(s)
 {
 case 0:
 lcd_chr(2,3,'+');
 rs = i + j;
 break;
 case 1:
 lcd_chr(2,3,'-');
 rs = i-j;
 break;
 case 2:
 lcd_chr(2,3,'*');
 rs = i * j;
 break;
 case 3:
 lcd_chr(2,3,'/');
 rs = i / j;
 break;
 }



 IntToStr(rs,r);
 lcd_out(2,10,r);
 }
}


char ch(int num)
{
 switch(num)
 {
 case 0: return '0'; break;
 case 1: return '1'; break;
 case 2: return '2'; break;
 case 3: return '3'; break;
 case 4: return '4'; break;
 case 5: return '5'; break;
 case 6: return '6'; break;
 case 7: return '7'; break;
 case 8: return '8'; break;
 case 9: return '9'; break;
 }
 return 0;
}
