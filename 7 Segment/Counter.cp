#line 1 "C:/Users/Gene/Desktop/7 Segment/Counter.c"

unsigned int arr[ 6 ] = {0X3F,0X06,0X5B,0X4F,0X66,0X6D};
unsigned short i=0;
unsigned short j=5;
unsigned short reverse = 0;


void main()
{
 TRISB = 0X80;
 while(1)
 {
 if(i<=j)
 {
 if(PORTB.B7 == 1)
 {
 delay_ms(10);
 if(PORTB.B7 == 0)
 {
 PORTB = arr[i];
 i++;
 }
 }
 }
 else
 {
 if(PORTB.B7 == 1)
 {
 delay_ms(10);
 if(PORTB.B7 == 0)
 {
 PORTB = arr[j];
 j--;
 if(j==0)
 {
 i=0;
 j=5;
 }
 }
 }
 }
 }
}
