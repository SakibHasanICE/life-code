#line 1 "C:/Users/MD IMRAN HOSSAIN/Desktop/7-SEGMENT/ADC/ADC.c"

int valADC;

char x[4];
void main() {

 uart1_init(9600);


 adc_init();


 while(1){

 valADC = adc_read(0);

 inttostr(valADC,x);

 uart1_write_text("Analog valu=");
 uart1_write_text(x);
 strcpy(x,"");
 uart1_write(13);
 delay_ms(1000);
 }
}
