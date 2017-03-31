/* source code from http://www.edsim51.com/examples/lcd.c
// Modified to work with SDCC 
//
// To work, you have to change the EdSim51 LCD connection
// to connect RS to P3.3 and E to P3.2.
// You can do that using the DI button at the top left of the peripheral panel.
//
// To compile, use the commands
// % sdcc --model-small -mmcs51 --Werror -I. -c lcd.c
// % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30 --out-fmt-ihx lcd.rel
// % packihx lcd.ihx > lcd.hex
//
*/
#include <8051.h>

#define DB P1
#define RS P2_3
#define E P2_2

#define SW0 P3_2  // SW0
#define SW1 P3_3   // SW1


unsigned int SEC;
unsigned int MIN;
unsigned int HOUR;
unsigned int DAY;
unsigned int MONTH;
unsigned int YEAR;

void returnHome(void);
void entryModeSet();
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void cursorOrDisplayShift(__bit sc, __bit rl);
void functionSet(void);
void clearDisplay(void);
void setDdRamAddress(char address);
void _sdcc_gsinit_startup(void);

void sendChar(char c);
void sendString(char* str);
void delay(void);
void big_delay(void);
void timer_delay(void);
void timer0_isr(void) __interrupt(1) __using(1);
void int0_isr (void) __interrupt (0) __using (1);
void int1_isr (void) __interrupt (2) __using (1);
void sendValue(char address, unsigned int value);
void clock_setup(unsigned int line1, unsigned int line2);



void main(void) {
	functionSet();
	entryModeSet(); // increment and no shift
	displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	sendString("00:00:00");
	setDdRamAddress(0x40); // set address to start of second line
	sendString("01-01-00");
	
	IT0 = 1;	// edge trigger int0
	IT1 = 1;	// edge trigger int1
	IE = 0x87;  //enable timer0, int0, int1 interrupt
	
	SEC		= 0;
	MIN		= 0;
	HOUR	= 0;
	DAY		= 1;
	MONTH	= 1;
	YEAR	= 0;
	
	while (1) timer_delay();	// start the clock
}




//Timer 0 interrupt handler
void timer0_isr(void) __interrupt(1) __using(1){
	
	//----------------------------------------------------
	/*
	First we check the second. If it is less than
	59, we increment it and continue. If it is equal
	to 59, we reset it to 0 and check the minute. 
	If minute is less than 59, we increment it and
	continue. If it is equal to 59, we reset it to 0 
	and check the hour. If hour is less than 23, we 
	increment it and continue. If it is equal to 23,
	we reset it to 0 and check the day. If day is less 
	than 28, no matter what month, we increment it and 
	continue. if it is equal to 28 and the month is 2, 
	we reset it to 1 and increment the month. Otherwise,
	if day is equal to 30 and the month is either 4, 6, 9
	or 11, we reset it to 1 amd increment month. Else, if 
	day is equal to 31, we reset it to 1 and check if the 
	month is 12. If it is, we reset day and month and 
	increment year.
	
	*/
	//----------------------------------------------------
	
	
	
	if (SEC < 59){
		SEC++;
		sendValue(0x06, SEC);
		return;
	}

	else if (SEC == 59){
		SEC = 0;
		sendValue(0x06, SEC);
		
		if (MIN < 59){
			MIN++;
			sendValue(0x03, MIN);
			return;
		}
		
		else if (MIN == 59){
			MIN = 0;
			sendValue(0x03, MIN);
			
			if (HOUR < 23){
				HOUR++;
				sendValue(0x00, HOUR);
				return;
			}
			
			else if(HOUR == 23){
				HOUR = 0;
				sendValue(0x00, HOUR);
				
				if (DAY < 28){
					DAY++;
					sendValue(0x40, DAY);
					return;
				}
				
				if (DAY == 28 && MONTH == 2){
					DAY = 1;
					sendValue(0x40, DAY);
					MONTH++;
					sendValue(0x43, MONTH);
					return;
				}
				
				if (DAY == 30 && (MONTH == 4 || MONTH == 6 || MONTH == 9 || MONTH == 11)){
					DAY = 1;
					sendValue(0x40, DAY);
					MONTH++;
					sendValue(0x43, MONTH);
					return;
				}
				
				else if (DAY == 31){
					DAY = 1;
					sendValue(0x40, DAY);
					
					if (MONTH < 12){
						MONTH++;
						sendValue(0x43, MONTH);
						return;
					}
					
					else if (MONTH == 12){
						MONTH = 1;
						sendValue(0x43, MONTH);
						
						YEAR++;
						sendValue(0x46, YEAR);
						
					}
				}
			}
		}
		
	}
	
	
}

