                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Sun May 01 19:34:48 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module lcd
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _cursorOrDisplayShift_PARM_2
                                    110 	.globl _cursorOrDisplayShift_PARM_1
                                    111 	.globl _displayOnOffControl_PARM_3
                                    112 	.globl _displayOnOffControl_PARM_2
                                    113 	.globl _displayOnOffControl_PARM_1
                                    114 	.globl _storeDigits_PARM_2
                                    115 	.globl _sendSum_PARM_2
                                    116 	.globl _sendSum
                                    117 	.globl _storeDigits
                                    118 	.globl _returnHome
                                    119 	.globl _entryModeSet
                                    120 	.globl _displayOnOffControl
                                    121 	.globl _cursorOrDisplayShift
                                    122 	.globl _functionSet
                                    123 	.globl _clearDisplay
                                    124 	.globl _setDdRamAddress
                                    125 	.globl _sendChar
                                    126 	.globl _sendString
                                    127 	.globl _delay
                                    128 	.globl _big_delay
                                    129 	.globl _getDigit
                                    130 ;--------------------------------------------------------
                                    131 ; special function registers
                                    132 ;--------------------------------------------------------
                                    133 	.area RSEG    (ABS,DATA)
      000000                        134 	.org 0x0000
                           000080   135 _P0	=	0x0080
                           000081   136 _SP	=	0x0081
                           000082   137 _DPL	=	0x0082
                           000083   138 _DPH	=	0x0083
                           000087   139 _PCON	=	0x0087
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008A   142 _TL0	=	0x008a
                           00008B   143 _TL1	=	0x008b
                           00008C   144 _TH0	=	0x008c
                           00008D   145 _TH1	=	0x008d
                           000090   146 _P1	=	0x0090
                           000098   147 _SCON	=	0x0098
                           000099   148 _SBUF	=	0x0099
                           0000A0   149 _P2	=	0x00a0
                           0000A8   150 _IE	=	0x00a8
                           0000B0   151 _P3	=	0x00b0
                           0000B8   152 _IP	=	0x00b8
                           0000D0   153 _PSW	=	0x00d0
                           0000E0   154 _ACC	=	0x00e0
                           0000F0   155 _B	=	0x00f0
                                    156 ;--------------------------------------------------------
                                    157 ; special function bits
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0_0	=	0x0080
                           000081   162 _P0_1	=	0x0081
                           000082   163 _P0_2	=	0x0082
                           000083   164 _P0_3	=	0x0083
                           000084   165 _P0_4	=	0x0084
                           000085   166 _P0_5	=	0x0085
                           000086   167 _P0_6	=	0x0086
                           000087   168 _P0_7	=	0x0087
                           000088   169 _IT0	=	0x0088
                           000089   170 _IE0	=	0x0089
                           00008A   171 _IT1	=	0x008a
                           00008B   172 _IE1	=	0x008b
                           00008C   173 _TR0	=	0x008c
                           00008D   174 _TF0	=	0x008d
                           00008E   175 _TR1	=	0x008e
                           00008F   176 _TF1	=	0x008f
                           000090   177 _P1_0	=	0x0090
                           000091   178 _P1_1	=	0x0091
                           000092   179 _P1_2	=	0x0092
                           000093   180 _P1_3	=	0x0093
                           000094   181 _P1_4	=	0x0094
                           000095   182 _P1_5	=	0x0095
                           000096   183 _P1_6	=	0x0096
                           000097   184 _P1_7	=	0x0097
                           000098   185 _RI	=	0x0098
                           000099   186 _TI	=	0x0099
                           00009A   187 _RB8	=	0x009a
                           00009B   188 _TB8	=	0x009b
                           00009C   189 _REN	=	0x009c
                           00009D   190 _SM2	=	0x009d
                           00009E   191 _SM1	=	0x009e
                           00009F   192 _SM0	=	0x009f
                           0000A0   193 _P2_0	=	0x00a0
                           0000A1   194 _P2_1	=	0x00a1
                           0000A2   195 _P2_2	=	0x00a2
                           0000A3   196 _P2_3	=	0x00a3
                           0000A4   197 _P2_4	=	0x00a4
                           0000A5   198 _P2_5	=	0x00a5
                           0000A6   199 _P2_6	=	0x00a6
                           0000A7   200 _P2_7	=	0x00a7
                           0000A8   201 _EX0	=	0x00a8
                           0000A9   202 _ET0	=	0x00a9
                           0000AA   203 _EX1	=	0x00aa
                           0000AB   204 _ET1	=	0x00ab
                           0000AC   205 _ES	=	0x00ac
                           0000AF   206 _EA	=	0x00af
                           0000B0   207 _P3_0	=	0x00b0
                           0000B1   208 _P3_1	=	0x00b1
                           0000B2   209 _P3_2	=	0x00b2
                           0000B3   210 _P3_3	=	0x00b3
                           0000B4   211 _P3_4	=	0x00b4
                           0000B5   212 _P3_5	=	0x00b5
                           0000B6   213 _P3_6	=	0x00b6
                           0000B7   214 _P3_7	=	0x00b7
                           0000B0   215 _RXD	=	0x00b0
                           0000B1   216 _TXD	=	0x00b1
                           0000B2   217 _INT0	=	0x00b2
                           0000B3   218 _INT1	=	0x00b3
                           0000B4   219 _T0	=	0x00b4
                           0000B5   220 _T1	=	0x00b5
                           0000B6   221 _WR	=	0x00b6
                           0000B7   222 _RD	=	0x00b7
                           0000B8   223 _PX0	=	0x00b8
                           0000B9   224 _PT0	=	0x00b9
                           0000BA   225 _PX1	=	0x00ba
                           0000BB   226 _PT1	=	0x00bb
                           0000BC   227 _PS	=	0x00bc
                           0000D0   228 _P	=	0x00d0
                           0000D1   229 _F1	=	0x00d1
                           0000D2   230 _OV	=	0x00d2
                           0000D3   231 _RS0	=	0x00d3
                           0000D4   232 _RS1	=	0x00d4
                           0000D5   233 _F0	=	0x00d5
                           0000D6   234 _AC	=	0x00d6
                           0000D7   235 _CY	=	0x00d7
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable register banks
                                    238 ;--------------------------------------------------------
                                    239 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        240 	.ds 8
                                    241 ;--------------------------------------------------------
                                    242 ; internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area DSEG    (DATA)
      000030                        245 _Main_keypad_1_30:
      000030                        246 	.ds 12
      00003C                        247 _Main_gotkey_1_30:
      00003C                        248 	.ds 1
      00003D                        249 _Main_firstOp_1_30:
      00003D                        250 	.ds 2
      00003F                        251 _Main_secondOp_1_30:
      00003F                        252 	.ds 2
      000041                        253 _Main_intSum_1_30:
      000041                        254 	.ds 2
      000043                        255 _Main_firstOp_done_1_30:
      000043                        256 	.ds 1
      000044                        257 _Main_sloc0_1_0:
      000044                        258 	.ds 2
      000046                        259 _sendSum_PARM_2:
      000046                        260 	.ds 3
      000049                        261 _storeDigits_arr_1_43:
      000049                        262 	.ds 20
      00005D                        263 _storeDigits_PARM_2:
      00005D                        264 	.ds 1
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable items in internal ram 
                                    267 ;--------------------------------------------------------
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 	.area	OSEG    (OVR,DATA)
                                    270 	.area	OSEG    (OVR,DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; indirectly addressable internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area ISEG    (DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area IABS    (ABS,DATA)
                                    279 	.area IABS    (ABS,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; bit data
                                    282 ;--------------------------------------------------------
                                    283 	.area BSEG    (BIT)
      000000                        284 _displayOnOffControl_PARM_1:
      000000                        285 	.ds 1
      000001                        286 _displayOnOffControl_PARM_2:
      000001                        287 	.ds 1
      000002                        288 _displayOnOffControl_PARM_3:
      000002                        289 	.ds 1
      000003                        290 _cursorOrDisplayShift_PARM_1:
      000003                        291 	.ds 1
      000004                        292 _cursorOrDisplayShift_PARM_2:
      000004                        293 	.ds 1
                                    294 ;--------------------------------------------------------
                                    295 ; paged external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area PSEG    (PAG,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XSEG    (XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XABS    (ABS,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external initialized ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XISEG   (XDATA)
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT0 (CODE)
                                    312 	.area GSINIT1 (CODE)
                                    313 	.area GSINIT2 (CODE)
                                    314 	.area GSINIT3 (CODE)
                                    315 	.area GSINIT4 (CODE)
                                    316 	.area GSINIT5 (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area CSEG    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; global & static initialisations
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; Home
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area HOME    (CODE)
                                    332 ;--------------------------------------------------------
                                    333 ; code
                                    334 ;--------------------------------------------------------
                                    335 	.area CSEG    (CODE)
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'Main'
                                    338 ;------------------------------------------------------------
                                    339 ;row                       Allocated to registers r2 
                                    340 ;col                       Allocated to registers r6 
                                    341 ;keypad                    Allocated with name '_Main_keypad_1_30'
                                    342 ;i                         Allocated to registers r4 
                                    343 ;gotkey                    Allocated with name '_Main_gotkey_1_30'
                                    344 ;firstOp                   Allocated with name '_Main_firstOp_1_30'
                                    345 ;secondOp                  Allocated with name '_Main_secondOp_1_30'
                                    346 ;intSum                    Allocated with name '_Main_intSum_1_30'
                                    347 ;length                    Allocated to registers 
                                    348 ;str_length                Allocated to registers r5 
                                    349 ;firstOp_done              Allocated with name '_Main_firstOp_done_1_30'
                                    350 ;arr                       Allocated to registers 
                                    351 ;sloc0                     Allocated with name '_Main_sloc0_1_0'
                                    352 ;------------------------------------------------------------
                                    353 ;	lcd.c:43: void Main(void) {
                                    354 ;	-----------------------------------------
                                    355 ;	 function Main
                                    356 ;	-----------------------------------------
      000000                        357 _Main:
                           000007   358 	ar7 = 0x07
                           000006   359 	ar6 = 0x06
                           000005   360 	ar5 = 0x05
                           000004   361 	ar4 = 0x04
                           000003   362 	ar3 = 0x03
                           000002   363 	ar2 = 0x02
                           000001   364 	ar1 = 0x01
                           000000   365 	ar0 = 0x00
                                    366 ;	lcd.c:49: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
      000000 75 30 33         [24]  367 	mov	_Main_keypad_1_30,#0x33
      000003 75 31 32         [24]  368 	mov	(_Main_keypad_1_30 + 0x0001),#0x32
      000006 75 32 31         [24]  369 	mov	(_Main_keypad_1_30 + 0x0002),#0x31
      000009 75 33 36         [24]  370 	mov	(_Main_keypad_1_30 + 0x0003),#0x36
      00000C 75 34 35         [24]  371 	mov	(_Main_keypad_1_30 + 0x0004),#0x35
      00000F 75 35 34         [24]  372 	mov	(_Main_keypad_1_30 + 0x0005),#0x34
      000012 75 36 39         [24]  373 	mov	(_Main_keypad_1_30 + 0x0006),#0x39
      000015 75 37 38         [24]  374 	mov	(_Main_keypad_1_30 + 0x0007),#0x38
      000018 75 38 37         [24]  375 	mov	(_Main_keypad_1_30 + 0x0008),#0x37
      00001B 75 39 3D         [24]  376 	mov	(_Main_keypad_1_30 + 0x0009),#0x3D
      00001E 75 3A 30         [24]  377 	mov	(_Main_keypad_1_30 + 0x000a),#0x30
      000021 75 3B 2B         [24]  378 	mov	(_Main_keypad_1_30 + 0x000b),#0x2B
                                    379 ;	lcd.c:57: unsigned char gotkey        = 0;
                                    380 ;	lcd.c:58: unsigned int  firstOp       = 0;		// First operand of the calculator
      000024 E4               [12]  381 	clr	a
      000025 F5 3C            [12]  382 	mov	_Main_gotkey_1_30,a
      000027 F5 3D            [12]  383 	mov	_Main_firstOp_1_30,a
      000029 F5 3E            [12]  384 	mov	(_Main_firstOp_1_30 + 1),a
                                    385 ;	lcd.c:59: unsigned int  secondOp      = 0;		// Second operand of the calculator
      00002B F5 3F            [12]  386 	mov	_Main_secondOp_1_30,a
      00002D F5 40            [12]  387 	mov	(_Main_secondOp_1_30 + 1),a
                                    388 ;	lcd.c:63: unsigned char firstOp_done 	= 0;
                                    389 ;	1-genFromRTrack replaced	mov	_Main_firstOp_done_1_30,#0x00
      00002F F5 43            [12]  390 	mov	_Main_firstOp_done_1_30,a
                                    391 ;	lcd.c:67: functionSet();
      000031 12 02 5B         [24]  392 	lcall	_functionSet
                                    393 ;	lcd.c:68: entryModeSet(); // increment and no shift
      000034 12 02 15         [24]  394 	lcall	_entryModeSet
                                    395 ;	lcd.c:69: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      000037 D2 00            [12]  396 	setb	_displayOnOffControl_PARM_1
      000039 D2 01            [12]  397 	setb	_displayOnOffControl_PARM_2
      00003B D2 02            [12]  398 	setb	_displayOnOffControl_PARM_3
      00003D 12 02 21         [24]  399 	lcall	_displayOnOffControl
                                    400 ;	lcd.c:73: while(1){
      000040                        401 00120$:
                                    402 ;	lcd.c:74: row = 0xf7;  // The first row (connected to P0.3) will be zero
      000040 7A F7            [12]  403 	mov	r2,#0xF7
                                    404 ;	lcd.c:76: for (i=0;i<4;++i){ // loop over the 4 rows
      000042 7C 00            [12]  405 	mov	r4,#0x00
      000044 7B 00            [12]  406 	mov	r3,#0x00
      000046                        407 00122$:
                                    408 ;	lcd.c:78: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      000046 75 80 FF         [24]  409 	mov	_P0,#0xFF
                                    410 ;	lcd.c:79: P0 = P0 & row; // clear one row at a time
      000049 EA               [12]  411 	mov	a,r2
      00004A 52 80            [12]  412 	anl	_P0,a
                                    413 ;	lcd.c:80: col = P0 & 0x70;  // Read the 3 columns
      00004C 74 70            [12]  414 	mov	a,#0x70
      00004E 55 80            [12]  415 	anl	a,_P0
      000050 FE               [12]  416 	mov	r6,a
                                    417 ;	lcd.c:81: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      000051 BE 70 03         [24]  418 	cjne	r6,#0x70,00156$
      000054 02 01 52         [24]  419 	ljmp	00114$
      000057                        420 00156$:
                                    421 ;	lcd.c:82: col = (~col) & 0x70;  // because the selected column returns zero
      000057 EE               [12]  422 	mov	a,r6
      000058 F4               [12]  423 	cpl	a
      000059 FD               [12]  424 	mov	r5,a
      00005A 74 70            [12]  425 	mov	a,#0x70
      00005C 5D               [12]  426 	anl	a,r5
                                    427 ;	lcd.c:83: col = col >> 5;       // The column variable now contain the number of the selected column
      00005D C4               [12]  428 	swap	a
      00005E 03               [12]  429 	rr	a
      00005F 54 07            [12]  430 	anl	a,#0x07
      000061 FE               [12]  431 	mov	r6,a
                                    432 ;	lcd.c:84: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
      000062 EC               [12]  433 	mov	a,r4
      000063 75 F0 03         [24]  434 	mov	b,#0x03
      000066 A4               [48]  435 	mul	ab
      000067 24 30            [12]  436 	add	a,#_Main_keypad_1_30
      000069 FD               [12]  437 	mov	r5,a
      00006A 2E               [12]  438 	add	a,r6
      00006B F9               [12]  439 	mov	r1,a
      00006C 87 3C            [24]  440 	mov	_Main_gotkey_1_30,@r1
                                    441 ;	lcd.c:86: if (gotkey == '+' || gotkey == '*'){ 		
      00006E 74 2B            [12]  442 	mov	a,#0x2B
      000070 B5 3C 04         [24]  443 	cjne	a,_Main_gotkey_1_30,00157$
      000073 74 01            [12]  444 	mov	a,#0x01
      000075 80 01            [24]  445 	sjmp	00158$
      000077                        446 00157$:
      000077 E4               [12]  447 	clr	a
      000078                        448 00158$:
      000078 FE               [12]  449 	mov	r6,a
      000079 70 05            [24]  450 	jnz	00101$
      00007B 74 2A            [12]  451 	mov	a,#0x2A
      00007D B5 3C 0D         [24]  452 	cjne	a,_Main_gotkey_1_30,00102$
      000080                        453 00101$:
                                    454 ;	lcd.c:87: firstOp_done = 1;
      000080 75 43 01         [24]  455 	mov	_Main_firstOp_done_1_30,#0x01
                                    456 ;	lcd.c:88: sendChar('+');
      000083 75 82 2B         [24]  457 	mov	dpl,#0x2B
      000086 C0 06            [24]  458 	push	ar6
      000088 12 02 83         [24]  459 	lcall	_sendChar
      00008B D0 06            [24]  460 	pop	ar6
      00008D                        461 00102$:
                                    462 ;	lcd.c:91: if (gotkey == '=' || gotkey == '#'){
      00008D 74 3D            [12]  463 	mov	a,#0x3D
      00008F B5 3C 02         [24]  464 	cjne	a,_Main_gotkey_1_30,00162$
      000092 80 05            [24]  465 	sjmp	00104$
      000094                        466 00162$:
      000094 74 23            [12]  467 	mov	a,#0x23
      000096 B5 3C 3D         [24]  468 	cjne	a,_Main_gotkey_1_30,00105$
      000099                        469 00104$:
                                    470 ;	lcd.c:92: sendChar('=');
      000099 75 82 3D         [24]  471 	mov	dpl,#0x3D
      00009C 12 02 83         [24]  472 	lcall	_sendChar
                                    473 ;	lcd.c:93: intSum = firstOp + secondOp;
      00009F E5 3F            [12]  474 	mov	a,_Main_secondOp_1_30
      0000A1 25 3D            [12]  475 	add	a,_Main_firstOp_1_30
      0000A3 F5 41            [12]  476 	mov	_Main_intSum_1_30,a
      0000A5 E5 40            [12]  477 	mov	a,(_Main_secondOp_1_30 + 1)
      0000A7 35 3E            [12]  478 	addc	a,(_Main_firstOp_1_30 + 1)
      0000A9 F5 42            [12]  479 	mov	(_Main_intSum_1_30 + 1),a
                                    480 ;	lcd.c:94: str_length = getDigit(intSum);
      0000AB 85 41 82         [24]  481 	mov	dpl,_Main_intSum_1_30
      0000AE 85 42 83         [24]  482 	mov	dph,(_Main_intSum_1_30 + 1)
      0000B1 12 02 D0         [24]  483 	lcall	_getDigit
      0000B4 AD 82            [24]  484 	mov	r5,dpl
                                    485 ;	lcd.c:95: arr = storeDigits(intSum, str_length);
      0000B6 8D 5D            [24]  486 	mov	_storeDigits_PARM_2,r5
      0000B8 85 41 82         [24]  487 	mov	dpl,_Main_intSum_1_30
      0000BB 85 42 83         [24]  488 	mov	dph,(_Main_intSum_1_30 + 1)
      0000BE C0 05            [24]  489 	push	ar5
      0000C0 12 01 B2         [24]  490 	lcall	_storeDigits
      0000C3 85 82 46         [24]  491 	mov	_sendSum_PARM_2,dpl
      0000C6 85 83 47         [24]  492 	mov	(_sendSum_PARM_2 + 1),dph
      0000C9 85 F0 48         [24]  493 	mov	(_sendSum_PARM_2 + 2),b
      0000CC D0 05            [24]  494 	pop	ar5
                                    495 ;	lcd.c:96: sendSum(str_length, arr);
      0000CE 8D 82            [24]  496 	mov	dpl,r5
      0000D0 12 01 75         [24]  497 	lcall	_sendSum
                                    498 ;	lcd.c:97: break;
      0000D3 02 01 64         [24]  499 	ljmp	00115$
      0000D6                        500 00105$:
                                    501 ;	lcd.c:100: if (!firstOp_done){ 		
      0000D6 E5 43            [12]  502 	mov	a,_Main_firstOp_done_1_30
      0000D8 70 3A            [24]  503 	jnz	00108$
                                    504 ;	lcd.c:101: firstOp = firstOp * 10 + (gotkey - '0');
      0000DA C0 06            [24]  505 	push	ar6
      0000DC 85 3D 5E         [24]  506 	mov	__mulint_PARM_2,_Main_firstOp_1_30
      0000DF 85 3E 5F         [24]  507 	mov	(__mulint_PARM_2 + 1),(_Main_firstOp_1_30 + 1)
      0000E2 90 00 0A         [24]  508 	mov	dptr,#0x000A
      0000E5 C0 06            [24]  509 	push	ar6
      0000E7 12 03 35         [24]  510 	lcall	__mulint
      0000EA 85 82 44         [24]  511 	mov	_Main_sloc0_1_0,dpl
      0000ED 85 83 45         [24]  512 	mov	(_Main_sloc0_1_0 + 1),dph
      0000F0 D0 06            [24]  513 	pop	ar6
      0000F2 AE 3C            [24]  514 	mov	r6,_Main_gotkey_1_30
      0000F4 7F 00            [12]  515 	mov	r7,#0x00
      0000F6 EE               [12]  516 	mov	a,r6
      0000F7 24 D0            [12]  517 	add	a,#0xD0
      0000F9 FE               [12]  518 	mov	r6,a
      0000FA EF               [12]  519 	mov	a,r7
      0000FB 34 FF            [12]  520 	addc	a,#0xFF
      0000FD FF               [12]  521 	mov	r7,a
      0000FE EE               [12]  522 	mov	a,r6
      0000FF 25 44            [12]  523 	add	a,_Main_sloc0_1_0
      000101 F5 3D            [12]  524 	mov	_Main_firstOp_1_30,a
      000103 EF               [12]  525 	mov	a,r7
      000104 35 45            [12]  526 	addc	a,(_Main_sloc0_1_0 + 1)
      000106 F5 3E            [12]  527 	mov	(_Main_firstOp_1_30 + 1),a
                                    528 ;	lcd.c:102: sendChar(gotkey);
      000108 85 3C 82         [24]  529 	mov	dpl,_Main_gotkey_1_30
      00010B C0 06            [24]  530 	push	ar6
      00010D 12 02 83         [24]  531 	lcall	_sendChar
      000110 D0 06            [24]  532 	pop	ar6
                                    533 ;	lcd.c:117: if (gotkey == '=' || gotkey == '#'){break;}  // Since a key was detected -> exit the while loop
      000112 D0 06            [24]  534 	pop	ar6
                                    535 ;	lcd.c:102: sendChar(gotkey);
      000114                        536 00108$:
                                    537 ;	lcd.c:105: if (firstOp_done && (gotkey != '+' && gotkey != '*')){ 		
      000114 E5 43            [12]  538 	mov	a,_Main_firstOp_done_1_30
      000116 60 4C            [24]  539 	jz	00115$
      000118 EE               [12]  540 	mov	a,r6
      000119 70 49            [24]  541 	jnz	00115$
      00011B 74 2A            [12]  542 	mov	a,#0x2A
      00011D B5 3C 02         [24]  543 	cjne	a,_Main_gotkey_1_30,00168$
      000120 80 42            [24]  544 	sjmp	00115$
      000122                        545 00168$:
                                    546 ;	lcd.c:106: secondOp = secondOp * 10 + (gotkey - '0');
      000122 85 3F 5E         [24]  547 	mov	__mulint_PARM_2,_Main_secondOp_1_30
      000125 85 40 5F         [24]  548 	mov	(__mulint_PARM_2 + 1),(_Main_secondOp_1_30 + 1)
      000128 90 00 0A         [24]  549 	mov	dptr,#0x000A
      00012B 12 03 35         [24]  550 	lcall	__mulint
      00012E 85 82 44         [24]  551 	mov	_Main_sloc0_1_0,dpl
      000131 85 83 45         [24]  552 	mov	(_Main_sloc0_1_0 + 1),dph
      000134 AD 3C            [24]  553 	mov	r5,_Main_gotkey_1_30
      000136 7F 00            [12]  554 	mov	r7,#0x00
      000138 ED               [12]  555 	mov	a,r5
      000139 24 D0            [12]  556 	add	a,#0xD0
      00013B FD               [12]  557 	mov	r5,a
      00013C EF               [12]  558 	mov	a,r7
      00013D 34 FF            [12]  559 	addc	a,#0xFF
      00013F FF               [12]  560 	mov	r7,a
      000140 ED               [12]  561 	mov	a,r5
      000141 25 44            [12]  562 	add	a,_Main_sloc0_1_0
      000143 F5 3F            [12]  563 	mov	_Main_secondOp_1_30,a
      000145 EF               [12]  564 	mov	a,r7
      000146 35 45            [12]  565 	addc	a,(_Main_sloc0_1_0 + 1)
      000148 F5 40            [12]  566 	mov	(_Main_secondOp_1_30 + 1),a
                                    567 ;	lcd.c:107: sendChar(gotkey);
      00014A 85 3C 82         [24]  568 	mov	dpl,_Main_gotkey_1_30
      00014D 12 02 83         [24]  569 	lcall	_sendChar
                                    570 ;	lcd.c:110: break;  // Since a key was detected -> Exit the for loop
      000150 80 12            [24]  571 	sjmp	00115$
      000152                        572 00114$:
                                    573 ;	lcd.c:112: row = row >> 1;   // No key is detected yet, try the next row
      000152 EA               [12]  574 	mov	a,r2
      000153 C3               [12]  575 	clr	c
      000154 13               [12]  576 	rrc	a
      000155 FA               [12]  577 	mov	r2,a
                                    578 ;	lcd.c:113: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      000156 43 02 F0         [24]  579 	orl	ar2,#0xF0
                                    580 ;	lcd.c:76: for (i=0;i<4;++i){ // loop over the 4 rows
      000159 0B               [12]  581 	inc	r3
      00015A 8B 04            [24]  582 	mov	ar4,r3
      00015C BB 04 00         [24]  583 	cjne	r3,#0x04,00169$
      00015F                        584 00169$:
      00015F 50 03            [24]  585 	jnc	00170$
      000161 02 00 46         [24]  586 	ljmp	00122$
      000164                        587 00170$:
      000164                        588 00115$:
                                    589 ;	lcd.c:117: if (gotkey == '=' || gotkey == '#'){break;}  // Since a key was detected -> exit the while loop
      000164 74 3D            [12]  590 	mov	a,#0x3D
      000166 B5 3C 01         [24]  591 	cjne	a,_Main_gotkey_1_30,00171$
      000169 22               [24]  592 	ret
      00016A                        593 00171$:
      00016A 74 23            [12]  594 	mov	a,#0x23
      00016C B5 3C 02         [24]  595 	cjne	a,_Main_gotkey_1_30,00172$
      00016F 80 03            [24]  596 	sjmp	00173$
      000171                        597 00172$:
      000171 02 00 40         [24]  598 	ljmp	00120$
      000174                        599 00173$:
      000174 22               [24]  600 	ret
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'sendSum'
                                    603 ;------------------------------------------------------------
                                    604 ;arr                       Allocated with name '_sendSum_PARM_2'
                                    605 ;str_length                Allocated to registers 
                                    606 ;------------------------------------------------------------
                                    607 ;	lcd.c:125: void sendSum(unsigned char str_length, unsigned int* arr){
                                    608 ;	-----------------------------------------
                                    609 ;	 function sendSum
                                    610 ;	-----------------------------------------
      000175                        611 _sendSum:
      000175 AF 82            [24]  612 	mov	r7,dpl
                                    613 ;	lcd.c:127: while (str_length > 0){
      000177                        614 00101$:
      000177 EF               [12]  615 	mov	a,r7
      000178 60 37            [24]  616 	jz	00104$
                                    617 ;	lcd.c:128: sendChar(arr[str_length-1] + '0');
      00017A 8F 05            [24]  618 	mov	ar5,r7
      00017C 7E 00            [12]  619 	mov	r6,#0x00
      00017E 1D               [12]  620 	dec	r5
      00017F BD FF 01         [24]  621 	cjne	r5,#0xFF,00114$
      000182 1E               [12]  622 	dec	r6
      000183                        623 00114$:
      000183 EE               [12]  624 	mov	a,r6
      000184 CD               [12]  625 	xch	a,r5
      000185 25 E0            [12]  626 	add	a,acc
      000187 CD               [12]  627 	xch	a,r5
      000188 33               [12]  628 	rlc	a
      000189 FE               [12]  629 	mov	r6,a
      00018A ED               [12]  630 	mov	a,r5
      00018B 25 46            [12]  631 	add	a,_sendSum_PARM_2
      00018D FD               [12]  632 	mov	r5,a
      00018E EE               [12]  633 	mov	a,r6
      00018F 35 47            [12]  634 	addc	a,(_sendSum_PARM_2 + 1)
      000191 FE               [12]  635 	mov	r6,a
      000192 AC 48            [24]  636 	mov	r4,(_sendSum_PARM_2 + 2)
      000194 8D 82            [24]  637 	mov	dpl,r5
      000196 8E 83            [24]  638 	mov	dph,r6
      000198 8C F0            [24]  639 	mov	b,r4
      00019A 12 03 9F         [24]  640 	lcall	__gptrget
      00019D FD               [12]  641 	mov	r5,a
      00019E A3               [24]  642 	inc	dptr
      00019F 12 03 9F         [24]  643 	lcall	__gptrget
      0001A2 74 30            [12]  644 	mov	a,#0x30
      0001A4 2D               [12]  645 	add	a,r5
      0001A5 F5 82            [12]  646 	mov	dpl,a
      0001A7 C0 07            [24]  647 	push	ar7
      0001A9 12 02 83         [24]  648 	lcall	_sendChar
      0001AC D0 07            [24]  649 	pop	ar7
                                    650 ;	lcd.c:129: str_length--;
      0001AE 1F               [12]  651 	dec	r7
      0001AF 80 C6            [24]  652 	sjmp	00101$
      0001B1                        653 00104$:
      0001B1 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'storeDigits'
                                    657 ;------------------------------------------------------------
                                    658 ;arr                       Allocated with name '_storeDigits_arr_1_43'
                                    659 ;str_length                Allocated with name '_storeDigits_PARM_2'
                                    660 ;num                       Allocated to registers r6 r7 
                                    661 ;j                         Allocated to registers r5 
                                    662 ;------------------------------------------------------------
                                    663 ;	lcd.c:133: unsigned int* storeDigits(unsigned int num, unsigned char str_length){
                                    664 ;	-----------------------------------------
                                    665 ;	 function storeDigits
                                    666 ;	-----------------------------------------
      0001B2                        667 _storeDigits:
      0001B2 AE 82            [24]  668 	mov	r6,dpl
      0001B4 AF 83            [24]  669 	mov	r7,dph
                                    670 ;	lcd.c:136: for (j = 0; j < str_length; j++){
      0001B6 7D 00            [12]  671 	mov	r5,#0x00
      0001B8                        672 00103$:
      0001B8 C3               [12]  673 	clr	c
      0001B9 ED               [12]  674 	mov	a,r5
      0001BA 95 5D            [12]  675 	subb	a,_storeDigits_PARM_2
      0001BC 50 44            [24]  676 	jnc	00101$
                                    677 ;	lcd.c:137: arr[j] = num % 10;
      0001BE ED               [12]  678 	mov	a,r5
      0001BF 2D               [12]  679 	add	a,r5
      0001C0 24 49            [12]  680 	add	a,#_storeDigits_arr_1_43
      0001C2 F9               [12]  681 	mov	r1,a
      0001C3 75 5E 0A         [24]  682 	mov	__moduint_PARM_2,#0x0A
      0001C6 75 5F 00         [24]  683 	mov	(__moduint_PARM_2 + 1),#0x00
      0001C9 8E 82            [24]  684 	mov	dpl,r6
      0001CB 8F 83            [24]  685 	mov	dph,r7
      0001CD C0 07            [24]  686 	push	ar7
      0001CF C0 06            [24]  687 	push	ar6
      0001D1 C0 05            [24]  688 	push	ar5
      0001D3 C0 01            [24]  689 	push	ar1
      0001D5 12 03 52         [24]  690 	lcall	__moduint
      0001D8 E5 82            [12]  691 	mov	a,dpl
      0001DA 85 83 F0         [24]  692 	mov	b,dph
      0001DD D0 01            [24]  693 	pop	ar1
      0001DF D0 05            [24]  694 	pop	ar5
      0001E1 D0 06            [24]  695 	pop	ar6
      0001E3 D0 07            [24]  696 	pop	ar7
      0001E5 F7               [12]  697 	mov	@r1,a
      0001E6 09               [12]  698 	inc	r1
      0001E7 A7 F0            [24]  699 	mov	@r1,b
      0001E9 19               [12]  700 	dec	r1
                                    701 ;	lcd.c:138: num /= 10;
      0001EA 75 5E 0A         [24]  702 	mov	__divuint_PARM_2,#0x0A
      0001ED 75 5F 00         [24]  703 	mov	(__divuint_PARM_2 + 1),#0x00
      0001F0 8E 82            [24]  704 	mov	dpl,r6
      0001F2 8F 83            [24]  705 	mov	dph,r7
      0001F4 C0 05            [24]  706 	push	ar5
      0001F6 12 03 0C         [24]  707 	lcall	__divuint
      0001F9 AE 82            [24]  708 	mov	r6,dpl
      0001FB AF 83            [24]  709 	mov	r7,dph
      0001FD D0 05            [24]  710 	pop	ar5
                                    711 ;	lcd.c:136: for (j = 0; j < str_length; j++){
      0001FF 0D               [12]  712 	inc	r5
      000200 80 B6            [24]  713 	sjmp	00103$
      000202                        714 00101$:
                                    715 ;	lcd.c:140: return arr;
      000202 90 00 49         [24]  716 	mov	dptr,#_storeDigits_arr_1_43
      000205 75 F0 40         [24]  717 	mov	b,#0x40
      000208 22               [24]  718 	ret
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'returnHome'
                                    721 ;------------------------------------------------------------
                                    722 ;	lcd.c:144: void returnHome(void) {
                                    723 ;	-----------------------------------------
                                    724 ;	 function returnHome
                                    725 ;	-----------------------------------------
      000209                        726 _returnHome:
                                    727 ;	lcd.c:145: RS = 0;
      000209 C2 B3            [12]  728 	clr	_P3_3
                                    729 ;	lcd.c:146: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
      00020B 75 90 02         [24]  730 	mov	_P1,#0x02
                                    731 ;	lcd.c:147: E = 1;
      00020E D2 B2            [12]  732 	setb	_P3_2
                                    733 ;	lcd.c:148: E = 0;
      000210 C2 B2            [12]  734 	clr	_P3_2
                                    735 ;	lcd.c:149: big_delay(); // This operation needs a bigger delay
      000212 02 02 C6         [24]  736 	ljmp	_big_delay
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'entryModeSet'
                                    739 ;------------------------------------------------------------
                                    740 ;	lcd.c:152: void entryModeSet() {
                                    741 ;	-----------------------------------------
                                    742 ;	 function entryModeSet
                                    743 ;	-----------------------------------------
      000215                        744 _entryModeSet:
                                    745 ;	lcd.c:153: RS = 0;
      000215 C2 B3            [12]  746 	clr	_P3_3
                                    747 ;	lcd.c:154: P1 = 0x06;  
      000217 75 90 06         [24]  748 	mov	_P1,#0x06
                                    749 ;	lcd.c:155: E = 1;
      00021A D2 B2            [12]  750 	setb	_P3_2
                                    751 ;	lcd.c:156: E = 0;
      00021C C2 B2            [12]  752 	clr	_P3_2
                                    753 ;	lcd.c:157: delay();
      00021E 02 02 BD         [24]  754 	ljmp	_delay
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'displayOnOffControl'
                                    757 ;------------------------------------------------------------
                                    758 ;	lcd.c:160: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
                                    759 ;	-----------------------------------------
                                    760 ;	 function displayOnOffControl
                                    761 ;	-----------------------------------------
      000221                        762 _displayOnOffControl:
                                    763 ;	lcd.c:161: P1_7 = 0;
      000221 C2 97            [12]  764 	clr	_P1_7
                                    765 ;	lcd.c:162: P1_6 = 0;
      000223 C2 96            [12]  766 	clr	_P1_6
                                    767 ;	lcd.c:163: P1_5 = 0;
      000225 C2 95            [12]  768 	clr	_P1_5
                                    769 ;	lcd.c:164: P1_4 = 0;
      000227 C2 94            [12]  770 	clr	_P1_4
                                    771 ;	lcd.c:165: P1_3 = 1;
      000229 D2 93            [12]  772 	setb	_P1_3
                                    773 ;	lcd.c:166: P1_2 = display;
      00022B A2 00            [12]  774 	mov	c,_displayOnOffControl_PARM_1
      00022D 92 92            [24]  775 	mov	_P1_2,c
                                    776 ;	lcd.c:167: P1_1 = cursor;
      00022F A2 01            [12]  777 	mov	c,_displayOnOffControl_PARM_2
      000231 92 91            [24]  778 	mov	_P1_1,c
                                    779 ;	lcd.c:168: P1_0 = blinking;
      000233 A2 02            [12]  780 	mov	c,_displayOnOffControl_PARM_3
      000235 92 90            [24]  781 	mov	_P1_0,c
                                    782 ;	lcd.c:169: E = 1;
      000237 D2 B2            [12]  783 	setb	_P3_2
                                    784 ;	lcd.c:170: E = 0;
      000239 C2 B2            [12]  785 	clr	_P3_2
                                    786 ;	lcd.c:171: delay();
      00023B 02 02 BD         [24]  787 	ljmp	_delay
                                    788 ;------------------------------------------------------------
                                    789 ;Allocation info for local variables in function 'cursorOrDisplayShift'
                                    790 ;------------------------------------------------------------
                                    791 ;	lcd.c:174: void cursorOrDisplayShift(__bit sc, __bit rl) {
                                    792 ;	-----------------------------------------
                                    793 ;	 function cursorOrDisplayShift
                                    794 ;	-----------------------------------------
      00023E                        795 _cursorOrDisplayShift:
                                    796 ;	lcd.c:175: RS = 0;
      00023E C2 B3            [12]  797 	clr	_P3_3
                                    798 ;	lcd.c:176: P1_7 = 0;
      000240 C2 97            [12]  799 	clr	_P1_7
                                    800 ;	lcd.c:177: P1_6 = 0;
      000242 C2 96            [12]  801 	clr	_P1_6
                                    802 ;	lcd.c:178: P1_5 = 0;
      000244 C2 95            [12]  803 	clr	_P1_5
                                    804 ;	lcd.c:179: P1_4 = 1;
      000246 D2 94            [12]  805 	setb	_P1_4
                                    806 ;	lcd.c:180: P1_3 = sc;
      000248 A2 03            [12]  807 	mov	c,_cursorOrDisplayShift_PARM_1
      00024A 92 93            [24]  808 	mov	_P1_3,c
                                    809 ;	lcd.c:181: P1_2 = rl;
      00024C A2 04            [12]  810 	mov	c,_cursorOrDisplayShift_PARM_2
      00024E 92 92            [24]  811 	mov	_P1_2,c
                                    812 ;	lcd.c:182: P1_1 = 0;
      000250 C2 91            [12]  813 	clr	_P1_1
                                    814 ;	lcd.c:183: P1_0 = 0;
      000252 C2 90            [12]  815 	clr	_P1_0
                                    816 ;	lcd.c:184: E = 1;
      000254 D2 B2            [12]  817 	setb	_P3_2
                                    818 ;	lcd.c:185: E = 0;
      000256 C2 B2            [12]  819 	clr	_P3_2
                                    820 ;	lcd.c:186: delay();
      000258 02 02 BD         [24]  821 	ljmp	_delay
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'functionSet'
                                    824 ;------------------------------------------------------------
                                    825 ;	lcd.c:189: void functionSet(void) {
                                    826 ;	-----------------------------------------
                                    827 ;	 function functionSet
                                    828 ;	-----------------------------------------
      00025B                        829 _functionSet:
                                    830 ;	lcd.c:190: RS = 0;
      00025B C2 B3            [12]  831 	clr	_P3_3
                                    832 ;	lcd.c:191: P1 = 0x38; // 8-bit mode, 2 lines LCD
      00025D 75 90 38         [24]  833 	mov	_P1,#0x38
                                    834 ;	lcd.c:192: E = 1;
      000260 D2 B2            [12]  835 	setb	_P3_2
                                    836 ;	lcd.c:193: E = 0;
      000262 C2 B2            [12]  837 	clr	_P3_2
                                    838 ;	lcd.c:194: delay();
      000264 02 02 BD         [24]  839 	ljmp	_delay
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'clearDisplay'
                                    842 ;------------------------------------------------------------
                                    843 ;	lcd.c:197: void clearDisplay(void) {
                                    844 ;	-----------------------------------------
                                    845 ;	 function clearDisplay
                                    846 ;	-----------------------------------------
      000267                        847 _clearDisplay:
                                    848 ;	lcd.c:198: RS = 0;
      000267 C2 B3            [12]  849 	clr	_P3_3
                                    850 ;	lcd.c:199: P1 = 0x01; // command to clear LCD and return the cursor to the home position
      000269 75 90 01         [24]  851 	mov	_P1,#0x01
                                    852 ;	lcd.c:200: E = 1;
      00026C D2 B2            [12]  853 	setb	_P3_2
                                    854 ;	lcd.c:201: E = 0;
      00026E C2 B2            [12]  855 	clr	_P3_2
                                    856 ;	lcd.c:202: big_delay(); // This operation needs a bigger delay
      000270 02 02 C6         [24]  857 	ljmp	_big_delay
                                    858 ;------------------------------------------------------------
                                    859 ;Allocation info for local variables in function 'setDdRamAddress'
                                    860 ;------------------------------------------------------------
                                    861 ;address                   Allocated to registers r7 
                                    862 ;------------------------------------------------------------
                                    863 ;	lcd.c:205: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
                                    864 ;	-----------------------------------------
                                    865 ;	 function setDdRamAddress
                                    866 ;	-----------------------------------------
      000273                        867 _setDdRamAddress:
      000273 AF 82            [24]  868 	mov	r7,dpl
                                    869 ;	lcd.c:206: RS = 0;
      000275 C2 B3            [12]  870 	clr	_P3_3
                                    871 ;	lcd.c:207: P1 = address | 0x80;  // set the MSB to detect that this is an address
      000277 74 80            [12]  872 	mov	a,#0x80
      000279 4F               [12]  873 	orl	a,r7
      00027A F5 90            [12]  874 	mov	_P1,a
                                    875 ;	lcd.c:208: E = 1;
      00027C D2 B2            [12]  876 	setb	_P3_2
                                    877 ;	lcd.c:209: E = 0;
      00027E C2 B2            [12]  878 	clr	_P3_2
                                    879 ;	lcd.c:210: delay();
      000280 02 02 BD         [24]  880 	ljmp	_delay
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'sendChar'
                                    883 ;------------------------------------------------------------
                                    884 ;c                         Allocated to registers r7 
                                    885 ;------------------------------------------------------------
                                    886 ;	lcd.c:215: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
                                    887 ;	-----------------------------------------
                                    888 ;	 function sendChar
                                    889 ;	-----------------------------------------
      000283                        890 _sendChar:
      000283 AF 82            [24]  891 	mov	r7,dpl
                                    892 ;	lcd.c:216: RS = 1;
      000285 D2 B3            [12]  893 	setb	_P3_3
                                    894 ;	lcd.c:217: P1 = c;
      000287 8F 90            [24]  895 	mov	_P1,r7
                                    896 ;	lcd.c:218: E = 1;
      000289 D2 B2            [12]  897 	setb	_P3_2
                                    898 ;	lcd.c:219: E = 0;
      00028B C2 B2            [12]  899 	clr	_P3_2
                                    900 ;	lcd.c:220: delay();
      00028D 02 02 BD         [24]  901 	ljmp	_delay
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'sendString'
                                    904 ;------------------------------------------------------------
                                    905 ;str                       Allocated to registers 
                                    906 ;c                         Allocated to registers r3 
                                    907 ;------------------------------------------------------------
                                    908 ;	lcd.c:223: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
                                    909 ;	-----------------------------------------
                                    910 ;	 function sendString
                                    911 ;	-----------------------------------------
      000290                        912 _sendString:
      000290 AD 82            [24]  913 	mov	r5,dpl
      000292 AE 83            [24]  914 	mov	r6,dph
      000294 AF F0            [24]  915 	mov	r7,b
                                    916 ;	lcd.c:225: while (c = *str++) {
      000296                        917 00101$:
      000296 8D 82            [24]  918 	mov	dpl,r5
      000298 8E 83            [24]  919 	mov	dph,r6
      00029A 8F F0            [24]  920 	mov	b,r7
      00029C 12 03 9F         [24]  921 	lcall	__gptrget
      00029F FC               [12]  922 	mov	r4,a
      0002A0 A3               [24]  923 	inc	dptr
      0002A1 AD 82            [24]  924 	mov	r5,dpl
      0002A3 AE 83            [24]  925 	mov	r6,dph
      0002A5 EC               [12]  926 	mov	a,r4
      0002A6 FB               [12]  927 	mov	r3,a
      0002A7 60 13            [24]  928 	jz	00104$
                                    929 ;	lcd.c:226: sendChar(c);
      0002A9 8B 82            [24]  930 	mov	dpl,r3
      0002AB C0 07            [24]  931 	push	ar7
      0002AD C0 06            [24]  932 	push	ar6
      0002AF C0 05            [24]  933 	push	ar5
      0002B1 12 02 83         [24]  934 	lcall	_sendChar
      0002B4 D0 05            [24]  935 	pop	ar5
      0002B6 D0 06            [24]  936 	pop	ar6
      0002B8 D0 07            [24]  937 	pop	ar7
      0002BA 80 DA            [24]  938 	sjmp	00101$
      0002BC                        939 00104$:
      0002BC 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'delay'
                                    943 ;------------------------------------------------------------
                                    944 ;c                         Allocated to registers r7 
                                    945 ;------------------------------------------------------------
                                    946 ;	lcd.c:230: void delay(void) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function delay
                                    949 ;	-----------------------------------------
      0002BD                        950 _delay:
                                    951 ;	lcd.c:232: for (c = 0; c < 50; c++);
      0002BD 7F 32            [12]  952 	mov	r7,#0x32
      0002BF                        953 00104$:
      0002BF EF               [12]  954 	mov	a,r7
      0002C0 14               [12]  955 	dec	a
      0002C1 FE               [12]  956 	mov	r6,a
      0002C2 FF               [12]  957 	mov	r7,a
      0002C3 70 FA            [24]  958 	jnz	00104$
      0002C5 22               [24]  959 	ret
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'big_delay'
                                    962 ;------------------------------------------------------------
                                    963 ;c                         Allocated to registers r7 
                                    964 ;------------------------------------------------------------
                                    965 ;	lcd.c:235: void big_delay(void) {
                                    966 ;	-----------------------------------------
                                    967 ;	 function big_delay
                                    968 ;	-----------------------------------------
      0002C6                        969 _big_delay:
                                    970 ;	lcd.c:237: for (c = 0; c < 255; c++);
      0002C6 7F FF            [12]  971 	mov	r7,#0xFF
      0002C8                        972 00104$:
      0002C8 8F 06            [24]  973 	mov	ar6,r7
      0002CA 1E               [12]  974 	dec	r6
      0002CB EE               [12]  975 	mov	a,r6
      0002CC FF               [12]  976 	mov	r7,a
      0002CD 70 F9            [24]  977 	jnz	00104$
      0002CF 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'getDigit'
                                    981 ;------------------------------------------------------------
                                    982 ;num                       Allocated to registers r6 r7 
                                    983 ;------------------------------------------------------------
                                    984 ;	lcd.c:240: unsigned char getDigit(unsigned int num){
                                    985 ;	-----------------------------------------
                                    986 ;	 function getDigit
                                    987 ;	-----------------------------------------
      0002D0                        988 _getDigit:
      0002D0 AE 82            [24]  989 	mov	r6,dpl
      0002D2 AF 83            [24]  990 	mov	r7,dph
                                    991 ;	lcd.c:241: if (num < 10)  	 return 1;
      0002D4 C3               [12]  992 	clr	c
      0002D5 EE               [12]  993 	mov	a,r6
      0002D6 94 0A            [12]  994 	subb	a,#0x0A
      0002D8 EF               [12]  995 	mov	a,r7
      0002D9 94 00            [12]  996 	subb	a,#0x00
      0002DB 50 04            [24]  997 	jnc	00102$
      0002DD 75 82 01         [24]  998 	mov	dpl,#0x01
      0002E0 22               [24]  999 	ret
      0002E1                       1000 00102$:
                                   1001 ;	lcd.c:242: if (num < 100) 	 return 2;
      0002E1 C3               [12] 1002 	clr	c
      0002E2 EE               [12] 1003 	mov	a,r6
      0002E3 94 64            [12] 1004 	subb	a,#0x64
      0002E5 EF               [12] 1005 	mov	a,r7
      0002E6 94 00            [12] 1006 	subb	a,#0x00
      0002E8 50 04            [24] 1007 	jnc	00104$
      0002EA 75 82 02         [24] 1008 	mov	dpl,#0x02
      0002ED 22               [24] 1009 	ret
      0002EE                       1010 00104$:
                                   1011 ;	lcd.c:243: if (num < 1000)  return 3;
      0002EE C3               [12] 1012 	clr	c
      0002EF EE               [12] 1013 	mov	a,r6
      0002F0 94 E8            [12] 1014 	subb	a,#0xE8
      0002F2 EF               [12] 1015 	mov	a,r7
      0002F3 94 03            [12] 1016 	subb	a,#0x03
      0002F5 50 04            [24] 1017 	jnc	00106$
      0002F7 75 82 03         [24] 1018 	mov	dpl,#0x03
      0002FA 22               [24] 1019 	ret
      0002FB                       1020 00106$:
                                   1021 ;	lcd.c:244: if (num < 10000) return 4;
      0002FB C3               [12] 1022 	clr	c
      0002FC EE               [12] 1023 	mov	a,r6
      0002FD 94 10            [12] 1024 	subb	a,#0x10
      0002FF EF               [12] 1025 	mov	a,r7
      000300 94 27            [12] 1026 	subb	a,#0x27
      000302 50 04            [24] 1027 	jnc	00108$
      000304 75 82 04         [24] 1028 	mov	dpl,#0x04
      000307 22               [24] 1029 	ret
      000308                       1030 00108$:
                                   1031 ;	lcd.c:245: else 			 return 0;
      000308 75 82 00         [24] 1032 	mov	dpl,#0x00
      00030B 22               [24] 1033 	ret
                                   1034 	.area CSEG    (CODE)
                                   1035 	.area CONST   (CODE)
                                   1036 	.area XINIT   (CODE)
                                   1037 	.area CABS    (ABS,CODE)
