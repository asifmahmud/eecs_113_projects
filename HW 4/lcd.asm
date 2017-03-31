;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Thu May 19 21:23:59 2016
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _cursorOrDisplayShift_PARM_2
	.globl _cursorOrDisplayShift_PARM_1
	.globl _displayOnOffControl_PARM_3
	.globl _displayOnOffControl_PARM_2
	.globl _displayOnOffControl_PARM_1
	.globl _sendValue_PARM_2
	.globl _clock_setup_PARM_2
	.globl _YEAR
	.globl _MONTH
	.globl _DAY
	.globl _HOUR
	.globl _MIN
	.globl _SEC
	.globl _timer0_isr
	.globl _int0_isr
	.globl _int1_isr
	.globl _clock_setup
	.globl _sendValue
	.globl _returnHome
	.globl _entryModeSet
	.globl _displayOnOffControl
	.globl _cursorOrDisplayShift
	.globl _functionSet
	.globl _clearDisplay
	.globl _setDdRamAddress
	.globl _sendChar
	.globl _sendString
	.globl _delay
	.globl _big_delay
	.globl _timer_delay
	.globl __sdcc_gsinit_startup
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SEC::
	.ds 2
_MIN::
	.ds 2
_HOUR::
	.ds 2
_DAY::
	.ds 2
_MONTH::
	.ds 2
_YEAR::
	.ds 2
_clock_setup_PARM_2:
	.ds 2
_clock_setup_line1_1_38:
	.ds 2
_clock_setup_keypad_1_39:
	.ds 12
_clock_setup_gotkey_1_39:
	.ds 1
_clock_setup_gotkey_pressed_1_39:
	.ds 1
_clock_setup_current_addr1_1_39:
	.ds 1
_clock_setup_current_addr2_1_39:
	.ds 1
_clock_setup_sloc1_1_0:
	.ds 2
_sendValue_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_clock_setup_sloc0_1_0:
	.ds 1
_displayOnOffControl_PARM_1:
	.ds 1
_displayOnOffControl_PARM_2:
	.ds 1
_displayOnOffControl_PARM_3:
	.ds 1
_cursorOrDisplayShift_PARM_1:
	.ds 1
_cursorOrDisplayShift_PARM_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0_isr
	.ds	5
	ljmp	_timer0_isr
	.ds	5
	ljmp	_int1_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	lcd.c:53: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lcd.c:54: functionSet();
	lcall	_functionSet
;	lcd.c:55: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
;	lcd.c:56: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	lcall	_displayOnOffControl
;	lcd.c:57: sendString("00:00:00");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:58: setDdRamAddress(0x40); // set address to start of second line
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	lcd.c:59: sendString("01-01-00");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:61: IT0 = 1;	// edge trigger int0
	setb	_IT0
;	lcd.c:62: IT1 = 1;	// edge trigger int1
	setb	_IT1
;	lcd.c:63: IE = 0x87;  //enable timer0, int0, int1 interrupt
	mov	_IE,#0x87
;	lcd.c:65: SEC		= 0;
	clr	a
	mov	_SEC,a
	mov	(_SEC + 1),a
;	lcd.c:66: MIN		= 0;
	mov	_MIN,a
	mov	(_MIN + 1),a
;	lcd.c:67: HOUR	= 0;
	mov	_HOUR,a
	mov	(_HOUR + 1),a
;	lcd.c:68: DAY		= 1;
	mov	_DAY,#0x01
;	1-genFromRTrack replaced	mov	(_DAY + 1),#0x00
	mov	(_DAY + 1),a
;	lcd.c:69: MONTH	= 1;
	mov	_MONTH,#0x01
;	1-genFromRTrack replaced	mov	(_MONTH + 1),#0x00
	mov	(_MONTH + 1),a
;	lcd.c:70: YEAR	= 0;
	mov	_YEAR,a
	mov	(_YEAR + 1),a