//INT0 interrupt handler
void int0_isr (void) __interrupt (0) __using (1){
	
	setDdRamAddress(0x08);	//set DDRAM to end of line 1
	clock_setup(1, 0);		//call clock setup for line 1
	
}

void int1_isr (void) __interrupt (2) __using (1){
	
	setDdRamAddress(0x48);	//set DDRAM to end of line 2
	clock_setup(0, 1);		//call clock setup for line 2
}


//Clock Setup function that handles clock modifications
void clock_setup(unsigned int line1, unsigned int line2){
	
	// --------------------------------
	// Keypad Setup
	//---------------------------------
	unsigned char row;				// Contains the required mask to clear one of the rows at a time
	unsigned char col;				// Contains the output of the columns
	unsigned char keypad[4][3] = {	// This array contains the ASCII of the keypad keys
		{'3','2','1'},
		{'6','5','4'},
		{'9','8','7'},
		{'#','0','*'}
		};
	unsigned char i;
	unsigned char gotkey = 0;
	//--------------------------------
	
	unsigned char gotkey_pressed = 0;
	unsigned int temp;
	char current_addr1;		// variable to hold the address the cursor is on in line 1
	char current_addr2;		// variable to hold the address the cursor is on in line 2
	
	current_addr1 = 0x08;	//set initial current cursor address to last block of line 1
	current_addr2 = 0x48;	//set initial current cursor address to last block of line 2
	
	while(!( line1? SW0 : SW1 )){
		row = 0xf7;  // The first row (connected to P0.3) will be zero
		
		for (i=0;i<4;++i){ // loop over the 4 rows
			
			P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
			P0 = P0 & row; // clear one row at a time
			col = P0 & 0x70;  // Read the 3 columns
			if (col != 0x70){ // If any column is zero i.e. a key is pressed
				col = (~col) & 0x70;  // because the selected column returns zero
				col = col >> 5;       // The column variable now contain the number of the selected column
				gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
				
				if (line1){ 	//Only modify line 1
					
					if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
						
						if (current_addr1 == 0x08) break;
						
						// Updating current values
						if (current_addr1 == 0x06){	//if current address is first digit of second 
							temp = gotkey - '0';	//convert char to int
							temp = (10 * temp) + (SEC % 10);	//create new second value
							
							if (temp > 59) 	break;	//if new second value is > 59, don't update
							else{
								SEC = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr1 == 0x07){
							temp = gotkey - '0';
							temp = ((SEC / 10) * 10) + temp;
							
							if (temp > 59) 	break;
							else{
								SEC = temp; 
								sendChar(gotkey);
							}
						}
						

						if (current_addr1 == 0x03){
							temp = gotkey - '0';
							temp = (10 * temp) + (MIN % 10);
							
							if (temp > 59) 	break;
							else{
								MIN = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr1 == 0x04){
							temp = gotkey - '0';
							temp = ((MIN / 10) * 10) + temp;
							
							if (temp > 59) 	break;
							else{
								MIN = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr1 == 0x00){
							temp = gotkey - '0';
							temp = (10 * temp) + (HOUR % 10);
							
							if (temp > 23) 	break;
							else{
								HOUR = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr1 == 0x01){
							temp = gotkey - '0';
							temp = ((HOUR / 10) * 10) + temp;
							
							if (temp > 23) 	break;
							else{
								HOUR = temp; 
								sendChar(gotkey);
							}
						}
						
						
						current_addr1++;	//move current address to next block
						break;
					}
					
					
					if (gotkey == '*'){		//move cursor left
						
						gotkey_pressed = 1;
						
						//if cursor is at the first block, go to last block
						if (current_addr1 == 0x00){
							setDdRamAddress(0x08);
							current_addr1 = 0x08;
							break;
						}
						cursorOrDisplayShift(0, 0);
						current_addr1--;
						
					}
					
					if (gotkey == '#'){		//move cursor right
						
						gotkey_pressed = 1;
						
						//if cursor is at the last block, go back to first block
						if (current_addr1 == 0x07){
							setDdRamAddress(0x00);
							current_addr1 = 0x00;
							break;
						}						
						cursorOrDisplayShift(0, 1);
						current_addr1++;
					}
					
					break;
				}
				
				if (line2){		//Only modify line 2
					
					if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
						
						if (current_addr2 == 0x48) break;
						
						
						// Updating current values
						if (current_addr2 == 0x46){
							temp = gotkey - '0';
							YEAR = (10 * temp) + (YEAR % 10);
							sendChar(gotkey);
						}
						
						if (current_addr2 == 0x47){
							temp = gotkey - '0';
							YEAR = ((YEAR / 10) * 10) + temp;
							sendChar(gotkey);
						}
						

						if (current_addr2 == 0x43){
							temp = gotkey - '0';
							temp = (10 * temp) + (MONTH % 10);
							
							if (temp < 1 || temp > 12) 				break;
							else{
								MONTH = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr2 == 0x44){
							temp = gotkey - '0';
							temp = ((MONTH / 10) * 10) + temp;
							
							if (temp < 1 || temp > 12) 				break;
							else {
								MONTH = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr2 == 0x40){
							temp = gotkey - '0';
							temp = (10 * temp) + (DAY % 10);
							
							if      (temp < 1 || temp > 31) 		break;
							else if (MONTH == 2 && temp > 28) 		break;
							else if ((MONTH == 4 || 
									  MONTH == 6 || 
									  MONTH == 9 || 
									  MONTH == 11) && temp > 30)	break;
							else {
								DAY = temp; 
								sendChar(gotkey);
							}
						}
						
						if (current_addr2 == 0x41){
							temp = gotkey - '0';
							temp = ((DAY / 10) * 10) + temp;
							
							if      (temp < 1 || temp > 31) 		break;
							else if (MONTH == 2 && temp > 28) 		break;
							else if ((MONTH == 4 || 
									  MONTH == 6 || 
									  MONTH == 9 || 
									  MONTH == 11) && temp > 30)	break;
							else {
								DAY = temp; 
								sendChar(gotkey);
							}
						}
						
						current_addr2++;
						break;
					}
					
					
					if (gotkey == '*'){		// Move cursor to the left
						
						gotkey_pressed = 1;
						
						if (current_addr2 == 0x40){
							setDdRamAddress(0x48);
							current_addr2 = 0x48;
							break;
						}
						cursorOrDisplayShift(0, 0);
						current_addr2--;
						
					}
					
					if (gotkey == '#'){		// Move cursor to the right
						
						gotkey_pressed = 1;
						
						if (current_addr2 == 0x47){
							setDdRamAddress(0x40);
							current_addr2 = 0x40;
							break;
						}						
						cursorOrDisplayShift(0, 1);
						current_addr2++;
					}
					
					break;
				}
				
				
			}
			row = row >> 1;   // No key is detected yet, try the next row
			row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
			
		}
		
		gotkey = 0;
		
		
	}
	
	if      (line1) setDdRamAddress(0x08);
	else if (line2) setDdRamAddress(0x48);
	
}



void sendValue(char address, unsigned int value){
	setDdRamAddress(address);
	sendChar((value / 10) + '0');
	sendChar((value % 10) + '0');
}


// LCD Module instructions -------------------------------------------
void returnHome(void) {
	RS = 0;
	P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void entryModeSet() {
	RS = 0;
	P1 = 0x06;  
	E = 1;
	E = 0;
	delay();
}

void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
	P1_7 = 0;
	P1_6 = 0;
	P1_5 = 0;
	P1_4 = 0;
	P1_3 = 1;
	P1_2 = display;
	P1_1 = cursor;
	P1_0 = blinking;
	E = 1;
	E = 0;
	delay();
}

void cursorOrDisplayShift(__bit sc, __bit rl) {
	RS = 0;
	P1_7 = 0;
	P1_6 = 0;
	P1_5 = 0;
	P1_4 = 1;
	P1_3 = sc;
	P1_2 = rl;
	P1_1 = 0;
	P1_0 = 0;
	E = 1;
	E = 0;
	delay();
}

void functionSet(void) {
	RS = 0;
	P1 = 0x38; // 8-bit mode, 2 lines LCD
	E = 1;
	E = 0;
	delay();
}

void clearDisplay(void) {
	RS = 0;
	P1 = 0x01; // command to clear LCD and return the cursor to the home position
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
	RS = 0;
	P1 = address | 0x80;  // set the MSB to detect that this is an address
	E = 1;
	E = 0;
	delay();
}

// --------------------------------------------------------------------

void sendChar(char c) {  // Function to send one character to be displayed on the LCD
	RS = 1;
	P1 = c;
	E = 1;
	E = 0;
	delay();
}

void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
	char c;
	while (c = *str++) {
		sendChar(c);
	}
}

void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}

void big_delay(void) {
	unsigned char c;
	for (c = 0; c < 255; c++);
}


void timer_delay(void){
	
	unsigned char a=20; //Using a 100 ms delay instead of 1s  
	TMOD = 0x01;
	while (a != 0){
		TL0 = 0xAF;
		TH0 = 0x3C;
		TR0 = 1;
		while (!TF0) ;
		TR0 = 0;
		TF0 = 0;
		a = a-1;

	}
		
}


void _sdcc_gsinit_startup(void) {

        __asm
                mov sp, #0x5F
        __endasm;
        main();
}


























