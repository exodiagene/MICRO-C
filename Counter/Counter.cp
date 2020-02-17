#line 1 "C:/Users/Gene/Desktop/Counter/Counter.c"
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

unsigned short i;
char txt[7];

void main() {
 lcd_init();
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);

 lcd_out_cp("COUNTER: ");
 while(1)
 {
 for(i=0;i<=50;i++)
 {
 IntToStr(i,txt);
 lcd_out(1,9,txt);
 delay_ms(10);
 }
 }

}
