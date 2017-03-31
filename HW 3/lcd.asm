;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Sun May 01 19:34:48 2016
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Main
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
	.globl _storeDigits_PARM_2
	.globl _sendSum_PARM_2
	.globl _sendSum
	.globl _storeDigits
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
	.globl _getDigit
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Main_keypad_1_30:
	.ds 12
_Main_gotkey_1_30:
	.ds 1
_Main_firstOp_1_30:
	.ds 2
_Main_secondOp_1_30:
	.ds 2
_Main_intSum_1_30:
	.ds 2
_Main_firstOp_done_1_30:
	.ds 1
_Main_sloc0_1_0:
	.ds 2
_sendSum_PARM_2:
	.ds 3
_storeDigits_arr_1_43:
	.ds 20
_storeDigits_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Main'
;------------------------------------------------------------
;row                       Allocated to registers r2 
;col                       Allocated to registers r6 
;keypad                    Allocated with name '_Main_keypad_1_30'
;i                         Allocated to registers r4 
;gotkey                    Allocated with name '_Main_gotkey_1_30'
;firstOp                   Allocated with name '_Main_firstOp_1_30'
;secondOp                  Allocated with name '_Main_secondOp_1_30'
;intSum                    Allocated with name '_Main_intSum_1_30'
;length                    Allocated to registers 
;str_length                Allocated to registers r5 
;firstOp_done              Allocated with name '_Main_firstOp_done_1_30'
;arr                       Allocated to registers 
;sloc0                     Allocated with name '_Main_sloc0_1_0'
;------------------------------------------------------------
;	lcd.c:43: void Main(void) {
;	-----------------------------------------
;	 function Main
;	-----------------------------------------
_Main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lcd.c:49: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
	mov	_Main_keypad_1_30,#0x33
	mov	(_Main_keypad_1_30 + 0x0001),#0x32
	mov	(_Main_keypad_1_30 + 0x0002),#0x31
	mov	(_Main_keypad_1_30 + 0x0003),#0x36
	mov	(_Main_keypad_1_30 + 0x0004),#0x35
	mov	(_Main_keypad_1_30 + 0x0005),#0x34
	mov	(_Main_keypad_1_30 + 0x0006),#0x39
	mov	(_Main_keypad_1_30 + 0x0007),#0x38
	mov	(_Main_keypad_1_30 + 0x0008),#0x37
	mov	(_Main_keypad_1_30 + 0x0009),#0x3D
	mov	(_Main_keypad_1_30 + 0x000a),#0x30
	mov	(_Main_keypad_1_30 + 0x000b),#0x2B
;	lcd.c:57: unsigned char gotkey        = 0;
;	lcd.c:58: unsigned int  firstOp       = 0;		// First operand of the calculator
	clr	a
	mov	_Main_gotkey_1_30,a
	mov	_Main_firstOp_1_30,a
	mov	(_Main_firstOp_1_30 + 1),a
;	lcd.c:59: unsigned int  secondOp      = 0;		// Second operand of the calculator
	mov	_Main_secondOp_1_30,a
	mov	(_Main_secondOp_1_30 + 1),a
;	lcd.c:63: unsigned char firstOp_done 	= 0;
;	1-genFromRTrack replaced	mov	_Main_firstOp_done_1_30,#0x00
	mov	_Main_firstOp_done_1_30,a
;	lcd.c:67: functionSet();
	lcall	_functionSet
;	lcd.c:68: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
;	lcd.c:69: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	lcall	_displayOnOffControl
;	lcd.c:73: while(1){
00120$:
;	lcd.c:74: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r2,#0xF7
;	lcd.c:76: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r4,#0x00
	mov	r3,#0x00
00122$:
;	lcd.c:78: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	lcd.c:79: P0 = P0 & row; // clear one row at a time
	mov	a,r2
	anl	_P0,a
;	lcd.c:80: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	r6,a
;	lcd.c:81: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	cjne	r6,#0x70,00156$
	ljmp	00114$
00156$:
;	lcd.c:82: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,r6
	cpl	a
	mov	r5,a
	mov	a,#0x70
	anl	a,r5
;	lcd.c:83: col = col >> 5;       // The column variable now contain the number of the selected column
	swap	a
	rr	a
	anl	a,#0x07
	mov	r6,a
;	lcd.c:84: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
	mov	a,r4
	mov	b,#0x03
	mul	ab
	add	a,#_Main_keypad_1_30
	mov	r5,a
	add	a,r6
	mov	r1,a
	mov	_Main_gotkey_1_30,@r1
;	lcd.c:86: if (gotkey == '+' || gotkey == '*'){ 		
	mov	a,#0x2B
	cjne	a,_Main_gotkey_1_30,00157$
	mov	a,#0x01
	sjmp	00158$
00157$:
	clr	a
00158$:
	mov	r6,a
	jnz	00101$
	mov	a,#0x2A
	cjne	a,_Main_gotkey_1_30,00102$
00101$:
;	lcd.c:87: firstOp_done = 1;
	mov	_Main_firstOp_done_1_30,#0x01
;	lcd.c:88: sendChar('+');
	mov	dpl,#0x2B
	push	ar6
	lcall	_sendChar
	pop	ar6
00102$:
;	lcd.c:91: if (gotkey == '=' || gotkey == '#'){
	mov	a,#0x3D
	cjne	a,_Main_gotkey_1_30,00162$
	sjmp	00104$
00162$:
	mov	a,#0x23
	cjne	a,_Main_gotkey_1_30,00105$
00104$:
;	lcd.c:92: sendChar('=');
	mov	dpl,#0x3D
	lcall	_sendChar
;	lcd.c:93: intSum = firstOp + secondOp;
	mov	a,_Main_secondOp_1_30
	add	a,_Main_firstOp_1_30
	mov	_Main_intSum_1_30,a
	mov	a,(_Main_secondOp_1_30 + 1)
	addc	a,(_Main_firstOp_1_30 + 1)
	mov	(_Main_intSum_1_30 + 1),a
;	lcd.c:94: str_length = getDigit(intSum);
	mov	dpl,_Main_intSum_1_30
	mov	dph,(_Main_intSum_1_30 + 1)
	lcall	_getDigit
	mov	r5,dpl
;	lcd.c:95: arr = storeDigits(intSum, str_length);
	mov	_storeDigits_PARM_2,r5
	mov	dpl,_Main_intSum_1_30
	mov	dph,(_Main_intSum_1_30 + 1)
	push	ar5
	lcall	_storeDigits
	mov	_sendSum_PARM_2,dpl
	mov	(_sendSum_PARM_2 + 1),dph
	mov	(_sendSum_PARM_2 + 2),b
	pop	ar5
;	lcd.c:96: sendSum(str_length, arr);
	mov	dpl,r5
	lcall	_sendSum
;	lcd.c:97: break;
	ljmp	00115$
00105$:
;	lcd.c:100: if (!firstOp_done){ 		
	mov	a,_Main_firstOp_done_1_30
	jnz	00108$
;	lcd.c:101: firstOp = firstOp * 10 + (gotkey - '0');
	push	ar6
	mov	__mulint_PARM_2,_Main_firstOp_1_30
	mov	(__mulint_PARM_2 + 1),(_Main_firstOp_1_30 + 1)
	mov	dptr,#0x000A
	push	ar6
	lcall	__mulint
	mov	_Main_sloc0_1_0,dpl
	mov	(_Main_sloc0_1_0 + 1),dph
	pop	ar6
	mov	r6,_Main_gotkey_1_30
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r6
	add	a,_Main_sloc0_1_0
	mov	_Main_firstOp_1_30,a
	mov	a,r7
	addc	a,(_Main_sloc0_1_0 + 1)
	mov	(_Main_firstOp_1_30 + 1),a
;	lcd.c:102: sendChar(gotkey);
	mov	dpl,_Main_gotkey_1_30
	push	ar6
	lcall	_sendChar
	pop	ar6
;	lcd.c:117: if (gotkey == '=' || gotkey == '#'){break;}  // Since a key was detected -> exit the while loop
	pop	ar6
;	lcd.c:102: sendChar(gotkey);
00108$:
;	lcd.c:105: if (firstOp_done && (gotkey != '+' && gotkey != '*')){ 		
	mov	a,_Main_firstOp_done_1_30
	jz	00115$
	mov	a,r6
	jnz	00115$
	mov	a,#0x2A
	cjne	a,_Main_gotkey_1_30,00168$
	sjmp	00115$
00168$:
;	lcd.c:106: secondOp = secondOp * 10 + (gotkey - '0');
	mov	__mulint_PARM_2,_Main_secondOp_1_30
	mov	(__mulint_PARM_2 + 1),(_Main_secondOp_1_30 + 1)
	mov	dptr,#0x000A
	lcall	__mulint
	mov	_Main_sloc0_1_0,dpl
	mov	(_Main_sloc0_1_0 + 1),dph
	mov	r5,_Main_gotkey_1_30
	mov	r7,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r5
	add	a,_Main_sloc0_1_0
	mov	_Main_secondOp_1_30,a
	mov	a,r7
	addc	a,(_Main_sloc0_1_0 + 1)
	mov	(_Main_secondOp_1_30 + 1),a
;	lcd.c:107: sendChar(gotkey);
	mov	dpl,_Main_gotkey_1_30
	lcall	_sendChar
;	lcd.c:110: break;  // Since a key was detected -> Exit the for loop
	sjmp	00115$
00114$:
;	lcd.c:112: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r2
	clr	c
	rrc	a
	mov	r2,a
;	lcd.c:113: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar2,#0xF0
;	lcd.c:76: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	r3
	mov	ar4,r3
	cjne	r3,#0x04,00169$
00169$:
	jnc	00170$
	ljmp	00122$
00170$:
00115$:
;	lcd.c:117: if (gotkey == '=' || gotkey == '#'){break;}  // Since a key was detected -> exit the while loop
	mov	a,#0x3D
	cjne	a,_Main_gotkey_1_30,00171$
	ret
00171$:
	mov	a,#0x23
	cjne	a,_Main_gotkey_1_30,00172$
	sjmp	00173$
00172$:
	ljmp	00120$
00173$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendSum'
;------------------------------------------------------------
;arr                       Allocated with name '_sendSum_PARM_2'
;str_length                Allocated to registers 
;------------------------------------------------------------
;	lcd.c:125: void sendSum(unsigned char str_length, unsigned int* arr){
;	-----------------------------------------
;	 function sendSum
;	-----------------------------------------
_sendSum:
	mov	r7,dpl
;	lcd.c:127: while (str_length > 0){
00101$:
	mov	a,r7
	jz	00104$
;	lcd.c:128: sendChar(arr[str_length-1] + '0');
	mov	ar5,r7
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xFF,00114$
	dec	r6
00114$:
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	a,r5
	add	a,_sendSum_PARM_2
	mov	r5,a
	mov	a,r6
	addc	a,(_sendSum_PARM_2 + 1)
	mov	r6,a
	mov	r4,(_sendSum_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	push	ar7
	lcall	_sendChar
	pop	ar7
;	lcd.c:129: str_length--;
	dec	r7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'storeDigits'
;------------------------------------------------------------
;arr                       Allocated with name '_storeDigits_arr_1_43'
;str_length                Allocated with name '_storeDigits_PARM_2'
;num                       Allocated to registers r6 r7 
;j                         Allocated to registers r5 
;------------------------------------------------------------
;	lcd.c:133: unsigned int* storeDigits(unsigned int num, unsigned char str_length){
;	-----------------------------------------
;	 function storeDigits
;	-----------------------------------------
_storeDigits:
	mov	r6,dpl
	mov	r7,dph
;	lcd.c:136: for (j = 0; j < str_length; j++){
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,_storeDigits_PARM_2
	jnc	00101$
;	lcd.c:137: arr[j] = num % 10;
	mov	a,r5
	add	a,r5
	add	a,#_storeDigits_arr_1_43
	mov	r1,a
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	@r1,a
	inc	r1
	mov	@r1,b
	dec	r1
;	lcd.c:138: num /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
;	lcd.c:136: for (j = 0; j < str_length; j++){
	inc	r5
	sjmp	00103$
00101$:
;	lcd.c:140: return arr;
	mov	dptr,#_storeDigits_arr_1_43
	mov	b,#0x40
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'returnHome'
;------------------------------------------------------------
;	lcd.c:144: void returnHome(void) {
;	-----------------------------------------
;	 function returnHome
;	-----------------------------------------
_returnHome:
;	lcd.c:145: RS = 0;
	clr	_P3_3
;	lcd.c:146: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	mov	_P1,#0x02
;	lcd.c:147: E = 1;
	setb	_P3_2
;	lcd.c:148: E = 0;
	clr	_P3_2
;	lcd.c:149: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	lcd.c:152: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	lcd.c:153: RS = 0;
	clr	_P3_3
;	lcd.c:154: P1 = 0x06;  
	mov	_P1,#0x06
;	lcd.c:155: E = 1;
	setb	_P3_2
;	lcd.c:156: E = 0;
	clr	_P3_2
;	lcd.c:157: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	lcd.c:160: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	lcd.c:161: P1_7 = 0;
	clr	_P1_7
;	lcd.c:162: P1_6 = 0;
	clr	_P1_6
;	lcd.c:163: P1_5 = 0;
	clr	_P1_5
;	lcd.c:164: P1_4 = 0;
	clr	_P1_4
;	lcd.c:165: P1_3 = 1;
	setb	_P1_3
;	lcd.c:166: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	lcd.c:167: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	lcd.c:168: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	lcd.c:169: E = 1;
	setb	_P3_2
;	lcd.c:170: E = 0;
	clr	_P3_2
;	lcd.c:171: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'cursorOrDisplayShift'
;------------------------------------------------------------
;	lcd.c:174: void cursorOrDisplayShift(__bit sc, __bit rl) {
;	-----------------------------------------
;	 function cursorOrDisplayShift
;	-----------------------------------------
_cursorOrDisplayShift:
;	lcd.c:175: RS = 0;
	clr	_P3_3
;	lcd.c:176: P1_7 = 0;
	clr	_P1_7
;	lcd.c:177: P1_6 = 0;
	clr	_P1_6
;	lcd.c:178: P1_5 = 0;
	clr	_P1_5
;	lcd.c:179: P1_4 = 1;
	setb	_P1_4
;	lcd.c:180: P1_3 = sc;
	mov	c,_cursorOrDisplayShift_PARM_1
	mov	_P1_3,c
;	lcd.c:181: P1_2 = rl;
	mov	c,_cursorOrDisplayShift_PARM_2
	mov	_P1_2,c
;	lcd.c:182: P1_1 = 0;
	clr	_P1_1
;	lcd.c:183: P1_0 = 0;
	clr	_P1_0
;	lcd.c:184: E = 1;
	setb	_P3_2
;	lcd.c:185: E = 0;
	clr	_P3_2
;	lcd.c:186: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	lcd.c:189: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	lcd.c:190: RS = 0;
	clr	_P3_3
;	lcd.c:191: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	lcd.c:192: E = 1;
	setb	_P3_2
;	lcd.c:193: E = 0;
	clr	_P3_2
;	lcd.c:194: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'clearDisplay'
;------------------------------------------------------------
;	lcd.c:197: void clearDisplay(void) {
;	-----------------------------------------
;	 function clearDisplay
;	-----------------------------------------
_clearDisplay:
;	lcd.c:198: RS = 0;
	clr	_P3_3
;	lcd.c:199: P1 = 0x01; // command to clear LCD and return the cursor to the home position
	mov	_P1,#0x01
;	lcd.c:200: E = 1;
	setb	_P3_2
;	lcd.c:201: E = 0;
	clr	_P3_2
;	lcd.c:202: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:205: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	lcd.c:206: RS = 0;
	clr	_P3_3
;	lcd.c:207: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	lcd.c:208: E = 1;
	setb	_P3_2
;	lcd.c:209: E = 0;
	clr	_P3_2
;	lcd.c:210: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:215: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	lcd.c:216: RS = 1;
	setb	_P3_3
;	lcd.c:217: P1 = c;
	mov	_P1,r7
;	lcd.c:218: E = 1;
	setb	_P3_2
;	lcd.c:219: E = 0;
	clr	_P3_2
;	lcd.c:220: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	lcd.c:223: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:225: while (c = *str++) {
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
;	lcd.c:226: sendChar(c);
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
;	lcd.c:230: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	lcd.c:232: for (c = 0; c < 50; c++);
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
;	lcd.c:235: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	lcd.c:237: for (c = 0; c < 255; c++);
	mov	r7,#0xFF
00104$:
	mov	ar6,r7
	dec	r6
	mov	a,r6
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDigit'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	lcd.c:240: unsigned char getDigit(unsigned int num){
;	-----------------------------------------
;	 function getDigit
;	-----------------------------------------
_getDigit:
	mov	r6,dpl
	mov	r7,dph
;	lcd.c:241: if (num < 10)  	 return 1;
	clr	c
	mov	a,r6
	subb	a,#0x0A
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
	mov	dpl,#0x01
	ret
00102$:
;	lcd.c:242: if (num < 100) 	 return 2;
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	subb	a,#0x00
	jnc	00104$
	mov	dpl,#0x02
	ret
00104$:
;	lcd.c:243: if (num < 1000)  return 3;
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	subb	a,#0x03
	jnc	00106$
	mov	dpl,#0x03
	ret
00106$:
;	lcd.c:244: if (num < 10000) return 4;
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	subb	a,#0x27
	jnc	00108$
	mov	dpl,#0x04
	ret
00108$:
;	lcd.c:245: else 			 return 0;
	mov	dpl,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