;	lcd.c:72: while (1) timer_delay();	// start the clock
00102$:
	lcall	_timer_delay
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;	lcd.c:79: void timer0_isr(void) __interrupt(1) __using(1){
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	lcd.c:105: if (SEC < 59){
	clr	c
	mov	a,_SEC
	subb	a,#0x3B
	mov	a,(_SEC + 1)
	subb	a,#0x00
	jnc	00133$
;	lcd.c:106: SEC++;
	inc	_SEC
	clr	a
	cjne	a,_SEC,00186$
	inc	(_SEC + 1)
00186$:
;	lcd.c:107: sendValue(0x06, SEC);
	mov	_sendValue_PARM_2,_SEC
	mov	(_sendValue_PARM_2 + 1),(_SEC + 1)
	mov	dpl,#0x06
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:108: return;
	ljmp	00135$
00133$:
;	lcd.c:111: else if (SEC == 59){
	mov	a,#0x3B
	cjne	a,_SEC,00187$
	clr	a
	cjne	a,(_SEC + 1),00187$
	sjmp	00188$
00187$:
	ljmp	00135$
00188$:
;	lcd.c:112: SEC = 0;
	clr	a
	mov	_SEC,a
	mov	(_SEC + 1),a
;	lcd.c:113: sendValue(0x06, SEC);
	mov	_sendValue_PARM_2,a
	mov	(_sendValue_PARM_2 + 1),a
	mov	dpl,#0x06
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:115: if (MIN < 59){
	clr	c
	mov	a,_MIN
	subb	a,#0x3B
	mov	a,(_MIN + 1)
	subb	a,#0x00
	jnc	00128$
;	lcd.c:116: MIN++;
	inc	_MIN
	clr	a
	cjne	a,_MIN,00190$
	inc	(_MIN + 1)
00190$:
;	lcd.c:117: sendValue(0x03, MIN);
	mov	_sendValue_PARM_2,_MIN
	mov	(_sendValue_PARM_2 + 1),(_MIN + 1)
	mov	dpl,#0x03
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:118: return;
	ljmp	00135$
00128$:
;	lcd.c:121: else if (MIN == 59){
	mov	a,#0x3B
	cjne	a,_MIN,00191$
	clr	a
	cjne	a,(_MIN + 1),00191$
	sjmp	00192$
00191$:
	ljmp	00135$
00192$:
;	lcd.c:122: MIN = 0;
	clr	a
	mov	_MIN,a
	mov	(_MIN + 1),a
;	lcd.c:123: sendValue(0x03, MIN);
	mov	_sendValue_PARM_2,a
	mov	(_sendValue_PARM_2 + 1),a
	mov	dpl,#0x03
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:125: if (HOUR < 23){
	clr	c
	mov	a,_HOUR
	subb	a,#0x17
	mov	a,(_HOUR + 1)
	subb	a,#0x00
	jnc	00123$
;	lcd.c:126: HOUR++;
	inc	_HOUR
	clr	a
	cjne	a,_HOUR,00194$
	inc	(_HOUR + 1)
00194$:
;	lcd.c:127: sendValue(0x00, HOUR);
	mov	_sendValue_PARM_2,_HOUR
	mov	(_sendValue_PARM_2 + 1),(_HOUR + 1)
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:128: return;
	ljmp	00135$
00123$:
;	lcd.c:131: else if(HOUR == 23){
	mov	a,#0x17
	cjne	a,_HOUR,00195$
	clr	a
	cjne	a,(_HOUR + 1),00195$
	sjmp	00196$
00195$:
	ljmp	00135$
00196$:
;	lcd.c:132: HOUR = 0;
	clr	a
	mov	_HOUR,a
	mov	(_HOUR + 1),a
;	lcd.c:133: sendValue(0x00, HOUR);
	mov	_sendValue_PARM_2,a
	mov	(_sendValue_PARM_2 + 1),a
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:135: if (DAY < 28){
	clr	c
	mov	a,_DAY
	subb	a,#0x1C
	mov	a,(_DAY + 1)
	subb	a,#0x00
	jnc	00102$
;	lcd.c:136: DAY++;
	inc	_DAY
	clr	a
	cjne	a,_DAY,00198$
	inc	(_DAY + 1)
00198$:
;	lcd.c:137: sendValue(0x40, DAY);
	mov	_sendValue_PARM_2,_DAY
	mov	(_sendValue_PARM_2 + 1),(_DAY + 1)
	mov	dpl,#0x40
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:138: return;
	ljmp	00135$
00102$:
;	lcd.c:141: if (DAY == 28 && MONTH == 2){
	mov	a,#0x1C
	cjne	a,_DAY,00199$
	clr	a
	cjne	a,(_DAY + 1),00199$
	sjmp	00200$
00199$:
	sjmp	00104$
00200$:
	mov	a,#0x02
	cjne	a,_MONTH,00201$
	clr	a
	cjne	a,(_MONTH + 1),00201$
	sjmp	00202$
00201$:
	sjmp	00104$
00202$:
;	lcd.c:142: DAY = 1;
	mov	_DAY,#0x01
	mov	(_DAY + 1),#0x00
;	lcd.c:143: sendValue(0x40, DAY);
	mov	_sendValue_PARM_2,#0x01
	mov	(_sendValue_PARM_2 + 1),#0x00
	mov	dpl,#0x40
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:144: MONTH++;
	inc	_MONTH
	clr	a
	cjne	a,_MONTH,00203$
	inc	(_MONTH + 1)
00203$:
;	lcd.c:145: sendValue(0x43, MONTH);
	mov	_sendValue_PARM_2,_MONTH
	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
	mov	dpl,#0x43
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:146: return;
	ljmp	00135$
00104$:
;	lcd.c:149: if (DAY == 30 && (MONTH == 4 || MONTH == 6 || MONTH == 9 || MONTH == 11)){
	mov	a,#0x1E
	cjne	a,_DAY,00204$
	clr	a
	cjne	a,(_DAY + 1),00204$
	sjmp	00205$
00204$:
	sjmp	00114$
00205$:
	mov	a,#0x04
	cjne	a,_MONTH,00206$
	clr	a
	cjne	a,(_MONTH + 1),00206$
	sjmp	00113$
00206$:
	mov	a,#0x06
	cjne	a,_MONTH,00207$
	clr	a
	cjne	a,(_MONTH + 1),00207$
	sjmp	00113$
00207$:
	mov	a,#0x09
	cjne	a,_MONTH,00208$
	clr	a
	cjne	a,(_MONTH + 1),00208$
	sjmp	00113$
00208$:
	mov	a,#0x0B
	cjne	a,_MONTH,00209$
	clr	a
	cjne	a,(_MONTH + 1),00209$
	sjmp	00210$
00209$:
	sjmp	00114$
00210$:
00113$:
;	lcd.c:150: DAY = 1;
	mov	_DAY,#0x01
	mov	(_DAY + 1),#0x00
;	lcd.c:151: sendValue(0x40, DAY);
	mov	_sendValue_PARM_2,#0x01
	mov	(_sendValue_PARM_2 + 1),#0x00
	mov	dpl,#0x40
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:152: MONTH++;
	inc	_MONTH
	clr	a
	cjne	a,_MONTH,00211$
	inc	(_MONTH + 1)
00211$:
;	lcd.c:153: sendValue(0x43, MONTH);
	mov	_sendValue_PARM_2,_MONTH
	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
	mov	dpl,#0x43
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:154: return;
	ljmp	00135$
00114$:
;	lcd.c:157: else if (DAY == 31){
	mov	a,#0x1F
	cjne	a,_DAY,00212$
	clr	a
	cjne	a,(_DAY + 1),00212$
	sjmp	00213$
00212$:
	ljmp	00135$
00213$:
;	lcd.c:158: DAY = 1;
	mov	_DAY,#0x01
	mov	(_DAY + 1),#0x00
;	lcd.c:159: sendValue(0x40, DAY);
	mov	_sendValue_PARM_2,#0x01
	mov	(_sendValue_PARM_2 + 1),#0x00
	mov	dpl,#0x40
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:161: if (MONTH < 12){
	clr	c
	mov	a,_MONTH
	subb	a,#0x0C
	mov	a,(_MONTH + 1)
	subb	a,#0x00
	jnc	00109$
;	lcd.c:162: MONTH++;
	inc	_MONTH
	clr	a
	cjne	a,_MONTH,00215$
	inc	(_MONTH + 1)
00215$:
;	lcd.c:163: sendValue(0x43, MONTH);
	mov	_sendValue_PARM_2,_MONTH
	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
	mov	dpl,#0x43
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:164: return;
	sjmp	00135$
00109$:
;	lcd.c:167: else if (MONTH == 12){
	mov	a,#0x0C
	cjne	a,_MONTH,00216$
	clr	a
	cjne	a,(_MONTH + 1),00216$
	sjmp	00217$
00216$:
	sjmp	00135$
00217$:
;	lcd.c:168: MONTH = 1;
	mov	_MONTH,#0x01
	mov	(_MONTH + 1),#0x00
;	lcd.c:169: sendValue(0x43, MONTH);
	mov	_sendValue_PARM_2,#0x01
	mov	(_sendValue_PARM_2 + 1),#0x00
	mov	dpl,#0x43
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
;	lcd.c:171: YEAR++;
	inc	_YEAR
	clr	a
	cjne	a,_YEAR,00218$
	inc	(_YEAR + 1)
00218$:
;	lcd.c:172: sendValue(0x46, YEAR);
	mov	_sendValue_PARM_2,_YEAR
	mov	(_sendValue_PARM_2 + 1),(_YEAR + 1)
	mov	dpl,#0x46
	mov	psw,#0x00
	lcall	_sendValue
	mov	psw,#0x08
00135$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'int0_isr'
;------------------------------------------------------------
;	lcd.c:185: void int0_isr (void) __interrupt (0) __using (1){
;	-----------------------------------------
;	 function int0_isr
;	-----------------------------------------
_int0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	lcd.c:187: setDdRamAddress(0x08);	//set DDRAM to end of line 1
	mov	dpl,#0x08
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	lcd.c:188: clock_setup(1, 0);		//call clock setup for line 1
	clr	a
	mov	_clock_setup_PARM_2,a
	mov	(_clock_setup_PARM_2 + 1),a
	mov	dptr,#0x0001
	mov	psw,#0x00
	lcall	_clock_setup
	mov	psw,#0x08
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'int1_isr'
;------------------------------------------------------------
;	lcd.c:192: void int1_isr (void) __interrupt (2) __using (1){
;	-----------------------------------------
;	 function int1_isr
;	-----------------------------------------
_int1_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	lcd.c:194: setDdRamAddress(0x48);	//set DDRAM to end of line 2
	mov	dpl,#0x48
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	lcd.c:195: clock_setup(0, 1);		//call clock setup for line 2
	mov	_clock_setup_PARM_2,#0x01
	mov	(_clock_setup_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	mov	psw,#0x00
	lcall	_clock_setup
	mov	psw,#0x08
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_setup'
;------------------------------------------------------------
;line2                     Allocated with name '_clock_setup_PARM_2'
;line1                     Allocated with name '_clock_setup_line1_1_38'
;row                       Allocated to registers r2 
;col                       Allocated to registers r7 
;keypad                    Allocated with name '_clock_setup_keypad_1_39'
;i                         Allocated to registers r5 
;gotkey                    Allocated with name '_clock_setup_gotkey_1_39'
;gotkey_pressed            Allocated with name '_clock_setup_gotkey_pressed_1_39'
;temp                      Allocated to registers r3 r6 
;current_addr1             Allocated with name '_clock_setup_current_addr1_1_39'
;current_addr2             Allocated with name '_clock_setup_current_addr2_1_39'
;sloc1                     Allocated with name '_clock_setup_sloc1_1_0'
;------------------------------------------------------------
;	lcd.c:200: void clock_setup(unsigned int line1, unsigned int line2){
;	-----------------------------------------
;	 function clock_setup
;	-----------------------------------------
_clock_setup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_clock_setup_line1_1_38,dpl
	mov	(_clock_setup_line1_1_38 + 1),dph
;	lcd.c:207: unsigned char keypad[4][3] = {	// This array contains the ASCII of the keypad keys
	mov	_clock_setup_keypad_1_39,#0x33
	mov	(_clock_setup_keypad_1_39 + 0x0001),#0x32
	mov	(_clock_setup_keypad_1_39 + 0x0002),#0x31
	mov	(_clock_setup_keypad_1_39 + 0x0003),#0x36
	mov	(_clock_setup_keypad_1_39 + 0x0004),#0x35
	mov	(_clock_setup_keypad_1_39 + 0x0005),#0x34
	mov	(_clock_setup_keypad_1_39 + 0x0006),#0x39
	mov	(_clock_setup_keypad_1_39 + 0x0007),#0x38
	mov	(_clock_setup_keypad_1_39 + 0x0008),#0x37
	mov	(_clock_setup_keypad_1_39 + 0x0009),#0x23
	mov	(_clock_setup_keypad_1_39 + 0x000a),#0x30
	mov	(_clock_setup_keypad_1_39 + 0x000b),#0x2A
;	lcd.c:217: unsigned char gotkey_pressed = 0;
	mov	_clock_setup_gotkey_pressed_1_39,#0x00
;	lcd.c:222: current_addr1 = 0x08;	//set initial current cursor address to last block of line 1
	mov	_clock_setup_current_addr1_1_39,#0x08
;	lcd.c:223: current_addr2 = 0x48;	//set initial current cursor address to last block of line 2
	mov	_clock_setup_current_addr2_1_39,#0x48
;	lcd.c:225: while(!( line1? SW0 : SW1 )){
00216$:
	mov	a,_clock_setup_line1_1_38
	orl	a,(_clock_setup_line1_1_38 + 1)
	jz	00228$
	mov	c,_P3_2
	mov	_clock_setup_sloc0_1_0,c
	sjmp	00229$
00228$:
	mov	c,_P3_3
	mov	_clock_setup_sloc0_1_0,c
00229$:
	jnb	_clock_setup_sloc0_1_0,00410$
	ljmp	00218$
00410$:
;	lcd.c:226: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r2,#0xF7
;	lcd.c:228: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r5,#0x00
00224$:
;	lcd.c:230: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	lcd.c:231: P0 = P0 & row; // clear one row at a time
	mov	a,r2
	anl	_P0,a
;	lcd.c:232: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	r7,a
;	lcd.c:233: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	cjne	r7,#0x70,00411$
	ljmp	00214$
00411$:
;	lcd.c:234: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,r7
	cpl	a
	mov	r6,a
	mov	a,#0x70
	anl	a,r6
;	lcd.c:235: col = col >> 5;       // The column variable now contain the number of the selected column
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
;	lcd.c:236: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
	mov	a,r5
	mov	b,#0x03
	mul	ab
	add	a,#_clock_setup_keypad_1_39
	mov	r6,a
	add	a,r7
	mov	r1,a
	mov	_clock_setup_gotkey_1_39,@r1
;	lcd.c:238: if (line1){ 	//Only modify line 1
	mov	a,_clock_setup_line1_1_38
	orl	a,(_clock_setup_line1_1_38 + 1)
	jnz	00412$
	ljmp	00146$
00412$:
;	lcd.c:240: if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
	mov	a,_clock_setup_gotkey_pressed_1_39
	jnz	00413$
	ljmp	00134$
00413$:
	mov	a,#0x2A
	cjne	a,_clock_setup_gotkey_1_39,00414$
	ljmp	00134$
00414$:
	mov	a,#0x23
	cjne	a,_clock_setup_gotkey_1_39,00415$
	ljmp	00134$
00415$:
;	lcd.c:242: if (current_addr1 == 0x08) break;
	mov	a,#0x08
	cjne	a,_clock_setup_current_addr1_1_39,00416$
	sjmp	00216$
00416$:
;	lcd.c:245: if (current_addr1 == 0x06){	//if current address is first digit of second 
	mov	a,#0x06
	cjne	a,_clock_setup_current_addr1_1_39,00107$
;	lcd.c:246: temp = gotkey - '0';	//convert char to int
	mov	r3,_clock_setup_gotkey_1_39
	mov	r6,#0x00
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:247: temp = (10 * temp) + (SEC % 10);	//create new second value
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_SEC
	mov	dph,(_SEC + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	r3,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	r6,a
;	lcd.c:249: if (temp > 59) 	break;	//if new second value is > 59, don't update
	clr	c
	mov	a,#0x3B
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00419$
	ljmp	00216$
00419$:
;	lcd.c:251: SEC = temp; 
	mov	_SEC,r3
	mov	(_SEC + 1),r6
;	lcd.c:252: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00107$:
;	lcd.c:256: if (current_addr1 == 0x07){
	mov	a,#0x07
	cjne	a,_clock_setup_current_addr1_1_39,00112$
;	lcd.c:257: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:258: temp = ((SEC / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_SEC
	mov	dph,(_SEC + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,b
	mov	r6,a
;	lcd.c:260: if (temp > 59) 	break;
	clr	c
	mov	a,#0x3B
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00422$
	ljmp	00216$
00422$:
;	lcd.c:262: SEC = temp; 
	mov	_SEC,r3
	mov	(_SEC + 1),r6
;	lcd.c:263: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00112$:
;	lcd.c:268: if (current_addr1 == 0x03){
	mov	a,#0x03
	cjne	a,_clock_setup_current_addr1_1_39,00117$
;	lcd.c:269: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:270: temp = (10 * temp) + (MIN % 10);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_MIN
	mov	dph,(_MIN + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	r3,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	r6,a
;	lcd.c:272: if (temp > 59) 	break;
	clr	c
	mov	a,#0x3B
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00425$
	ljmp	00216$
00425$:
;	lcd.c:274: MIN = temp; 
	mov	_MIN,r3
	mov	(_MIN + 1),r6
;	lcd.c:275: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00117$:
;	lcd.c:279: if (current_addr1 == 0x04){
	mov	a,#0x04
	cjne	a,_clock_setup_current_addr1_1_39,00122$
;	lcd.c:280: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:281: temp = ((MIN / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_MIN
	mov	dph,(_MIN + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,b
	mov	r6,a
;	lcd.c:283: if (temp > 59) 	break;
	clr	c
	mov	a,#0x3B
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00428$
	ljmp	00216$
00428$:
;	lcd.c:285: MIN = temp; 
	mov	_MIN,r3
	mov	(_MIN + 1),r6
;	lcd.c:286: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00122$:
;	lcd.c:290: if (current_addr1 == 0x00){
	mov	a,_clock_setup_current_addr1_1_39
;	lcd.c:291: temp = gotkey - '0';
	jnz	00127$
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,a
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:292: temp = (10 * temp) + (HOUR % 10);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_HOUR
	mov	dph,(_HOUR + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	r3,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	r6,a
;	lcd.c:294: if (temp > 23) 	break;
	clr	c
	mov	a,#0x17
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00430$
	ljmp	00216$
00430$:
;	lcd.c:296: HOUR = temp; 
	mov	_HOUR,r3
	mov	(_HOUR + 1),r6
;	lcd.c:297: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00127$:
;	lcd.c:301: if (current_addr1 == 0x01){
	mov	a,#0x01
	cjne	a,_clock_setup_current_addr1_1_39,00132$
;	lcd.c:302: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:303: temp = ((HOUR / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_HOUR
	mov	dph,(_HOUR + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,b
	mov	r6,a
;	lcd.c:305: if (temp > 23) 	break;
	clr	c
	mov	a,#0x17
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00433$
	ljmp	00216$
00433$:
;	lcd.c:307: HOUR = temp; 
	mov	_HOUR,r3
	mov	(_HOUR + 1),r6
;	lcd.c:308: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00132$:
;	lcd.c:313: current_addr1++;	//move current address to next block
	inc	_clock_setup_current_addr1_1_39
;	lcd.c:314: break;
	ljmp	00216$
00134$:
;	lcd.c:318: if (gotkey == '*'){		//move cursor left
	mov	a,#0x2A
	cjne	a,_clock_setup_gotkey_1_39,00140$
;	lcd.c:320: gotkey_pressed = 1;
	mov	_clock_setup_gotkey_pressed_1_39,#0x01
;	lcd.c:323: if (current_addr1 == 0x00){
	mov	a,_clock_setup_current_addr1_1_39
	jnz	00138$
;	lcd.c:324: setDdRamAddress(0x08);
	mov	dpl,#0x08
	lcall	_setDdRamAddress
;	lcd.c:325: current_addr1 = 0x08;
	mov	_clock_setup_current_addr1_1_39,#0x08
;	lcd.c:326: break;
	ljmp	00216$
00138$:
;	lcd.c:328: cursorOrDisplayShift(0, 0);
	clr	_cursorOrDisplayShift_PARM_1
	clr	_cursorOrDisplayShift_PARM_2
	lcall	_cursorOrDisplayShift
;	lcd.c:329: current_addr1--;
	dec	_clock_setup_current_addr1_1_39
00140$:
;	lcd.c:333: if (gotkey == '#'){		//move cursor right
	mov	a,#0x23
	cjne	a,_clock_setup_gotkey_1_39,00437$
	sjmp	00438$
00437$:
	ljmp	00216$
00438$:
;	lcd.c:335: gotkey_pressed = 1;
	mov	_clock_setup_gotkey_pressed_1_39,#0x01
;	lcd.c:338: if (current_addr1 == 0x07){
	mov	a,#0x07
	cjne	a,_clock_setup_current_addr1_1_39,00142$
;	lcd.c:339: setDdRamAddress(0x00);
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	lcd.c:340: current_addr1 = 0x00;
	mov	_clock_setup_current_addr1_1_39,#0x00
;	lcd.c:341: break;
	ljmp	00216$
00142$:
;	lcd.c:343: cursorOrDisplayShift(0, 1);
	clr	_cursorOrDisplayShift_PARM_1
	setb	_cursorOrDisplayShift_PARM_2
	lcall	_cursorOrDisplayShift
;	lcd.c:344: current_addr1++;
	inc	_clock_setup_current_addr1_1_39
;	lcd.c:347: break;
	ljmp	00216$
00146$:
;	lcd.c:350: if (line2){		//Only modify line 2
	mov	a,_clock_setup_PARM_2
	orl	a,(_clock_setup_PARM_2 + 1)
	jnz	00441$
	ljmp	00214$
00441$:
;	lcd.c:352: if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
	mov	a,_clock_setup_gotkey_pressed_1_39
	jnz	00442$
	ljmp	00200$
00442$:
	mov	a,#0x2A
	cjne	a,_clock_setup_gotkey_1_39,00443$
	ljmp	00200$
00443$:
	mov	a,#0x23
	cjne	a,_clock_setup_gotkey_1_39,00444$
	ljmp	00200$
00444$:
;	lcd.c:354: if (current_addr2 == 0x48) break;
	mov	a,#0x48
	cjne	a,_clock_setup_current_addr2_1_39,00445$
	ljmp	00216$
00445$:
;	lcd.c:358: if (current_addr2 == 0x46){
	mov	a,#0x46
	cjne	a,_clock_setup_current_addr2_1_39,00150$
;	lcd.c:359: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:360: YEAR = (10 * temp) + (YEAR % 10);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_YEAR
	mov	dph,(_YEAR + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	_YEAR,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	(_YEAR + 1),a
;	lcd.c:361: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00150$:
;	lcd.c:364: if (current_addr2 == 0x47){
	mov	a,#0x47
	cjne	a,_clock_setup_current_addr2_1_39,00152$
;	lcd.c:365: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:366: YEAR = ((YEAR / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_YEAR
	mov	dph,(_YEAR + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	_YEAR,a
	mov	a,r6
	addc	a,b
	mov	(_YEAR + 1),a
;	lcd.c:367: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00152$:
;	lcd.c:371: if (current_addr2 == 0x43){
	mov	a,#0x43
	cjne	a,_clock_setup_current_addr2_1_39,00158$
;	lcd.c:372: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:373: temp = (10 * temp) + (MONTH % 10);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_MONTH
	mov	dph,(_MONTH + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	r3,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	r6,a
;	lcd.c:375: if (temp < 1 || temp > 12) 				break;
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00452$
	ljmp	00216$
00452$:
	clr	c
	mov	a,#0x0C
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00453$
	ljmp	00216$
00453$:
;	lcd.c:377: MONTH = temp; 
	mov	_MONTH,r3
	mov	(_MONTH + 1),r6
;	lcd.c:378: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00158$:
;	lcd.c:382: if (current_addr2 == 0x44){
	mov	a,#0x44
	cjne	a,_clock_setup_current_addr2_1_39,00164$
;	lcd.c:383: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:384: temp = ((MONTH / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_MONTH
	mov	dph,(_MONTH + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,b
	mov	r6,a
;	lcd.c:386: if (temp < 1 || temp > 12) 				break;
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00456$
	ljmp	00216$
00456$:
	clr	c
	mov	a,#0x0C
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00457$
	ljmp	00216$
00457$:
;	lcd.c:388: MONTH = temp; 
	mov	_MONTH,r3
	mov	(_MONTH + 1),r6
;	lcd.c:389: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00164$:
;	lcd.c:393: if (current_addr2 == 0x40){
	mov	a,#0x40
	cjne	a,_clock_setup_current_addr2_1_39,00458$
	sjmp	00459$
00458$:
	ljmp	00181$
00459$:
;	lcd.c:394: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:395: temp = (10 * temp) + (DAY % 10);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_clock_setup_sloc1_1_0,dpl
	mov	(_clock_setup_sloc1_1_0 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_DAY
	mov	dph,(_DAY + 1)
	lcall	__moduint
	mov	r4,dpl
	mov	r7,dph
	mov	a,r4
	add	a,_clock_setup_sloc1_1_0
	mov	r3,a
	mov	a,r7
	addc	a,(_clock_setup_sloc1_1_0 + 1)
	mov	r6,a
;	lcd.c:397: if      (temp < 1 || temp > 31) 		break;
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00460$
	ljmp	00216$
00460$:
	clr	c
	mov	a,#0x1F
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00461$
	ljmp	00216$
00461$:
;	lcd.c:398: else if (MONTH == 2 && temp > 28) 		break;
	mov	a,#0x02
	cjne	a,_MONTH,00462$
	clr	a
	cjne	a,(_MONTH + 1),00462$
	sjmp	00463$
00462$:
	sjmp	00173$
00463$:
	clr	c
	mov	a,#0x1C
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00464$
	ljmp	00216$
00464$:
00173$:
;	lcd.c:399: else if ((MONTH == 4 || 
	mov	a,#0x04
	cjne	a,_MONTH,00465$
	clr	a
	cjne	a,(_MONTH + 1),00465$
	sjmp	00171$
00465$:
;	lcd.c:400: MONTH == 6 || 
	mov	a,#0x06
	cjne	a,_MONTH,00466$
	clr	a
	cjne	a,(_MONTH + 1),00466$
	sjmp	00171$
00466$:
;	lcd.c:401: MONTH == 9 || 
	mov	a,#0x09
	cjne	a,_MONTH,00467$
	clr	a
	cjne	a,(_MONTH + 1),00467$
	sjmp	00171$
00467$:
;	lcd.c:402: MONTH == 11) && temp > 30)	break;
	mov	a,#0x0B
	cjne	a,_MONTH,00468$
	clr	a
	cjne	a,(_MONTH + 1),00468$
	sjmp	00469$
00468$:
	sjmp	00166$
00469$:
00171$:
	clr	c
	mov	a,#0x1E
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00470$
	ljmp	00216$
00470$:
00166$:
;	lcd.c:404: DAY = temp; 
	mov	_DAY,r3
	mov	(_DAY + 1),r6
;	lcd.c:405: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00181$:
;	lcd.c:409: if (current_addr2 == 0x41){
	mov	a,#0x41
	cjne	a,_clock_setup_current_addr2_1_39,00471$
	sjmp	00472$
00471$:
	ljmp	00198$
00472$:
;	lcd.c:410: temp = gotkey - '0';
	mov	r4,_clock_setup_gotkey_1_39
	mov	r7,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r6,a
;	lcd.c:411: temp = ((DAY / 10) * 10) + temp;
	mov	__divuint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,_DAY
	mov	dph,(_DAY + 1)
	push	ar6
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,b
	mov	r6,a
;	lcd.c:413: if      (temp < 1 || temp > 31) 		break;
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00473$
	ljmp	00216$
00473$:
	clr	c
	mov	a,#0x1F
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00474$
	ljmp	00216$
00474$:
;	lcd.c:414: else if (MONTH == 2 && temp > 28) 		break;
	mov	a,#0x02
	cjne	a,_MONTH,00475$
	clr	a
	cjne	a,(_MONTH + 1),00475$
	sjmp	00476$
00475$:
	sjmp	00190$
00476$:
	clr	c
	mov	a,#0x1C
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00477$
	ljmp	00216$
00477$:
00190$:
;	lcd.c:415: else if ((MONTH == 4 || 
	mov	a,#0x04
	cjne	a,_MONTH,00478$
	clr	a
	cjne	a,(_MONTH + 1),00478$
	sjmp	00188$
00478$:
;	lcd.c:416: MONTH == 6 || 
	mov	a,#0x06
	cjne	a,_MONTH,00479$
	clr	a
	cjne	a,(_MONTH + 1),00479$
	sjmp	00188$
00479$:
;	lcd.c:417: MONTH == 9 || 
	mov	a,#0x09
	cjne	a,_MONTH,00480$
	clr	a
	cjne	a,(_MONTH + 1),00480$
	sjmp	00188$
00480$:
;	lcd.c:418: MONTH == 11) && temp > 30)	break;
	mov	a,#0x0B
	cjne	a,_MONTH,00481$
	clr	a
	cjne	a,(_MONTH + 1),00481$
	sjmp	00482$
00481$:
	sjmp	00183$
00482$:
00188$:
	clr	c
	mov	a,#0x1E
	subb	a,r3
	clr	a
	subb	a,r6
	jnc	00483$
	ljmp	00216$
00483$:
00183$:
;	lcd.c:420: DAY = temp; 
	mov	_DAY,r3
	mov	(_DAY + 1),r6
;	lcd.c:421: sendChar(gotkey);
	mov	dpl,_clock_setup_gotkey_1_39
	lcall	_sendChar
00198$:
;	lcd.c:425: current_addr2++;
	inc	_clock_setup_current_addr2_1_39
;	lcd.c:426: break;
	ljmp	00216$
00200$:
;	lcd.c:430: if (gotkey == '*'){		// Move cursor to the left
	mov	a,#0x2A
	cjne	a,_clock_setup_gotkey_1_39,00206$
;	lcd.c:432: gotkey_pressed = 1;
	mov	_clock_setup_gotkey_pressed_1_39,#0x01
;	lcd.c:434: if (current_addr2 == 0x40){
	mov	a,#0x40
	cjne	a,_clock_setup_current_addr2_1_39,00204$
;	lcd.c:435: setDdRamAddress(0x48);
	mov	dpl,#0x48
	lcall	_setDdRamAddress
;	lcd.c:436: current_addr2 = 0x48;
	mov	_clock_setup_current_addr2_1_39,#0x48
;	lcd.c:437: break;
	ljmp	00216$
00204$:
;	lcd.c:439: cursorOrDisplayShift(0, 0);
	clr	_cursorOrDisplayShift_PARM_1
	clr	_cursorOrDisplayShift_PARM_2
	lcall	_cursorOrDisplayShift
;	lcd.c:440: current_addr2--;
	dec	_clock_setup_current_addr2_1_39
00206$:
;	lcd.c:444: if (gotkey == '#'){		// Move cursor to the right
	mov	a,#0x23
	cjne	a,_clock_setup_gotkey_1_39,00488$
	sjmp	00489$
00488$:
	ljmp	00216$
00489$:
;	lcd.c:446: gotkey_pressed = 1;
	mov	_clock_setup_gotkey_pressed_1_39,#0x01
;	lcd.c:448: if (current_addr2 == 0x47){
	mov	a,#0x47
	cjne	a,_clock_setup_current_addr2_1_39,00208$
;	lcd.c:449: setDdRamAddress(0x40);
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	lcd.c:450: current_addr2 = 0x40;
	mov	_clock_setup_current_addr2_1_39,#0x40
;	lcd.c:451: break;
	ljmp	00216$
00208$:
;	lcd.c:453: cursorOrDisplayShift(0, 1);
	clr	_cursorOrDisplayShift_PARM_1
	setb	_cursorOrDisplayShift_PARM_2
	lcall	_cursorOrDisplayShift
;	lcd.c:454: current_addr2++;
	inc	_clock_setup_current_addr2_1_39
;	lcd.c:457: break;
	ljmp	00216$
00214$:
;	lcd.c:462: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r2
	clr	c
	rrc	a
	mov	r2,a
;	lcd.c:463: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar2,#0xF0
;	lcd.c:228: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	r5
	cjne	r5,#0x04,00492$
00492$:
	jnc	00493$
	ljmp	00224$
00493$:
;	lcd.c:467: gotkey = 0;
	ljmp	00216$
00218$:
;	lcd.c:472: if      (line1) setDdRamAddress(0x08);
	mov	a,_clock_setup_line1_1_38
	orl	a,(_clock_setup_line1_1_38 + 1)
	jz	00222$
	mov	dpl,#0x08
	ljmp	_setDdRamAddress
00222$:
;	lcd.c:473: else if (line2) setDdRamAddress(0x48);
	mov	a,_clock_setup_PARM_2
	orl	a,(_clock_setup_PARM_2 + 1)
	jz	00226$
	mov	dpl,#0x48
	ljmp	_setDdRamAddress
00226$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendValue'
;------------------------------------------------------------
;value                     Allocated with name '_sendValue_PARM_2'
;address                   Allocated to registers 
;------------------------------------------------------------
;	lcd.c:479: void sendValue(char address, unsigned int value){
;	-----------------------------------------
;	 function sendValue
;	-----------------------------------------
_sendValue:
;	lcd.c:480: setDdRamAddress(address);
	lcall	_setDdRamAddress
;	lcd.c:481: sendChar((value / 10) + '0');
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_sendValue_PARM_2
	mov	dph,(_sendValue_PARM_2 + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_sendChar
;	lcd.c:482: sendChar((value % 10) + '0');
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_sendValue_PARM_2
	mov	dph,(_sendValue_PARM_2 + 1)
	lcall	__moduint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	ljmp	_sendChar
;------------------------------------------------------------
;Allocation info for local variables in function 'returnHome'
;------------------------------------------------------------
;	lcd.c:487: void returnHome(void) {
;	-----------------------------------------
;	 function returnHome
;	-----------------------------------------
_returnHome:
;	lcd.c:488: RS = 0;
	clr	_P2_3
;	lcd.c:489: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	mov	_P1,#0x02
;	lcd.c:490: E = 1;
	setb	_P2_2
;	lcd.c:491: E = 0;
	clr	_P2_2
;	lcd.c:492: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	lcd.c:495: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	lcd.c:496: RS = 0;
	clr	_P2_3
;	lcd.c:497: P1 = 0x06;  
	mov	_P1,#0x06
;	lcd.c:498: E = 1;
	setb	_P2_2
;	lcd.c:499: E = 0;
	clr	_P2_2
;	lcd.c:500: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	lcd.c:503: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	lcd.c:504: P1_7 = 0;
	clr	_P1_7
;	lcd.c:505: P1_6 = 0;
	clr	_P1_6
;	lcd.c:506: P1_5 = 0;
	clr	_P1_5
;	lcd.c:507: P1_4 = 0;
	clr	_P1_4
;	lcd.c:508: P1_3 = 1;
	setb	_P1_3
;	lcd.c:509: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	lcd.c:510: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	lcd.c:511: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	lcd.c:512: E = 1;
	setb	_P2_2
;	lcd.c:513: E = 0;
	clr	_P2_2
;	lcd.c:514: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'cursorOrDisplayShift'
;------------------------------------------------------------
;	lcd.c:517: void cursorOrDisplayShift(__bit sc, __bit rl) {
;	-----------------------------------------
;	 function cursorOrDisplayShift
;	-----------------------------------------
_cursorOrDisplayShift:
;	lcd.c:518: RS = 0;
	clr	_P2_3
;	lcd.c:519: P1_7 = 0;
	clr	_P1_7
;	lcd.c:520: P1_6 = 0;
	clr	_P1_6
;	lcd.c:521: P1_5 = 0;
	clr	_P1_5
;	lcd.c:522: P1_4 = 1;
	setb	_P1_4
;	lcd.c:523: P1_3 = sc;
	mov	c,_cursorOrDisplayShift_PARM_1
	mov	_P1_3,c
;	lcd.c:524: P1_2 = rl;
	mov	c,_cursorOrDisplayShift_PARM_2
	mov	_P1_2,c
;	lcd.c:525: P1_1 = 0;
	clr	_P1_1
;	lcd.c:526: P1_0 = 0;
	clr	_P1_0
;	lcd.c:527: E = 1;
	setb	_P2_2
;	lcd.c:528: E = 0;
	clr	_P2_2
;	lcd.c:529: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	lcd.c:532: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	lcd.c:533: RS = 0;
	clr	_P2_3
;	lcd.c:534: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	lcd.c:535: E = 1;
	setb	_P2_2
;	lcd.c:536: E = 0;
	clr	_P2_2
;	lcd.c:537: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'clearDisplay'
;------------------------------------------------------------
;	lcd.c:540: void clearDisplay(void) {
;	-----------------------------------------
;	 function clearDisplay
;	-----------------------------------------
_clearDisplay:
;	lcd.c:541: RS = 0;
	clr	_P2_3
;	lcd.c:542: P1 = 0x01; // command to clear LCD and return the cursor to the home position
	mov	_P1,#0x01
;	lcd.c:543: E = 1;
	setb	_P2_2
;	lcd.c:544: E = 0;
	clr	_P2_2
;	lcd.c:545: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:548: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	lcd.c:549: RS = 0;
	clr	_P2_3
;	lcd.c:550: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	lcd.c:551: E = 1;
	setb	_P2_2
;	lcd.c:552: E = 0;
	clr	_P2_2
;	lcd.c:553: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:558: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	lcd.c:559: RS = 1;
	setb	_P2_3
;	lcd.c:560: P1 = c;
	mov	_P1,r7
;	lcd.c:561: E = 1;
	setb	_P2_2
;	lcd.c:562: E = 0;
	clr	_P2_2
;	lcd.c:563: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	lcd.c:566: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:568: while (c = *str++) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r4
	mov	r3,a
	jz	00104$
;	lcd.c:569: sendChar(c);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:573: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	lcd.c:575: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'big_delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:578: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	lcd.c:580: for (c = 0; c < 255; c++);
	mov	r7,#0xFF
00104$:
	mov	ar6,r7
	dec	r6
	mov	a,r6
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_delay'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:584: void timer_delay(void){
;	-----------------------------------------
;	 function timer_delay
;	-----------------------------------------
_timer_delay:
;	lcd.c:587: TMOD = 0x01;
	mov	_TMOD,#0x01
;	lcd.c:588: while (a != 0){
	mov	r7,#0x14
00104$:
	mov	a,r7
	jz	00107$
;	lcd.c:589: TL0 = 0xAF;
	mov	_TL0,#0xAF
;	lcd.c:590: TH0 = 0x3C;
	mov	_TH0,#0x3C
;	lcd.c:591: TR0 = 1;
	setb	_TR0
;	lcd.c:592: while (!TF0) ;
00101$:
	jnb	_TF0,00101$
;	lcd.c:593: TR0 = 0;
	clr	_TR0
;	lcd.c:594: TF0 = 0;
	clr	_TF0
;	lcd.c:595: a = a-1;
	dec	r7
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	lcd.c:602: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	lcd.c:606: __endasm;
	mov sp, #0x5F
;	lcd.c:607: main();
	ljmp	_main
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "00:00:00"
	.db 0x00
___str_1:
	.ascii "01-01-00"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
