//lcd module connections
sbit lcd_rs at rb0_bit;
sbit lcd_en at rb1_bit;
sbit lcd_d4 at rb2_bit;
sbit lcd_d5 at rb3_bit;
sbit lcd_d6 at rb4_bit;
sbit lcd_d7 at rb5_bit;

sbit lcd_rs_direction at trisb0_bit;
sbit lcd_en_direction at trisb1_bit;
sbit lcd_d4_direction at trisb2_bit;
sbit lcd_d5_direction at trisb3_bit;
sbit lcd_d6_direction at trisb4_bit;
sbit lcd_d7_direction at trisb5_bit;

char display[16]="";
void main() {
   unsigned int result;
   float volt,temp;
   
   trisb=0x00;
   trisa=0xff;
   adcon1=0x90;
   lcd_init();
   lcd_cmd(_lcd_cursor_off);
   while(1){
      result=adc_read(0);
      volt=result*4.88;
      temp=volt/10;
      lcd_out(1,1,"temp=");
      floattostr(temp,display);
      lcd_out_cp(display);
      lcd_chr(1,16,223);
      lcd_out_cp(" C");
   }
}