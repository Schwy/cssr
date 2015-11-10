/* 
 * Description : super TP
 * COURS : SE-5101-B/C
 * AUTEURS :
 * 	Antoine
 * 	Nicolas
 *  Yann
 */



#define PI 3.1415

#define BASE_0 0x0320
#define BASE_1 BASE_0+1
#define BASE_2 BASE_0+2
#define BASE_3 BASE_0+3
#define BASE_8 BASE_0+8

// faire define pour chaque registre SR/AD3 ...

void init_3718(void)
{
	// Trigger the A/D conversion by writing to the A/D low byte register (BASE+0) with any value.
	outb(BASE_0,0xFF);

}

void set_chanel(int chanel)
{
	outb(BASE_2, chanel);							// selectione le chanel	
}

void ad_range_select(int chanel, int range)
{
	// Set the input range for each A/D channel. (p26/30))
	// base+1 D3 to D0 = b1000 
	outb(BASE_2, chanel);							// selectione le chanel
	outb(BASE_1, range);							// met le range 
}
/*	
 *	
 */
int adc_read()
{
	// Check for the end of the conversion by reading the A/D status register (BASE+8) INT bit.
	int lsb		= 0;
	int msb		= 0;
	int eoc		= 0;	
	int res 	= 0;

	eoc = inb(BASE_8);								// EOC: end of convertion p41/37
	if((eoc && 0x80) == 0x80);						// verif fin conversion
	{			
		// Read data from the A/D converter by reading the A/D data registers (BASE+0 and BASE+1).
		
		lsb = inb(BASE_0) >> 4; 					// recuperation du LSB 
		msb = inb(BASE_1);							// recuparation du MSB
		
		// Convert the binary A/D data to an integer.
		res = (msb << 4) + lsb; 							
	
	}
	return res;
}

float adc_convert_pos(int value)
{
	return (value*1.2/4096)-0.6;
}

float adc_convert_angle(int value)
{
	return ((value*70/4096)-35)*PI/180;
}



