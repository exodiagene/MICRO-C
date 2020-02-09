#line 1 "C:/Users/Gene/Desktop/Traffic Lights/TrafficLight.c"

unsigned int arr[ 6 ] = {0X3F,0X06,0X5B,0X4F,0X66,0X6D};
int i = 0;
int j = 0;
int k = 0;

void CountDown();


void main()
{
 TRISA = 0X00;
 TRISB = 0X80;

 while(1)
 {
 if(PORTB.B7 == 1)
 {
 delay_ms(10);
 if(PORTB.B7 == 0)
 {
 CountDown();

 }
 }
 }
}

void CountDown()
{
 PORTA.B1 = 1;
 for(i=5;i>=0;i--)
 {
 PORTB = arr[i];
 delay_ms(50);
 if(i==0)
 {
 PORTA.B1 = 0;
 PORTA.B2 = 1;
 for(j=1;j>=0;j--)
 {
 PORTB = arr[j];
 delay_ms(50);
 if(j==0)
 {
 PORTA.B2 = 0;
 PORTA.B3 = 1;
 for(k=5;k>=0;k--)
 {
 PORTB = arr[k];
 delay_ms(50);
 if(k==0)
 {
 PORTA.B3 = 0;
 PORTA.B1 = 1;
 i=6;
 }
 }
 }
 }
 }
 }
}
