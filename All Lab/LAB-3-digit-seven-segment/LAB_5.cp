#line 1 "C:/Users/Joala/Desktop/LAB_Solution/LAB-5/LAB_5.c"

int array[]={63,6,91,79,102,109,125,7,127,111};
void main() {
 int i=100,j;
 int left,right,middle;
 TRISC = 0x00;
 TRISD = 0x00;
 PORTC=0x00;
 PORTD=0x00;

 while(1){
 left = i/100;
 middle = (i%100)/10;
 right = (i%100)%10;

 for(j=0;j<34;j++){
 portd.f0=1;
 portc = array[left];
 portd.f1=0;
 delay_ms(10);
 portd.f1=1;
 portc = array[middle];
 portd.f2=0;
 delay_ms(10);
 portd.f2=1;
 portc = array[right];
 portd.f3=0;
 delay_ms(10);
 portd.f3=1;
 }
 i++;
 if(i>999){i=100;}
 }



 }
