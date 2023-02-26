#line 1 "C:/Users/MD IMRAN HOSSAIN/Desktop/7-SEGMENT/1-Led Blinking/led blinking/Led blinking.c"
void main() {
 TRISB=0x00;
 PORTB=0x00;
#line 15 "C:/Users/MD IMRAN HOSSAIN/Desktop/7-SEGMENT/1-Led Blinking/led blinking/Led blinking.c"
 while(1){
 PORTB.f0=0xff;
 delay_ms(400);
 PORTB.f0=0x00;
 PORTB.f1=0xff;
 delay_ms(400);
 PORTB.f2=0xff;
 PORTB.f1=0x00;
 delay_ms(400);
 PORTB.f2=0x00;
 }
}
