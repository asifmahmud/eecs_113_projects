                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Thu May 19 21:23:59 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module lcd
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
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
                                    114 	.globl _sendValue_PARM_2
                                    115 	.globl _clock_setup_PARM_2
                                    116 	.globl _YEAR
                                    117 	.globl _MONTH
                                    118 	.globl _DAY
                                    119 	.globl _HOUR
                                    120 	.globl _MIN
                                    121 	.globl _SEC
                                    122 	.globl _timer0_isr
                                    123 	.globl _int0_isr
                                    124 	.globl _int1_isr
                                    125 	.globl _clock_setup
                                    126 	.globl _sendValue
                                    127 	.globl _returnHome
                                    128 	.globl _entryModeSet
                                    129 	.globl _displayOnOffControl
                                    130 	.globl _cursorOrDisplayShift
                                    131 	.globl _functionSet
                                    132 	.globl _clearDisplay
                                    133 	.globl _setDdRamAddress
                                    134 	.globl _sendChar
                                    135 	.globl _sendString
                                    136 	.globl _delay
                                    137 	.globl _big_delay
                                    138 	.globl _timer_delay
                                    139 	.globl __sdcc_gsinit_startup
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                                    166 ;--------------------------------------------------------
                                    167 ; special function bits
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           000088   179 _IT0	=	0x0088
                           000089   180 _IE0	=	0x0089
                           00008A   181 _IT1	=	0x008a
                           00008B   182 _IE1	=	0x008b
                           00008C   183 _TR0	=	0x008c
                           00008D   184 _TF0	=	0x008d
                           00008E   185 _TR1	=	0x008e
                           00008F   186 _TF1	=	0x008f
                           000090   187 _P1_0	=	0x0090
                           000091   188 _P1_1	=	0x0091
                           000092   189 _P1_2	=	0x0092
                           000093   190 _P1_3	=	0x0093
                           000094   191 _P1_4	=	0x0094
                           000095   192 _P1_5	=	0x0095
                           000096   193 _P1_6	=	0x0096
                           000097   194 _P1_7	=	0x0097
                           000098   195 _RI	=	0x0098
                           000099   196 _TI	=	0x0099
                           00009A   197 _RB8	=	0x009a
                           00009B   198 _TB8	=	0x009b
                           00009C   199 _REN	=	0x009c
                           00009D   200 _SM2	=	0x009d
                           00009E   201 _SM1	=	0x009e
                           00009F   202 _SM0	=	0x009f
                           0000A0   203 _P2_0	=	0x00a0
                           0000A1   204 _P2_1	=	0x00a1
                           0000A2   205 _P2_2	=	0x00a2
                           0000A3   206 _P2_3	=	0x00a3
                           0000A4   207 _P2_4	=	0x00a4
                           0000A5   208 _P2_5	=	0x00a5
                           0000A6   209 _P2_6	=	0x00a6
                           0000A7   210 _P2_7	=	0x00a7
                           0000A8   211 _EX0	=	0x00a8
                           0000A9   212 _ET0	=	0x00a9
                           0000AA   213 _EX1	=	0x00aa
                           0000AB   214 _ET1	=	0x00ab
                           0000AC   215 _ES	=	0x00ac
                           0000AF   216 _EA	=	0x00af
                           0000B0   217 _P3_0	=	0x00b0
                           0000B1   218 _P3_1	=	0x00b1
                           0000B2   219 _P3_2	=	0x00b2
                           0000B3   220 _P3_3	=	0x00b3
                           0000B4   221 _P3_4	=	0x00b4
                           0000B5   222 _P3_5	=	0x00b5
                           0000B6   223 _P3_6	=	0x00b6
                           0000B7   224 _P3_7	=	0x00b7
                           0000B0   225 _RXD	=	0x00b0
                           0000B1   226 _TXD	=	0x00b1
                           0000B2   227 _INT0	=	0x00b2
                           0000B3   228 _INT1	=	0x00b3
                           0000B4   229 _T0	=	0x00b4
                           0000B5   230 _T1	=	0x00b5
                           0000B6   231 _WR	=	0x00b6
                           0000B7   232 _RD	=	0x00b7
                           0000B8   233 _PX0	=	0x00b8
                           0000B9   234 _PT0	=	0x00b9
                           0000BA   235 _PX1	=	0x00ba
                           0000BB   236 _PT1	=	0x00bb
                           0000BC   237 _PS	=	0x00bc
                           0000D0   238 _P	=	0x00d0
                           0000D1   239 _F1	=	0x00d1
                           0000D2   240 _OV	=	0x00d2
                           0000D3   241 _RS0	=	0x00d3
                           0000D4   242 _RS1	=	0x00d4
                           0000D5   243 _F0	=	0x00d5
                           0000D6   244 _AC	=	0x00d6
                           0000D7   245 _CY	=	0x00d7
                                    246 ;--------------------------------------------------------
                                    247 ; overlayable register banks
                                    248 ;--------------------------------------------------------
                                    249 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        250 	.ds 8
                                    251 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        252 	.ds 8
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable bit register bank
                                    255 ;--------------------------------------------------------
                                    256 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        257 bits:
      000021                        258 	.ds 1
                           008000   259 	b0 = bits[0]
                           008100   260 	b1 = bits[1]
                           008200   261 	b2 = bits[2]
                           008300   262 	b3 = bits[3]
                           008400   263 	b4 = bits[4]
                           008500   264 	b5 = bits[5]
                           008600   265 	b6 = bits[6]
                           008700   266 	b7 = bits[7]
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
      000030                        271 _SEC::
      000030                        272 	.ds 2
      000032                        273 _MIN::
      000032                        274 	.ds 2
      000034                        275 _HOUR::
      000034                        276 	.ds 2
      000036                        277 _DAY::
      000036                        278 	.ds 2
      000038                        279 _MONTH::
      000038                        280 	.ds 2
      00003A                        281 _YEAR::
      00003A                        282 	.ds 2
      00003C                        283 _clock_setup_PARM_2:
      00003C                        284 	.ds 2
      00003E                        285 _clock_setup_line1_1_38:
      00003E                        286 	.ds 2
      000040                        287 _clock_setup_keypad_1_39:
      000040                        288 	.ds 12
      00004C                        289 _clock_setup_gotkey_1_39:
      00004C                        290 	.ds 1
      00004D                        291 _clock_setup_gotkey_pressed_1_39:
      00004D                        292 	.ds 1
      00004E                        293 _clock_setup_current_addr1_1_39:
      00004E                        294 	.ds 1
      00004F                        295 _clock_setup_current_addr2_1_39:
      00004F                        296 	.ds 1
      000050                        297 _clock_setup_sloc1_1_0:
      000050                        298 	.ds 2
      000052                        299 _sendValue_PARM_2:
      000052                        300 	.ds 2
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable items in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 	.area	OSEG    (OVR,DATA)
                                    306 	.area	OSEG    (OVR,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000056                        311 __start__stack:
      000056                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
      000000                        327 _clock_setup_sloc0_1_0:
      000000                        328 	.ds 1
      000001                        329 _displayOnOffControl_PARM_1:
      000001                        330 	.ds 1
      000002                        331 _displayOnOffControl_PARM_2:
      000002                        332 	.ds 1
      000003                        333 _displayOnOffControl_PARM_3:
      000003                        334 	.ds 1
      000004                        335 _cursorOrDisplayShift_PARM_1:
      000004                        336 	.ds 1
      000005                        337 _cursorOrDisplayShift_PARM_2:
      000005                        338 	.ds 1
                                    339 ;--------------------------------------------------------
                                    340 ; paged external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area PSEG    (PAG,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XSEG    (XDATA)
                                    347 ;--------------------------------------------------------
                                    348 ; absolute external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XABS    (ABS,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external initialized ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XISEG   (XDATA)
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT0 (CODE)
                                    357 	.area GSINIT1 (CODE)
                                    358 	.area GSINIT2 (CODE)
                                    359 	.area GSINIT3 (CODE)
                                    360 	.area GSINIT4 (CODE)
                                    361 	.area GSINIT5 (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area CSEG    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; interrupt vector 
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
      000000                        369 __interrupt_vect:
      000000 02 0B 39         [24]  370 	ljmp	__sdcc_gsinit_startup
      000003 02 03 46         [24]  371 	ljmp	_int0_isr
      000006                        372 	.ds	5
      00000B 02 00 B6         [24]  373 	ljmp	_timer0_isr
      00000E                        374 	.ds	5
      000013 02 03 9F         [24]  375 	ljmp	_int1_isr
                                    376 ;--------------------------------------------------------
                                    377 ; global & static initialisations
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.area GSFINAL (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.globl __sdcc_gsinit_startup
                                    384 	.globl __sdcc_program_startup
                                    385 	.globl __start__stack
                                    386 	.globl __mcs51_genXINIT
                                    387 	.globl __mcs51_genXRAMCLEAR
                                    388 	.globl __mcs51_genRAMCLEAR
                                    389 	.area GSFINAL (CODE)
      000065 02 00 16         [24]  390 	ljmp	__sdcc_program_startup
                                    391 ;--------------------------------------------------------
                                    392 ; Home
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
                                    395 	.area HOME    (CODE)
      000016                        396 __sdcc_program_startup:
      000016 02 00 68         [24]  397 	ljmp	_main
                                    398 ;	return from main will return to caller
                                    399 ;--------------------------------------------------------
                                    400 ; code
                                    401 ;--------------------------------------------------------
                                    402 	.area CSEG    (CODE)
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'main'
                                    405 ;------------------------------------------------------------
                                    406 ;	lcd.c:53: void main(void) {
                                    407 ;	-----------------------------------------
                                    408 ;	 function main
                                    409 ;	-----------------------------------------
      000068                        410 _main:
                           000007   411 	ar7 = 0x07
                           000006   412 	ar6 = 0x06
                           000005   413 	ar5 = 0x05
                           000004   414 	ar4 = 0x04
                           000003   415 	ar3 = 0x03
                           000002   416 	ar2 = 0x02
                           000001   417 	ar1 = 0x01
                           000000   418 	ar0 = 0x00
                                    419 ;	lcd.c:54: functionSet();
      000068 12 0A A9         [24]  420 	lcall	_functionSet
                                    421 ;	lcd.c:55: entryModeSet(); // increment and no shift
      00006B 12 0A 63         [24]  422 	lcall	_entryModeSet
                                    423 ;	lcd.c:56: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      00006E D2 01            [12]  424 	setb	_displayOnOffControl_PARM_1
      000070 D2 02            [12]  425 	setb	_displayOnOffControl_PARM_2
      000072 D2 03            [12]  426 	setb	_displayOnOffControl_PARM_3
      000074 12 0A 6F         [24]  427 	lcall	_displayOnOffControl
                                    428 ;	lcd.c:57: sendString("00:00:00");
      000077 90 0B EE         [24]  429 	mov	dptr,#___str_0
      00007A 75 F0 80         [24]  430 	mov	b,#0x80
      00007D 12 0A DE         [24]  431 	lcall	_sendString
                                    432 ;	lcd.c:58: setDdRamAddress(0x40); // set address to start of second line
      000080 75 82 40         [24]  433 	mov	dpl,#0x40
      000083 12 0A C1         [24]  434 	lcall	_setDdRamAddress
                                    435 ;	lcd.c:59: sendString("01-01-00");
      000086 90 0B F7         [24]  436 	mov	dptr,#___str_1
      000089 75 F0 80         [24]  437 	mov	b,#0x80
      00008C 12 0A DE         [24]  438 	lcall	_sendString
                                    439 ;	lcd.c:61: IT0 = 1;	// edge trigger int0
      00008F D2 88            [12]  440 	setb	_IT0
                                    441 ;	lcd.c:62: IT1 = 1;	// edge trigger int1
      000091 D2 8A            [12]  442 	setb	_IT1
                                    443 ;	lcd.c:63: IE = 0x87;  //enable timer0, int0, int1 interrupt
      000093 75 A8 87         [24]  444 	mov	_IE,#0x87
                                    445 ;	lcd.c:65: SEC		= 0;
      000096 E4               [12]  446 	clr	a
      000097 F5 30            [12]  447 	mov	_SEC,a
      000099 F5 31            [12]  448 	mov	(_SEC + 1),a
                                    449 ;	lcd.c:66: MIN		= 0;
      00009B F5 32            [12]  450 	mov	_MIN,a
      00009D F5 33            [12]  451 	mov	(_MIN + 1),a
                                    452 ;	lcd.c:67: HOUR	= 0;
      00009F F5 34            [12]  453 	mov	_HOUR,a
      0000A1 F5 35            [12]  454 	mov	(_HOUR + 1),a
                                    455 ;	lcd.c:68: DAY		= 1;
      0000A3 75 36 01         [24]  456 	mov	_DAY,#0x01
                                    457 ;	1-genFromRTrack replaced	mov	(_DAY + 1),#0x00
      0000A6 F5 37            [12]  458 	mov	(_DAY + 1),a
                                    459 ;	lcd.c:69: MONTH	= 1;
      0000A8 75 38 01         [24]  460 	mov	_MONTH,#0x01
                                    461 ;	1-genFromRTrack replaced	mov	(_MONTH + 1),#0x00
      0000AB F5 39            [12]  462 	mov	(_MONTH + 1),a
                                    463 ;	lcd.c:70: YEAR	= 0;
      0000AD F5 3A            [12]  464 	mov	_YEAR,a
      0000AF F5 3B            [12]  465 	mov	(_YEAR + 1),a
                                    466 ;	lcd.c:72: while (1) timer_delay();	// start the clock
      0000B1                        467 00102$:
      0000B1 12 0B 1E         [24]  468 	lcall	_timer_delay
      0000B4 80 FB            [24]  469 	sjmp	00102$
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'timer0_isr'
                                    472 ;------------------------------------------------------------
                                    473 ;	lcd.c:79: void timer0_isr(void) __interrupt(1) __using(1){
                                    474 ;	-----------------------------------------
                                    475 ;	 function timer0_isr
                                    476 ;	-----------------------------------------
      0000B6                        477 _timer0_isr:
                           00000F   478 	ar7 = 0x0F
                           00000E   479 	ar6 = 0x0E
                           00000D   480 	ar5 = 0x0D
                           00000C   481 	ar4 = 0x0C
                           00000B   482 	ar3 = 0x0B
                           00000A   483 	ar2 = 0x0A
                           000009   484 	ar1 = 0x09
                           000008   485 	ar0 = 0x08
      0000B6 C0 21            [24]  486 	push	bits
      0000B8 C0 E0            [24]  487 	push	acc
      0000BA C0 F0            [24]  488 	push	b
      0000BC C0 82            [24]  489 	push	dpl
      0000BE C0 83            [24]  490 	push	dph
      0000C0 C0 07            [24]  491 	push	(0+7)
      0000C2 C0 06            [24]  492 	push	(0+6)
      0000C4 C0 05            [24]  493 	push	(0+5)
      0000C6 C0 04            [24]  494 	push	(0+4)
      0000C8 C0 03            [24]  495 	push	(0+3)
      0000CA C0 02            [24]  496 	push	(0+2)
      0000CC C0 01            [24]  497 	push	(0+1)
      0000CE C0 00            [24]  498 	push	(0+0)
      0000D0 C0 D0            [24]  499 	push	psw
      0000D2 75 D0 08         [24]  500 	mov	psw,#0x08
                                    501 ;	lcd.c:105: if (SEC < 59){
      0000D5 C3               [12]  502 	clr	c
      0000D6 E5 30            [12]  503 	mov	a,_SEC
      0000D8 94 3B            [12]  504 	subb	a,#0x3B
      0000DA E5 31            [12]  505 	mov	a,(_SEC + 1)
      0000DC 94 00            [12]  506 	subb	a,#0x00
      0000DE 50 1D            [24]  507 	jnc	00133$
                                    508 ;	lcd.c:106: SEC++;
      0000E0 05 30            [12]  509 	inc	_SEC
      0000E2 E4               [12]  510 	clr	a
      0000E3 B5 30 02         [24]  511 	cjne	a,_SEC,00186$
      0000E6 05 31            [12]  512 	inc	(_SEC + 1)
      0000E8                        513 00186$:
                                    514 ;	lcd.c:107: sendValue(0x06, SEC);
      0000E8 85 30 52         [24]  515 	mov	_sendValue_PARM_2,_SEC
      0000EB 85 31 53         [24]  516 	mov	(_sendValue_PARM_2 + 1),(_SEC + 1)
      0000EE 75 82 06         [24]  517 	mov	dpl,#0x06
      0000F1 75 D0 00         [24]  518 	mov	psw,#0x00
      0000F4 12 0A 22         [24]  519 	lcall	_sendValue
      0000F7 75 D0 08         [24]  520 	mov	psw,#0x08
                                    521 ;	lcd.c:108: return;
      0000FA 02 03 29         [24]  522 	ljmp	00135$
      0000FD                        523 00133$:
                                    524 ;	lcd.c:111: else if (SEC == 59){
      0000FD 74 3B            [12]  525 	mov	a,#0x3B
      0000FF B5 30 06         [24]  526 	cjne	a,_SEC,00187$
      000102 E4               [12]  527 	clr	a
      000103 B5 31 02         [24]  528 	cjne	a,(_SEC + 1),00187$
      000106 80 03            [24]  529 	sjmp	00188$
      000108                        530 00187$:
      000108 02 03 29         [24]  531 	ljmp	00135$
      00010B                        532 00188$:
                                    533 ;	lcd.c:112: SEC = 0;
      00010B E4               [12]  534 	clr	a
      00010C F5 30            [12]  535 	mov	_SEC,a
      00010E F5 31            [12]  536 	mov	(_SEC + 1),a
                                    537 ;	lcd.c:113: sendValue(0x06, SEC);
      000110 F5 52            [12]  538 	mov	_sendValue_PARM_2,a
      000112 F5 53            [12]  539 	mov	(_sendValue_PARM_2 + 1),a
      000114 75 82 06         [24]  540 	mov	dpl,#0x06
      000117 75 D0 00         [24]  541 	mov	psw,#0x00
      00011A 12 0A 22         [24]  542 	lcall	_sendValue
      00011D 75 D0 08         [24]  543 	mov	psw,#0x08
                                    544 ;	lcd.c:115: if (MIN < 59){
      000120 C3               [12]  545 	clr	c
      000121 E5 32            [12]  546 	mov	a,_MIN
      000123 94 3B            [12]  547 	subb	a,#0x3B
      000125 E5 33            [12]  548 	mov	a,(_MIN + 1)
      000127 94 00            [12]  549 	subb	a,#0x00
      000129 50 1D            [24]  550 	jnc	00128$
                                    551 ;	lcd.c:116: MIN++;
      00012B 05 32            [12]  552 	inc	_MIN
      00012D E4               [12]  553 	clr	a
      00012E B5 32 02         [24]  554 	cjne	a,_MIN,00190$
      000131 05 33            [12]  555 	inc	(_MIN + 1)
      000133                        556 00190$:
                                    557 ;	lcd.c:117: sendValue(0x03, MIN);
      000133 85 32 52         [24]  558 	mov	_sendValue_PARM_2,_MIN
      000136 85 33 53         [24]  559 	mov	(_sendValue_PARM_2 + 1),(_MIN + 1)
      000139 75 82 03         [24]  560 	mov	dpl,#0x03
      00013C 75 D0 00         [24]  561 	mov	psw,#0x00
      00013F 12 0A 22         [24]  562 	lcall	_sendValue
      000142 75 D0 08         [24]  563 	mov	psw,#0x08
                                    564 ;	lcd.c:118: return;
      000145 02 03 29         [24]  565 	ljmp	00135$
      000148                        566 00128$:
                                    567 ;	lcd.c:121: else if (MIN == 59){
      000148 74 3B            [12]  568 	mov	a,#0x3B
      00014A B5 32 06         [24]  569 	cjne	a,_MIN,00191$
      00014D E4               [12]  570 	clr	a
      00014E B5 33 02         [24]  571 	cjne	a,(_MIN + 1),00191$
      000151 80 03            [24]  572 	sjmp	00192$
      000153                        573 00191$:
      000153 02 03 29         [24]  574 	ljmp	00135$
      000156                        575 00192$:
                                    576 ;	lcd.c:122: MIN = 0;
      000156 E4               [12]  577 	clr	a
      000157 F5 32            [12]  578 	mov	_MIN,a
      000159 F5 33            [12]  579 	mov	(_MIN + 1),a
                                    580 ;	lcd.c:123: sendValue(0x03, MIN);
      00015B F5 52            [12]  581 	mov	_sendValue_PARM_2,a
      00015D F5 53            [12]  582 	mov	(_sendValue_PARM_2 + 1),a
      00015F 75 82 03         [24]  583 	mov	dpl,#0x03
      000162 75 D0 00         [24]  584 	mov	psw,#0x00
      000165 12 0A 22         [24]  585 	lcall	_sendValue
      000168 75 D0 08         [24]  586 	mov	psw,#0x08
                                    587 ;	lcd.c:125: if (HOUR < 23){
      00016B C3               [12]  588 	clr	c
      00016C E5 34            [12]  589 	mov	a,_HOUR
      00016E 94 17            [12]  590 	subb	a,#0x17
      000170 E5 35            [12]  591 	mov	a,(_HOUR + 1)
      000172 94 00            [12]  592 	subb	a,#0x00
      000174 50 1D            [24]  593 	jnc	00123$
                                    594 ;	lcd.c:126: HOUR++;
      000176 05 34            [12]  595 	inc	_HOUR
      000178 E4               [12]  596 	clr	a
      000179 B5 34 02         [24]  597 	cjne	a,_HOUR,00194$
      00017C 05 35            [12]  598 	inc	(_HOUR + 1)
      00017E                        599 00194$:
                                    600 ;	lcd.c:127: sendValue(0x00, HOUR);
      00017E 85 34 52         [24]  601 	mov	_sendValue_PARM_2,_HOUR
      000181 85 35 53         [24]  602 	mov	(_sendValue_PARM_2 + 1),(_HOUR + 1)
      000184 75 82 00         [24]  603 	mov	dpl,#0x00
      000187 75 D0 00         [24]  604 	mov	psw,#0x00
      00018A 12 0A 22         [24]  605 	lcall	_sendValue
      00018D 75 D0 08         [24]  606 	mov	psw,#0x08
                                    607 ;	lcd.c:128: return;
      000190 02 03 29         [24]  608 	ljmp	00135$
      000193                        609 00123$:
                                    610 ;	lcd.c:131: else if(HOUR == 23){
      000193 74 17            [12]  611 	mov	a,#0x17
      000195 B5 34 06         [24]  612 	cjne	a,_HOUR,00195$
      000198 E4               [12]  613 	clr	a
      000199 B5 35 02         [24]  614 	cjne	a,(_HOUR + 1),00195$
      00019C 80 03            [24]  615 	sjmp	00196$
      00019E                        616 00195$:
      00019E 02 03 29         [24]  617 	ljmp	00135$
      0001A1                        618 00196$:
                                    619 ;	lcd.c:132: HOUR = 0;
      0001A1 E4               [12]  620 	clr	a
      0001A2 F5 34            [12]  621 	mov	_HOUR,a
      0001A4 F5 35            [12]  622 	mov	(_HOUR + 1),a
                                    623 ;	lcd.c:133: sendValue(0x00, HOUR);
      0001A6 F5 52            [12]  624 	mov	_sendValue_PARM_2,a
      0001A8 F5 53            [12]  625 	mov	(_sendValue_PARM_2 + 1),a
      0001AA 75 82 00         [24]  626 	mov	dpl,#0x00
      0001AD 75 D0 00         [24]  627 	mov	psw,#0x00
      0001B0 12 0A 22         [24]  628 	lcall	_sendValue
      0001B3 75 D0 08         [24]  629 	mov	psw,#0x08
                                    630 ;	lcd.c:135: if (DAY < 28){
      0001B6 C3               [12]  631 	clr	c
      0001B7 E5 36            [12]  632 	mov	a,_DAY
      0001B9 94 1C            [12]  633 	subb	a,#0x1C
      0001BB E5 37            [12]  634 	mov	a,(_DAY + 1)
      0001BD 94 00            [12]  635 	subb	a,#0x00
      0001BF 50 1D            [24]  636 	jnc	00102$
                                    637 ;	lcd.c:136: DAY++;
      0001C1 05 36            [12]  638 	inc	_DAY
      0001C3 E4               [12]  639 	clr	a
      0001C4 B5 36 02         [24]  640 	cjne	a,_DAY,00198$
      0001C7 05 37            [12]  641 	inc	(_DAY + 1)
      0001C9                        642 00198$:
                                    643 ;	lcd.c:137: sendValue(0x40, DAY);
      0001C9 85 36 52         [24]  644 	mov	_sendValue_PARM_2,_DAY
      0001CC 85 37 53         [24]  645 	mov	(_sendValue_PARM_2 + 1),(_DAY + 1)
      0001CF 75 82 40         [24]  646 	mov	dpl,#0x40
      0001D2 75 D0 00         [24]  647 	mov	psw,#0x00
      0001D5 12 0A 22         [24]  648 	lcall	_sendValue
      0001D8 75 D0 08         [24]  649 	mov	psw,#0x08
                                    650 ;	lcd.c:138: return;
      0001DB 02 03 29         [24]  651 	ljmp	00135$
      0001DE                        652 00102$:
                                    653 ;	lcd.c:141: if (DAY == 28 && MONTH == 2){
      0001DE 74 1C            [12]  654 	mov	a,#0x1C
      0001E0 B5 36 06         [24]  655 	cjne	a,_DAY,00199$
      0001E3 E4               [12]  656 	clr	a
      0001E4 B5 37 02         [24]  657 	cjne	a,(_DAY + 1),00199$
      0001E7 80 02            [24]  658 	sjmp	00200$
      0001E9                        659 00199$:
      0001E9 80 42            [24]  660 	sjmp	00104$
      0001EB                        661 00200$:
      0001EB 74 02            [12]  662 	mov	a,#0x02
      0001ED B5 38 06         [24]  663 	cjne	a,_MONTH,00201$
      0001F0 E4               [12]  664 	clr	a
      0001F1 B5 39 02         [24]  665 	cjne	a,(_MONTH + 1),00201$
      0001F4 80 02            [24]  666 	sjmp	00202$
      0001F6                        667 00201$:
      0001F6 80 35            [24]  668 	sjmp	00104$
      0001F8                        669 00202$:
                                    670 ;	lcd.c:142: DAY = 1;
      0001F8 75 36 01         [24]  671 	mov	_DAY,#0x01
      0001FB 75 37 00         [24]  672 	mov	(_DAY + 1),#0x00
                                    673 ;	lcd.c:143: sendValue(0x40, DAY);
      0001FE 75 52 01         [24]  674 	mov	_sendValue_PARM_2,#0x01
      000201 75 53 00         [24]  675 	mov	(_sendValue_PARM_2 + 1),#0x00
      000204 75 82 40         [24]  676 	mov	dpl,#0x40
      000207 75 D0 00         [24]  677 	mov	psw,#0x00
      00020A 12 0A 22         [24]  678 	lcall	_sendValue
      00020D 75 D0 08         [24]  679 	mov	psw,#0x08
                                    680 ;	lcd.c:144: MONTH++;
      000210 05 38            [12]  681 	inc	_MONTH
      000212 E4               [12]  682 	clr	a
      000213 B5 38 02         [24]  683 	cjne	a,_MONTH,00203$
      000216 05 39            [12]  684 	inc	(_MONTH + 1)
      000218                        685 00203$:
                                    686 ;	lcd.c:145: sendValue(0x43, MONTH);
      000218 85 38 52         [24]  687 	mov	_sendValue_PARM_2,_MONTH
      00021B 85 39 53         [24]  688 	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
      00021E 75 82 43         [24]  689 	mov	dpl,#0x43
      000221 75 D0 00         [24]  690 	mov	psw,#0x00
      000224 12 0A 22         [24]  691 	lcall	_sendValue
      000227 75 D0 08         [24]  692 	mov	psw,#0x08
                                    693 ;	lcd.c:146: return;
      00022A 02 03 29         [24]  694 	ljmp	00135$
      00022D                        695 00104$:
                                    696 ;	lcd.c:149: if (DAY == 30 && (MONTH == 4 || MONTH == 6 || MONTH == 9 || MONTH == 11)){
      00022D 74 1E            [12]  697 	mov	a,#0x1E
      00022F B5 36 06         [24]  698 	cjne	a,_DAY,00204$
      000232 E4               [12]  699 	clr	a
      000233 B5 37 02         [24]  700 	cjne	a,(_DAY + 1),00204$
      000236 80 02            [24]  701 	sjmp	00205$
      000238                        702 00204$:
      000238 80 63            [24]  703 	sjmp	00114$
      00023A                        704 00205$:
      00023A 74 04            [12]  705 	mov	a,#0x04
      00023C B5 38 06         [24]  706 	cjne	a,_MONTH,00206$
      00023F E4               [12]  707 	clr	a
      000240 B5 39 02         [24]  708 	cjne	a,(_MONTH + 1),00206$
      000243 80 23            [24]  709 	sjmp	00113$
      000245                        710 00206$:
      000245 74 06            [12]  711 	mov	a,#0x06
      000247 B5 38 06         [24]  712 	cjne	a,_MONTH,00207$
      00024A E4               [12]  713 	clr	a
      00024B B5 39 02         [24]  714 	cjne	a,(_MONTH + 1),00207$
      00024E 80 18            [24]  715 	sjmp	00113$
      000250                        716 00207$:
      000250 74 09            [12]  717 	mov	a,#0x09
      000252 B5 38 06         [24]  718 	cjne	a,_MONTH,00208$
      000255 E4               [12]  719 	clr	a
      000256 B5 39 02         [24]  720 	cjne	a,(_MONTH + 1),00208$
      000259 80 0D            [24]  721 	sjmp	00113$
      00025B                        722 00208$:
      00025B 74 0B            [12]  723 	mov	a,#0x0B
      00025D B5 38 06         [24]  724 	cjne	a,_MONTH,00209$
      000260 E4               [12]  725 	clr	a
      000261 B5 39 02         [24]  726 	cjne	a,(_MONTH + 1),00209$
      000264 80 02            [24]  727 	sjmp	00210$
      000266                        728 00209$:
      000266 80 35            [24]  729 	sjmp	00114$
      000268                        730 00210$:
      000268                        731 00113$:
                                    732 ;	lcd.c:150: DAY = 1;
      000268 75 36 01         [24]  733 	mov	_DAY,#0x01
      00026B 75 37 00         [24]  734 	mov	(_DAY + 1),#0x00
                                    735 ;	lcd.c:151: sendValue(0x40, DAY);
      00026E 75 52 01         [24]  736 	mov	_sendValue_PARM_2,#0x01
      000271 75 53 00         [24]  737 	mov	(_sendValue_PARM_2 + 1),#0x00
      000274 75 82 40         [24]  738 	mov	dpl,#0x40
      000277 75 D0 00         [24]  739 	mov	psw,#0x00
      00027A 12 0A 22         [24]  740 	lcall	_sendValue
      00027D 75 D0 08         [24]  741 	mov	psw,#0x08
                                    742 ;	lcd.c:152: MONTH++;
      000280 05 38            [12]  743 	inc	_MONTH
      000282 E4               [12]  744 	clr	a
      000283 B5 38 02         [24]  745 	cjne	a,_MONTH,00211$
      000286 05 39            [12]  746 	inc	(_MONTH + 1)
      000288                        747 00211$:
                                    748 ;	lcd.c:153: sendValue(0x43, MONTH);
      000288 85 38 52         [24]  749 	mov	_sendValue_PARM_2,_MONTH
      00028B 85 39 53         [24]  750 	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
      00028E 75 82 43         [24]  751 	mov	dpl,#0x43
      000291 75 D0 00         [24]  752 	mov	psw,#0x00
      000294 12 0A 22         [24]  753 	lcall	_sendValue
      000297 75 D0 08         [24]  754 	mov	psw,#0x08
                                    755 ;	lcd.c:154: return;
      00029A 02 03 29         [24]  756 	ljmp	00135$
      00029D                        757 00114$:
                                    758 ;	lcd.c:157: else if (DAY == 31){
      00029D 74 1F            [12]  759 	mov	a,#0x1F
      00029F B5 36 06         [24]  760 	cjne	a,_DAY,00212$
      0002A2 E4               [12]  761 	clr	a
      0002A3 B5 37 02         [24]  762 	cjne	a,(_DAY + 1),00212$
      0002A6 80 03            [24]  763 	sjmp	00213$
      0002A8                        764 00212$:
      0002A8 02 03 29         [24]  765 	ljmp	00135$
      0002AB                        766 00213$:
                                    767 ;	lcd.c:158: DAY = 1;
      0002AB 75 36 01         [24]  768 	mov	_DAY,#0x01
      0002AE 75 37 00         [24]  769 	mov	(_DAY + 1),#0x00
                                    770 ;	lcd.c:159: sendValue(0x40, DAY);
      0002B1 75 52 01         [24]  771 	mov	_sendValue_PARM_2,#0x01
      0002B4 75 53 00         [24]  772 	mov	(_sendValue_PARM_2 + 1),#0x00
      0002B7 75 82 40         [24]  773 	mov	dpl,#0x40
      0002BA 75 D0 00         [24]  774 	mov	psw,#0x00
      0002BD 12 0A 22         [24]  775 	lcall	_sendValue
      0002C0 75 D0 08         [24]  776 	mov	psw,#0x08
                                    777 ;	lcd.c:161: if (MONTH < 12){
      0002C3 C3               [12]  778 	clr	c
      0002C4 E5 38            [12]  779 	mov	a,_MONTH
      0002C6 94 0C            [12]  780 	subb	a,#0x0C
      0002C8 E5 39            [12]  781 	mov	a,(_MONTH + 1)
      0002CA 94 00            [12]  782 	subb	a,#0x00
      0002CC 50 1C            [24]  783 	jnc	00109$
                                    784 ;	lcd.c:162: MONTH++;
      0002CE 05 38            [12]  785 	inc	_MONTH
      0002D0 E4               [12]  786 	clr	a
      0002D1 B5 38 02         [24]  787 	cjne	a,_MONTH,00215$
      0002D4 05 39            [12]  788 	inc	(_MONTH + 1)
      0002D6                        789 00215$:
                                    790 ;	lcd.c:163: sendValue(0x43, MONTH);
      0002D6 85 38 52         [24]  791 	mov	_sendValue_PARM_2,_MONTH
      0002D9 85 39 53         [24]  792 	mov	(_sendValue_PARM_2 + 1),(_MONTH + 1)
      0002DC 75 82 43         [24]  793 	mov	dpl,#0x43
      0002DF 75 D0 00         [24]  794 	mov	psw,#0x00
      0002E2 12 0A 22         [24]  795 	lcall	_sendValue
      0002E5 75 D0 08         [24]  796 	mov	psw,#0x08
                                    797 ;	lcd.c:164: return;
      0002E8 80 3F            [24]  798 	sjmp	00135$
      0002EA                        799 00109$:
                                    800 ;	lcd.c:167: else if (MONTH == 12){
      0002EA 74 0C            [12]  801 	mov	a,#0x0C
      0002EC B5 38 06         [24]  802 	cjne	a,_MONTH,00216$
      0002EF E4               [12]  803 	clr	a
      0002F0 B5 39 02         [24]  804 	cjne	a,(_MONTH + 1),00216$
      0002F3 80 02            [24]  805 	sjmp	00217$
      0002F5                        806 00216$:
      0002F5 80 32            [24]  807 	sjmp	00135$
      0002F7                        808 00217$:
                                    809 ;	lcd.c:168: MONTH = 1;
      0002F7 75 38 01         [24]  810 	mov	_MONTH,#0x01
      0002FA 75 39 00         [24]  811 	mov	(_MONTH + 1),#0x00
                                    812 ;	lcd.c:169: sendValue(0x43, MONTH);
      0002FD 75 52 01         [24]  813 	mov	_sendValue_PARM_2,#0x01
      000300 75 53 00         [24]  814 	mov	(_sendValue_PARM_2 + 1),#0x00
      000303 75 82 43         [24]  815 	mov	dpl,#0x43
      000306 75 D0 00         [24]  816 	mov	psw,#0x00
      000309 12 0A 22         [24]  817 	lcall	_sendValue
      00030C 75 D0 08         [24]  818 	mov	psw,#0x08
                                    819 ;	lcd.c:171: YEAR++;
      00030F 05 3A            [12]  820 	inc	_YEAR
      000311 E4               [12]  821 	clr	a
      000312 B5 3A 02         [24]  822 	cjne	a,_YEAR,00218$
      000315 05 3B            [12]  823 	inc	(_YEAR + 1)
      000317                        824 00218$:
                                    825 ;	lcd.c:172: sendValue(0x46, YEAR);
      000317 85 3A 52         [24]  826 	mov	_sendValue_PARM_2,_YEAR
      00031A 85 3B 53         [24]  827 	mov	(_sendValue_PARM_2 + 1),(_YEAR + 1)
      00031D 75 82 46         [24]  828 	mov	dpl,#0x46
      000320 75 D0 00         [24]  829 	mov	psw,#0x00
      000323 12 0A 22         [24]  830 	lcall	_sendValue
      000326 75 D0 08         [24]  831 	mov	psw,#0x08
      000329                        832 00135$:
      000329 D0 D0            [24]  833 	pop	psw
      00032B D0 00            [24]  834 	pop	(0+0)
      00032D D0 01            [24]  835 	pop	(0+1)
      00032F D0 02            [24]  836 	pop	(0+2)
      000331 D0 03            [24]  837 	pop	(0+3)
      000333 D0 04            [24]  838 	pop	(0+4)
      000335 D0 05            [24]  839 	pop	(0+5)
      000337 D0 06            [24]  840 	pop	(0+6)
      000339 D0 07            [24]  841 	pop	(0+7)
      00033B D0 83            [24]  842 	pop	dph
      00033D D0 82            [24]  843 	pop	dpl
      00033F D0 F0            [24]  844 	pop	b
      000341 D0 E0            [24]  845 	pop	acc
      000343 D0 21            [24]  846 	pop	bits
      000345 32               [24]  847 	reti
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'int0_isr'
                                    850 ;------------------------------------------------------------
                                    851 ;	lcd.c:185: void int0_isr (void) __interrupt (0) __using (1){
                                    852 ;	-----------------------------------------
                                    853 ;	 function int0_isr
                                    854 ;	-----------------------------------------
      000346                        855 _int0_isr:
      000346 C0 21            [24]  856 	push	bits
      000348 C0 E0            [24]  857 	push	acc
      00034A C0 F0            [24]  858 	push	b
      00034C C0 82            [24]  859 	push	dpl
      00034E C0 83            [24]  860 	push	dph
      000350 C0 07            [24]  861 	push	(0+7)
      000352 C0 06            [24]  862 	push	(0+6)
      000354 C0 05            [24]  863 	push	(0+5)
      000356 C0 04            [24]  864 	push	(0+4)
      000358 C0 03            [24]  865 	push	(0+3)
      00035A C0 02            [24]  866 	push	(0+2)
      00035C C0 01            [24]  867 	push	(0+1)
      00035E C0 00            [24]  868 	push	(0+0)
      000360 C0 D0            [24]  869 	push	psw
      000362 75 D0 08         [24]  870 	mov	psw,#0x08
                                    871 ;	lcd.c:187: setDdRamAddress(0x08);	//set DDRAM to end of line 1
      000365 75 82 08         [24]  872 	mov	dpl,#0x08
      000368 75 D0 00         [24]  873 	mov	psw,#0x00
      00036B 12 0A C1         [24]  874 	lcall	_setDdRamAddress
      00036E 75 D0 08         [24]  875 	mov	psw,#0x08
                                    876 ;	lcd.c:188: clock_setup(1, 0);		//call clock setup for line 1
      000371 E4               [12]  877 	clr	a
      000372 F5 3C            [12]  878 	mov	_clock_setup_PARM_2,a
      000374 F5 3D            [12]  879 	mov	(_clock_setup_PARM_2 + 1),a
      000376 90 00 01         [24]  880 	mov	dptr,#0x0001
      000379 75 D0 00         [24]  881 	mov	psw,#0x00
      00037C 12 03 F9         [24]  882 	lcall	_clock_setup
      00037F 75 D0 08         [24]  883 	mov	psw,#0x08
      000382 D0 D0            [24]  884 	pop	psw
      000384 D0 00            [24]  885 	pop	(0+0)
      000386 D0 01            [24]  886 	pop	(0+1)
      000388 D0 02            [24]  887 	pop	(0+2)
      00038A D0 03            [24]  888 	pop	(0+3)
      00038C D0 04            [24]  889 	pop	(0+4)
      00038E D0 05            [24]  890 	pop	(0+5)
      000390 D0 06            [24]  891 	pop	(0+6)
      000392 D0 07            [24]  892 	pop	(0+7)
      000394 D0 83            [24]  893 	pop	dph
      000396 D0 82            [24]  894 	pop	dpl
      000398 D0 F0            [24]  895 	pop	b
      00039A D0 E0            [24]  896 	pop	acc
      00039C D0 21            [24]  897 	pop	bits
      00039E 32               [24]  898 	reti
                                    899 ;------------------------------------------------------------
                                    900 ;Allocation info for local variables in function 'int1_isr'
                                    901 ;------------------------------------------------------------
                                    902 ;	lcd.c:192: void int1_isr (void) __interrupt (2) __using (1){
                                    903 ;	-----------------------------------------
                                    904 ;	 function int1_isr
                                    905 ;	-----------------------------------------
      00039F                        906 _int1_isr:
      00039F C0 21            [24]  907 	push	bits
      0003A1 C0 E0            [24]  908 	push	acc
      0003A3 C0 F0            [24]  909 	push	b
      0003A5 C0 82            [24]  910 	push	dpl
      0003A7 C0 83            [24]  911 	push	dph
      0003A9 C0 07            [24]  912 	push	(0+7)
      0003AB C0 06            [24]  913 	push	(0+6)
      0003AD C0 05            [24]  914 	push	(0+5)
      0003AF C0 04            [24]  915 	push	(0+4)
      0003B1 C0 03            [24]  916 	push	(0+3)
      0003B3 C0 02            [24]  917 	push	(0+2)
      0003B5 C0 01            [24]  918 	push	(0+1)
      0003B7 C0 00            [24]  919 	push	(0+0)
      0003B9 C0 D0            [24]  920 	push	psw
      0003BB 75 D0 08         [24]  921 	mov	psw,#0x08
                                    922 ;	lcd.c:194: setDdRamAddress(0x48);	//set DDRAM to end of line 2
      0003BE 75 82 48         [24]  923 	mov	dpl,#0x48
      0003C1 75 D0 00         [24]  924 	mov	psw,#0x00
      0003C4 12 0A C1         [24]  925 	lcall	_setDdRamAddress
      0003C7 75 D0 08         [24]  926 	mov	psw,#0x08
                                    927 ;	lcd.c:195: clock_setup(0, 1);		//call clock setup for line 2
      0003CA 75 3C 01         [24]  928 	mov	_clock_setup_PARM_2,#0x01
      0003CD 75 3D 00         [24]  929 	mov	(_clock_setup_PARM_2 + 1),#0x00
      0003D0 90 00 00         [24]  930 	mov	dptr,#0x0000
      0003D3 75 D0 00         [24]  931 	mov	psw,#0x00
      0003D6 12 03 F9         [24]  932 	lcall	_clock_setup
      0003D9 75 D0 08         [24]  933 	mov	psw,#0x08
      0003DC D0 D0            [24]  934 	pop	psw
      0003DE D0 00            [24]  935 	pop	(0+0)
      0003E0 D0 01            [24]  936 	pop	(0+1)
      0003E2 D0 02            [24]  937 	pop	(0+2)
      0003E4 D0 03            [24]  938 	pop	(0+3)
      0003E6 D0 04            [24]  939 	pop	(0+4)
      0003E8 D0 05            [24]  940 	pop	(0+5)
      0003EA D0 06            [24]  941 	pop	(0+6)
      0003EC D0 07            [24]  942 	pop	(0+7)
      0003EE D0 83            [24]  943 	pop	dph
      0003F0 D0 82            [24]  944 	pop	dpl
      0003F2 D0 F0            [24]  945 	pop	b
      0003F4 D0 E0            [24]  946 	pop	acc
      0003F6 D0 21            [24]  947 	pop	bits
      0003F8 32               [24]  948 	reti
                                    949 ;------------------------------------------------------------
                                    950 ;Allocation info for local variables in function 'clock_setup'
                                    951 ;------------------------------------------------------------
                                    952 ;line2                     Allocated with name '_clock_setup_PARM_2'
                                    953 ;line1                     Allocated with name '_clock_setup_line1_1_38'
                                    954 ;row                       Allocated to registers r2 
                                    955 ;col                       Allocated to registers r7 
                                    956 ;keypad                    Allocated with name '_clock_setup_keypad_1_39'
                                    957 ;i                         Allocated to registers r5 
                                    958 ;gotkey                    Allocated with name '_clock_setup_gotkey_1_39'
                                    959 ;gotkey_pressed            Allocated with name '_clock_setup_gotkey_pressed_1_39'
                                    960 ;temp                      Allocated to registers r3 r6 
                                    961 ;current_addr1             Allocated with name '_clock_setup_current_addr1_1_39'
                                    962 ;current_addr2             Allocated with name '_clock_setup_current_addr2_1_39'
                                    963 ;sloc1                     Allocated with name '_clock_setup_sloc1_1_0'
                                    964 ;------------------------------------------------------------
                                    965 ;	lcd.c:200: void clock_setup(unsigned int line1, unsigned int line2){
                                    966 ;	-----------------------------------------
                                    967 ;	 function clock_setup
                                    968 ;	-----------------------------------------
      0003F9                        969 _clock_setup:
                           000007   970 	ar7 = 0x07
                           000006   971 	ar6 = 0x06
                           000005   972 	ar5 = 0x05
                           000004   973 	ar4 = 0x04
                           000003   974 	ar3 = 0x03
                           000002   975 	ar2 = 0x02
                           000001   976 	ar1 = 0x01
                           000000   977 	ar0 = 0x00
      0003F9 85 82 3E         [24]  978 	mov	_clock_setup_line1_1_38,dpl
      0003FC 85 83 3F         [24]  979 	mov	(_clock_setup_line1_1_38 + 1),dph
                                    980 ;	lcd.c:207: unsigned char keypad[4][3] = {	// This array contains the ASCII of the keypad keys
      0003FF 75 40 33         [24]  981 	mov	_clock_setup_keypad_1_39,#0x33
      000402 75 41 32         [24]  982 	mov	(_clock_setup_keypad_1_39 + 0x0001),#0x32
      000405 75 42 31         [24]  983 	mov	(_clock_setup_keypad_1_39 + 0x0002),#0x31
      000408 75 43 36         [24]  984 	mov	(_clock_setup_keypad_1_39 + 0x0003),#0x36
      00040B 75 44 35         [24]  985 	mov	(_clock_setup_keypad_1_39 + 0x0004),#0x35
      00040E 75 45 34         [24]  986 	mov	(_clock_setup_keypad_1_39 + 0x0005),#0x34
      000411 75 46 39         [24]  987 	mov	(_clock_setup_keypad_1_39 + 0x0006),#0x39
      000414 75 47 38         [24]  988 	mov	(_clock_setup_keypad_1_39 + 0x0007),#0x38
      000417 75 48 37         [24]  989 	mov	(_clock_setup_keypad_1_39 + 0x0008),#0x37
      00041A 75 49 23         [24]  990 	mov	(_clock_setup_keypad_1_39 + 0x0009),#0x23
      00041D 75 4A 30         [24]  991 	mov	(_clock_setup_keypad_1_39 + 0x000a),#0x30
      000420 75 4B 2A         [24]  992 	mov	(_clock_setup_keypad_1_39 + 0x000b),#0x2A
                                    993 ;	lcd.c:217: unsigned char gotkey_pressed = 0;
      000423 75 4D 00         [24]  994 	mov	_clock_setup_gotkey_pressed_1_39,#0x00
                                    995 ;	lcd.c:222: current_addr1 = 0x08;	//set initial current cursor address to last block of line 1
      000426 75 4E 08         [24]  996 	mov	_clock_setup_current_addr1_1_39,#0x08
                                    997 ;	lcd.c:223: current_addr2 = 0x48;	//set initial current cursor address to last block of line 2
      000429 75 4F 48         [24]  998 	mov	_clock_setup_current_addr2_1_39,#0x48
                                    999 ;	lcd.c:225: while(!( line1? SW0 : SW1 )){
      00042C                       1000 00216$:
      00042C E5 3E            [12] 1001 	mov	a,_clock_setup_line1_1_38
      00042E 45 3F            [12] 1002 	orl	a,(_clock_setup_line1_1_38 + 1)
      000430 60 06            [24] 1003 	jz	00228$
      000432 A2 B2            [12] 1004 	mov	c,_P3_2
      000434 92 00            [24] 1005 	mov	_clock_setup_sloc0_1_0,c
      000436 80 04            [24] 1006 	sjmp	00229$
      000438                       1007 00228$:
      000438 A2 B3            [12] 1008 	mov	c,_P3_3
      00043A 92 00            [24] 1009 	mov	_clock_setup_sloc0_1_0,c
      00043C                       1010 00229$:
      00043C 30 00 03         [24] 1011 	jnb	_clock_setup_sloc0_1_0,00410$
      00043F 02 0A 09         [24] 1012 	ljmp	00218$
      000442                       1013 00410$:
                                   1014 ;	lcd.c:226: row = 0xf7;  // The first row (connected to P0.3) will be zero
      000442 7A F7            [12] 1015 	mov	r2,#0xF7
                                   1016 ;	lcd.c:228: for (i=0;i<4;++i){ // loop over the 4 rows
      000444 7D 00            [12] 1017 	mov	r5,#0x00
      000446                       1018 00224$:
                                   1019 ;	lcd.c:230: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      000446 75 80 FF         [24] 1020 	mov	_P0,#0xFF
                                   1021 ;	lcd.c:231: P0 = P0 & row; // clear one row at a time
      000449 EA               [12] 1022 	mov	a,r2
      00044A 52 80            [12] 1023 	anl	_P0,a
                                   1024 ;	lcd.c:232: col = P0 & 0x70;  // Read the 3 columns
      00044C 74 70            [12] 1025 	mov	a,#0x70
      00044E 55 80            [12] 1026 	anl	a,_P0
      000450 FF               [12] 1027 	mov	r7,a
                                   1028 ;	lcd.c:233: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      000451 BF 70 03         [24] 1029 	cjne	r7,#0x70,00411$
      000454 02 09 F6         [24] 1030 	ljmp	00214$
      000457                       1031 00411$:
                                   1032 ;	lcd.c:234: col = (~col) & 0x70;  // because the selected column returns zero
      000457 EF               [12] 1033 	mov	a,r7
      000458 F4               [12] 1034 	cpl	a
      000459 FE               [12] 1035 	mov	r6,a
      00045A 74 70            [12] 1036 	mov	a,#0x70
      00045C 5E               [12] 1037 	anl	a,r6
                                   1038 ;	lcd.c:235: col = col >> 5;       // The column variable now contain the number of the selected column
      00045D C4               [12] 1039 	swap	a
      00045E 03               [12] 1040 	rr	a
      00045F 54 07            [12] 1041 	anl	a,#0x07
      000461 FF               [12] 1042 	mov	r7,a
                                   1043 ;	lcd.c:236: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
      000462 ED               [12] 1044 	mov	a,r5
      000463 75 F0 03         [24] 1045 	mov	b,#0x03
      000466 A4               [48] 1046 	mul	ab
      000467 24 40            [12] 1047 	add	a,#_clock_setup_keypad_1_39
      000469 FE               [12] 1048 	mov	r6,a
      00046A 2F               [12] 1049 	add	a,r7
      00046B F9               [12] 1050 	mov	r1,a
      00046C 87 4C            [24] 1051 	mov	_clock_setup_gotkey_1_39,@r1
                                   1052 ;	lcd.c:238: if (line1){ 	//Only modify line 1
      00046E E5 3E            [12] 1053 	mov	a,_clock_setup_line1_1_38
      000470 45 3F            [12] 1054 	orl	a,(_clock_setup_line1_1_38 + 1)
      000472 70 03            [24] 1055 	jnz	00412$
      000474 02 06 CF         [24] 1056 	ljmp	00146$
      000477                       1057 00412$:
                                   1058 ;	lcd.c:240: if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
      000477 E5 4D            [12] 1059 	mov	a,_clock_setup_gotkey_pressed_1_39
      000479 70 03            [24] 1060 	jnz	00413$
      00047B 02 06 84         [24] 1061 	ljmp	00134$
      00047E                       1062 00413$:
      00047E 74 2A            [12] 1063 	mov	a,#0x2A
      000480 B5 4C 03         [24] 1064 	cjne	a,_clock_setup_gotkey_1_39,00414$
      000483 02 06 84         [24] 1065 	ljmp	00134$
      000486                       1066 00414$:
      000486 74 23            [12] 1067 	mov	a,#0x23
      000488 B5 4C 03         [24] 1068 	cjne	a,_clock_setup_gotkey_1_39,00415$
      00048B 02 06 84         [24] 1069 	ljmp	00134$
      00048E                       1070 00415$:
                                   1071 ;	lcd.c:242: if (current_addr1 == 0x08) break;
      00048E 74 08            [12] 1072 	mov	a,#0x08
      000490 B5 4E 02         [24] 1073 	cjne	a,_clock_setup_current_addr1_1_39,00416$
      000493 80 97            [24] 1074 	sjmp	00216$
      000495                       1075 00416$:
                                   1076 ;	lcd.c:245: if (current_addr1 == 0x06){	//if current address is first digit of second 
      000495 74 06            [12] 1077 	mov	a,#0x06
      000497 B5 4E 4C         [24] 1078 	cjne	a,_clock_setup_current_addr1_1_39,00107$
                                   1079 ;	lcd.c:246: temp = gotkey - '0';	//convert char to int
      00049A AB 4C            [24] 1080 	mov	r3,_clock_setup_gotkey_1_39
      00049C 7E 00            [12] 1081 	mov	r6,#0x00
      00049E EB               [12] 1082 	mov	a,r3
      00049F 24 D0            [12] 1083 	add	a,#0xD0
      0004A1 FB               [12] 1084 	mov	r3,a
      0004A2 EE               [12] 1085 	mov	a,r6
      0004A3 34 FF            [12] 1086 	addc	a,#0xFF
      0004A5 FE               [12] 1087 	mov	r6,a
                                   1088 ;	lcd.c:247: temp = (10 * temp) + (SEC % 10);	//create new second value
      0004A6 8B 54            [24] 1089 	mov	__mulint_PARM_2,r3
      0004A8 8E 55            [24] 1090 	mov	(__mulint_PARM_2 + 1),r6
      0004AA 90 00 0A         [24] 1091 	mov	dptr,#0x000A
      0004AD 12 0B 68         [24] 1092 	lcall	__mulint
      0004B0 85 82 50         [24] 1093 	mov	_clock_setup_sloc1_1_0,dpl
      0004B3 85 83 51         [24] 1094 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      0004B6 75 54 0A         [24] 1095 	mov	__moduint_PARM_2,#0x0A
      0004B9 75 55 00         [24] 1096 	mov	(__moduint_PARM_2 + 1),#0x00
      0004BC 85 30 82         [24] 1097 	mov	dpl,_SEC
      0004BF 85 31 83         [24] 1098 	mov	dph,(_SEC + 1)
      0004C2 12 0B 85         [24] 1099 	lcall	__moduint
      0004C5 AC 82            [24] 1100 	mov	r4,dpl
      0004C7 AF 83            [24] 1101 	mov	r7,dph
      0004C9 EC               [12] 1102 	mov	a,r4
      0004CA 25 50            [12] 1103 	add	a,_clock_setup_sloc1_1_0
      0004CC FB               [12] 1104 	mov	r3,a
      0004CD EF               [12] 1105 	mov	a,r7
      0004CE 35 51            [12] 1106 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      0004D0 FE               [12] 1107 	mov	r6,a
                                   1108 ;	lcd.c:249: if (temp > 59) 	break;	//if new second value is > 59, don't update
      0004D1 C3               [12] 1109 	clr	c
      0004D2 74 3B            [12] 1110 	mov	a,#0x3B
      0004D4 9B               [12] 1111 	subb	a,r3
      0004D5 E4               [12] 1112 	clr	a
      0004D6 9E               [12] 1113 	subb	a,r6
      0004D7 50 03            [24] 1114 	jnc	00419$
      0004D9 02 04 2C         [24] 1115 	ljmp	00216$
      0004DC                       1116 00419$:
                                   1117 ;	lcd.c:251: SEC = temp; 
      0004DC 8B 30            [24] 1118 	mov	_SEC,r3
      0004DE 8E 31            [24] 1119 	mov	(_SEC + 1),r6
                                   1120 ;	lcd.c:252: sendChar(gotkey);
      0004E0 85 4C 82         [24] 1121 	mov	dpl,_clock_setup_gotkey_1_39
      0004E3 12 0A D1         [24] 1122 	lcall	_sendChar
      0004E6                       1123 00107$:
                                   1124 ;	lcd.c:256: if (current_addr1 == 0x07){
      0004E6 74 07            [12] 1125 	mov	a,#0x07
      0004E8 B5 4E 4E         [24] 1126 	cjne	a,_clock_setup_current_addr1_1_39,00112$
                                   1127 ;	lcd.c:257: temp = gotkey - '0';
      0004EB AC 4C            [24] 1128 	mov	r4,_clock_setup_gotkey_1_39
      0004ED 7F 00            [12] 1129 	mov	r7,#0x00
      0004EF EC               [12] 1130 	mov	a,r4
      0004F0 24 D0            [12] 1131 	add	a,#0xD0
      0004F2 FB               [12] 1132 	mov	r3,a
      0004F3 EF               [12] 1133 	mov	a,r7
      0004F4 34 FF            [12] 1134 	addc	a,#0xFF
      0004F6 FE               [12] 1135 	mov	r6,a
                                   1136 ;	lcd.c:258: temp = ((SEC / 10) * 10) + temp;
      0004F7 75 54 0A         [24] 1137 	mov	__divuint_PARM_2,#0x0A
                                   1138 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      0004FA 8F 55            [24] 1139 	mov	(__divuint_PARM_2 + 1),r7
      0004FC 85 30 82         [24] 1140 	mov	dpl,_SEC
      0004FF 85 31 83         [24] 1141 	mov	dph,(_SEC + 1)
      000502 C0 06            [24] 1142 	push	ar6
      000504 C0 03            [24] 1143 	push	ar3
      000506 12 0B 3F         [24] 1144 	lcall	__divuint
      000509 85 82 54         [24] 1145 	mov	__mulint_PARM_2,dpl
      00050C 85 83 55         [24] 1146 	mov	(__mulint_PARM_2 + 1),dph
      00050F 90 00 0A         [24] 1147 	mov	dptr,#0x000A
      000512 12 0B 68         [24] 1148 	lcall	__mulint
      000515 E5 82            [12] 1149 	mov	a,dpl
      000517 85 83 F0         [24] 1150 	mov	b,dph
      00051A D0 03            [24] 1151 	pop	ar3
      00051C D0 06            [24] 1152 	pop	ar6
      00051E 2B               [12] 1153 	add	a,r3
      00051F FB               [12] 1154 	mov	r3,a
      000520 EE               [12] 1155 	mov	a,r6
      000521 35 F0            [12] 1156 	addc	a,b
      000523 FE               [12] 1157 	mov	r6,a
                                   1158 ;	lcd.c:260: if (temp > 59) 	break;
      000524 C3               [12] 1159 	clr	c
      000525 74 3B            [12] 1160 	mov	a,#0x3B
      000527 9B               [12] 1161 	subb	a,r3
      000528 E4               [12] 1162 	clr	a
      000529 9E               [12] 1163 	subb	a,r6
      00052A 50 03            [24] 1164 	jnc	00422$
      00052C 02 04 2C         [24] 1165 	ljmp	00216$
      00052F                       1166 00422$:
                                   1167 ;	lcd.c:262: SEC = temp; 
      00052F 8B 30            [24] 1168 	mov	_SEC,r3
      000531 8E 31            [24] 1169 	mov	(_SEC + 1),r6
                                   1170 ;	lcd.c:263: sendChar(gotkey);
      000533 85 4C 82         [24] 1171 	mov	dpl,_clock_setup_gotkey_1_39
      000536 12 0A D1         [24] 1172 	lcall	_sendChar
      000539                       1173 00112$:
                                   1174 ;	lcd.c:268: if (current_addr1 == 0x03){
      000539 74 03            [12] 1175 	mov	a,#0x03
      00053B B5 4E 4C         [24] 1176 	cjne	a,_clock_setup_current_addr1_1_39,00117$
                                   1177 ;	lcd.c:269: temp = gotkey - '0';
      00053E AC 4C            [24] 1178 	mov	r4,_clock_setup_gotkey_1_39
      000540 7F 00            [12] 1179 	mov	r7,#0x00
      000542 EC               [12] 1180 	mov	a,r4
      000543 24 D0            [12] 1181 	add	a,#0xD0
      000545 FB               [12] 1182 	mov	r3,a
      000546 EF               [12] 1183 	mov	a,r7
      000547 34 FF            [12] 1184 	addc	a,#0xFF
      000549 FE               [12] 1185 	mov	r6,a
                                   1186 ;	lcd.c:270: temp = (10 * temp) + (MIN % 10);
      00054A 8B 54            [24] 1187 	mov	__mulint_PARM_2,r3
      00054C 8E 55            [24] 1188 	mov	(__mulint_PARM_2 + 1),r6
      00054E 90 00 0A         [24] 1189 	mov	dptr,#0x000A
      000551 12 0B 68         [24] 1190 	lcall	__mulint
      000554 85 82 50         [24] 1191 	mov	_clock_setup_sloc1_1_0,dpl
      000557 85 83 51         [24] 1192 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      00055A 75 54 0A         [24] 1193 	mov	__moduint_PARM_2,#0x0A
      00055D 75 55 00         [24] 1194 	mov	(__moduint_PARM_2 + 1),#0x00
      000560 85 32 82         [24] 1195 	mov	dpl,_MIN
      000563 85 33 83         [24] 1196 	mov	dph,(_MIN + 1)
      000566 12 0B 85         [24] 1197 	lcall	__moduint
      000569 AC 82            [24] 1198 	mov	r4,dpl
      00056B AF 83            [24] 1199 	mov	r7,dph
      00056D EC               [12] 1200 	mov	a,r4
      00056E 25 50            [12] 1201 	add	a,_clock_setup_sloc1_1_0
      000570 FB               [12] 1202 	mov	r3,a
      000571 EF               [12] 1203 	mov	a,r7
      000572 35 51            [12] 1204 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      000574 FE               [12] 1205 	mov	r6,a
                                   1206 ;	lcd.c:272: if (temp > 59) 	break;
      000575 C3               [12] 1207 	clr	c
      000576 74 3B            [12] 1208 	mov	a,#0x3B
      000578 9B               [12] 1209 	subb	a,r3
      000579 E4               [12] 1210 	clr	a
      00057A 9E               [12] 1211 	subb	a,r6
      00057B 50 03            [24] 1212 	jnc	00425$
      00057D 02 04 2C         [24] 1213 	ljmp	00216$
      000580                       1214 00425$:
                                   1215 ;	lcd.c:274: MIN = temp; 
      000580 8B 32            [24] 1216 	mov	_MIN,r3
      000582 8E 33            [24] 1217 	mov	(_MIN + 1),r6
                                   1218 ;	lcd.c:275: sendChar(gotkey);
      000584 85 4C 82         [24] 1219 	mov	dpl,_clock_setup_gotkey_1_39
      000587 12 0A D1         [24] 1220 	lcall	_sendChar
      00058A                       1221 00117$:
                                   1222 ;	lcd.c:279: if (current_addr1 == 0x04){
      00058A 74 04            [12] 1223 	mov	a,#0x04
      00058C B5 4E 4E         [24] 1224 	cjne	a,_clock_setup_current_addr1_1_39,00122$
                                   1225 ;	lcd.c:280: temp = gotkey - '0';
      00058F AC 4C            [24] 1226 	mov	r4,_clock_setup_gotkey_1_39
      000591 7F 00            [12] 1227 	mov	r7,#0x00
      000593 EC               [12] 1228 	mov	a,r4
      000594 24 D0            [12] 1229 	add	a,#0xD0
      000596 FB               [12] 1230 	mov	r3,a
      000597 EF               [12] 1231 	mov	a,r7
      000598 34 FF            [12] 1232 	addc	a,#0xFF
      00059A FE               [12] 1233 	mov	r6,a
                                   1234 ;	lcd.c:281: temp = ((MIN / 10) * 10) + temp;
      00059B 75 54 0A         [24] 1235 	mov	__divuint_PARM_2,#0x0A
                                   1236 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      00059E 8F 55            [24] 1237 	mov	(__divuint_PARM_2 + 1),r7
      0005A0 85 32 82         [24] 1238 	mov	dpl,_MIN
      0005A3 85 33 83         [24] 1239 	mov	dph,(_MIN + 1)
      0005A6 C0 06            [24] 1240 	push	ar6
      0005A8 C0 03            [24] 1241 	push	ar3
      0005AA 12 0B 3F         [24] 1242 	lcall	__divuint
      0005AD 85 82 54         [24] 1243 	mov	__mulint_PARM_2,dpl
      0005B0 85 83 55         [24] 1244 	mov	(__mulint_PARM_2 + 1),dph
      0005B3 90 00 0A         [24] 1245 	mov	dptr,#0x000A
      0005B6 12 0B 68         [24] 1246 	lcall	__mulint
      0005B9 E5 82            [12] 1247 	mov	a,dpl
      0005BB 85 83 F0         [24] 1248 	mov	b,dph
      0005BE D0 03            [24] 1249 	pop	ar3
      0005C0 D0 06            [24] 1250 	pop	ar6
      0005C2 2B               [12] 1251 	add	a,r3
      0005C3 FB               [12] 1252 	mov	r3,a
      0005C4 EE               [12] 1253 	mov	a,r6
      0005C5 35 F0            [12] 1254 	addc	a,b
      0005C7 FE               [12] 1255 	mov	r6,a
                                   1256 ;	lcd.c:283: if (temp > 59) 	break;
      0005C8 C3               [12] 1257 	clr	c
      0005C9 74 3B            [12] 1258 	mov	a,#0x3B
      0005CB 9B               [12] 1259 	subb	a,r3
      0005CC E4               [12] 1260 	clr	a
      0005CD 9E               [12] 1261 	subb	a,r6
      0005CE 50 03            [24] 1262 	jnc	00428$
      0005D0 02 04 2C         [24] 1263 	ljmp	00216$
      0005D3                       1264 00428$:
                                   1265 ;	lcd.c:285: MIN = temp; 
      0005D3 8B 32            [24] 1266 	mov	_MIN,r3
      0005D5 8E 33            [24] 1267 	mov	(_MIN + 1),r6
                                   1268 ;	lcd.c:286: sendChar(gotkey);
      0005D7 85 4C 82         [24] 1269 	mov	dpl,_clock_setup_gotkey_1_39
      0005DA 12 0A D1         [24] 1270 	lcall	_sendChar
      0005DD                       1271 00122$:
                                   1272 ;	lcd.c:290: if (current_addr1 == 0x00){
      0005DD E5 4E            [12] 1273 	mov	a,_clock_setup_current_addr1_1_39
                                   1274 ;	lcd.c:291: temp = gotkey - '0';
      0005DF 70 4B            [24] 1275 	jnz	00127$
      0005E1 AC 4C            [24] 1276 	mov	r4,_clock_setup_gotkey_1_39
      0005E3 FF               [12] 1277 	mov	r7,a
      0005E4 EC               [12] 1278 	mov	a,r4
      0005E5 24 D0            [12] 1279 	add	a,#0xD0
      0005E7 FB               [12] 1280 	mov	r3,a
      0005E8 EF               [12] 1281 	mov	a,r7
      0005E9 34 FF            [12] 1282 	addc	a,#0xFF
      0005EB FE               [12] 1283 	mov	r6,a
                                   1284 ;	lcd.c:292: temp = (10 * temp) + (HOUR % 10);
      0005EC 8B 54            [24] 1285 	mov	__mulint_PARM_2,r3
      0005EE 8E 55            [24] 1286 	mov	(__mulint_PARM_2 + 1),r6
      0005F0 90 00 0A         [24] 1287 	mov	dptr,#0x000A
      0005F3 12 0B 68         [24] 1288 	lcall	__mulint
      0005F6 85 82 50         [24] 1289 	mov	_clock_setup_sloc1_1_0,dpl
      0005F9 85 83 51         [24] 1290 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      0005FC 75 54 0A         [24] 1291 	mov	__moduint_PARM_2,#0x0A
      0005FF 75 55 00         [24] 1292 	mov	(__moduint_PARM_2 + 1),#0x00
      000602 85 34 82         [24] 1293 	mov	dpl,_HOUR
      000605 85 35 83         [24] 1294 	mov	dph,(_HOUR + 1)
      000608 12 0B 85         [24] 1295 	lcall	__moduint
      00060B AC 82            [24] 1296 	mov	r4,dpl
      00060D AF 83            [24] 1297 	mov	r7,dph
      00060F EC               [12] 1298 	mov	a,r4
      000610 25 50            [12] 1299 	add	a,_clock_setup_sloc1_1_0
      000612 FB               [12] 1300 	mov	r3,a
      000613 EF               [12] 1301 	mov	a,r7
      000614 35 51            [12] 1302 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      000616 FE               [12] 1303 	mov	r6,a
                                   1304 ;	lcd.c:294: if (temp > 23) 	break;
      000617 C3               [12] 1305 	clr	c
      000618 74 17            [12] 1306 	mov	a,#0x17
      00061A 9B               [12] 1307 	subb	a,r3
      00061B E4               [12] 1308 	clr	a
      00061C 9E               [12] 1309 	subb	a,r6
      00061D 50 03            [24] 1310 	jnc	00430$
      00061F 02 04 2C         [24] 1311 	ljmp	00216$
      000622                       1312 00430$:
                                   1313 ;	lcd.c:296: HOUR = temp; 
      000622 8B 34            [24] 1314 	mov	_HOUR,r3
      000624 8E 35            [24] 1315 	mov	(_HOUR + 1),r6
                                   1316 ;	lcd.c:297: sendChar(gotkey);
      000626 85 4C 82         [24] 1317 	mov	dpl,_clock_setup_gotkey_1_39
      000629 12 0A D1         [24] 1318 	lcall	_sendChar
      00062C                       1319 00127$:
                                   1320 ;	lcd.c:301: if (current_addr1 == 0x01){
      00062C 74 01            [12] 1321 	mov	a,#0x01
      00062E B5 4E 4E         [24] 1322 	cjne	a,_clock_setup_current_addr1_1_39,00132$
                                   1323 ;	lcd.c:302: temp = gotkey - '0';
      000631 AC 4C            [24] 1324 	mov	r4,_clock_setup_gotkey_1_39
      000633 7F 00            [12] 1325 	mov	r7,#0x00
      000635 EC               [12] 1326 	mov	a,r4
      000636 24 D0            [12] 1327 	add	a,#0xD0
      000638 FB               [12] 1328 	mov	r3,a
      000639 EF               [12] 1329 	mov	a,r7
      00063A 34 FF            [12] 1330 	addc	a,#0xFF
      00063C FE               [12] 1331 	mov	r6,a
                                   1332 ;	lcd.c:303: temp = ((HOUR / 10) * 10) + temp;
      00063D 75 54 0A         [24] 1333 	mov	__divuint_PARM_2,#0x0A
                                   1334 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      000640 8F 55            [24] 1335 	mov	(__divuint_PARM_2 + 1),r7
      000642 85 34 82         [24] 1336 	mov	dpl,_HOUR
      000645 85 35 83         [24] 1337 	mov	dph,(_HOUR + 1)
      000648 C0 06            [24] 1338 	push	ar6
      00064A C0 03            [24] 1339 	push	ar3
      00064C 12 0B 3F         [24] 1340 	lcall	__divuint
      00064F 85 82 54         [24] 1341 	mov	__mulint_PARM_2,dpl
      000652 85 83 55         [24] 1342 	mov	(__mulint_PARM_2 + 1),dph
      000655 90 00 0A         [24] 1343 	mov	dptr,#0x000A
      000658 12 0B 68         [24] 1344 	lcall	__mulint
      00065B E5 82            [12] 1345 	mov	a,dpl
      00065D 85 83 F0         [24] 1346 	mov	b,dph
      000660 D0 03            [24] 1347 	pop	ar3
      000662 D0 06            [24] 1348 	pop	ar6
      000664 2B               [12] 1349 	add	a,r3
      000665 FB               [12] 1350 	mov	r3,a
      000666 EE               [12] 1351 	mov	a,r6
      000667 35 F0            [12] 1352 	addc	a,b
      000669 FE               [12] 1353 	mov	r6,a
                                   1354 ;	lcd.c:305: if (temp > 23) 	break;
      00066A C3               [12] 1355 	clr	c
      00066B 74 17            [12] 1356 	mov	a,#0x17
      00066D 9B               [12] 1357 	subb	a,r3
      00066E E4               [12] 1358 	clr	a
      00066F 9E               [12] 1359 	subb	a,r6
      000670 50 03            [24] 1360 	jnc	00433$
      000672 02 04 2C         [24] 1361 	ljmp	00216$
      000675                       1362 00433$:
                                   1363 ;	lcd.c:307: HOUR = temp; 
      000675 8B 34            [24] 1364 	mov	_HOUR,r3
      000677 8E 35            [24] 1365 	mov	(_HOUR + 1),r6
                                   1366 ;	lcd.c:308: sendChar(gotkey);
      000679 85 4C 82         [24] 1367 	mov	dpl,_clock_setup_gotkey_1_39
      00067C 12 0A D1         [24] 1368 	lcall	_sendChar
      00067F                       1369 00132$:
                                   1370 ;	lcd.c:313: current_addr1++;	//move current address to next block
      00067F 05 4E            [12] 1371 	inc	_clock_setup_current_addr1_1_39
                                   1372 ;	lcd.c:314: break;
      000681 02 04 2C         [24] 1373 	ljmp	00216$
      000684                       1374 00134$:
                                   1375 ;	lcd.c:318: if (gotkey == '*'){		//move cursor left
      000684 74 2A            [12] 1376 	mov	a,#0x2A
      000686 B5 4C 1C         [24] 1377 	cjne	a,_clock_setup_gotkey_1_39,00140$
                                   1378 ;	lcd.c:320: gotkey_pressed = 1;
      000689 75 4D 01         [24] 1379 	mov	_clock_setup_gotkey_pressed_1_39,#0x01
                                   1380 ;	lcd.c:323: if (current_addr1 == 0x00){
      00068C E5 4E            [12] 1381 	mov	a,_clock_setup_current_addr1_1_39
      00068E 70 0C            [24] 1382 	jnz	00138$
                                   1383 ;	lcd.c:324: setDdRamAddress(0x08);
      000690 75 82 08         [24] 1384 	mov	dpl,#0x08
      000693 12 0A C1         [24] 1385 	lcall	_setDdRamAddress
                                   1386 ;	lcd.c:325: current_addr1 = 0x08;
      000696 75 4E 08         [24] 1387 	mov	_clock_setup_current_addr1_1_39,#0x08
                                   1388 ;	lcd.c:326: break;
      000699 02 04 2C         [24] 1389 	ljmp	00216$
      00069C                       1390 00138$:
                                   1391 ;	lcd.c:328: cursorOrDisplayShift(0, 0);
      00069C C2 04            [12] 1392 	clr	_cursorOrDisplayShift_PARM_1
      00069E C2 05            [12] 1393 	clr	_cursorOrDisplayShift_PARM_2
      0006A0 12 0A 8C         [24] 1394 	lcall	_cursorOrDisplayShift
                                   1395 ;	lcd.c:329: current_addr1--;
      0006A3 15 4E            [12] 1396 	dec	_clock_setup_current_addr1_1_39
      0006A5                       1397 00140$:
                                   1398 ;	lcd.c:333: if (gotkey == '#'){		//move cursor right
      0006A5 74 23            [12] 1399 	mov	a,#0x23
      0006A7 B5 4C 02         [24] 1400 	cjne	a,_clock_setup_gotkey_1_39,00437$
      0006AA 80 03            [24] 1401 	sjmp	00438$
      0006AC                       1402 00437$:
      0006AC 02 04 2C         [24] 1403 	ljmp	00216$
      0006AF                       1404 00438$:
                                   1405 ;	lcd.c:335: gotkey_pressed = 1;
      0006AF 75 4D 01         [24] 1406 	mov	_clock_setup_gotkey_pressed_1_39,#0x01
                                   1407 ;	lcd.c:338: if (current_addr1 == 0x07){
      0006B2 74 07            [12] 1408 	mov	a,#0x07
      0006B4 B5 4E 0C         [24] 1409 	cjne	a,_clock_setup_current_addr1_1_39,00142$
                                   1410 ;	lcd.c:339: setDdRamAddress(0x00);
      0006B7 75 82 00         [24] 1411 	mov	dpl,#0x00
      0006BA 12 0A C1         [24] 1412 	lcall	_setDdRamAddress
                                   1413 ;	lcd.c:340: current_addr1 = 0x00;
      0006BD 75 4E 00         [24] 1414 	mov	_clock_setup_current_addr1_1_39,#0x00
                                   1415 ;	lcd.c:341: break;
      0006C0 02 04 2C         [24] 1416 	ljmp	00216$
      0006C3                       1417 00142$:
                                   1418 ;	lcd.c:343: cursorOrDisplayShift(0, 1);
      0006C3 C2 04            [12] 1419 	clr	_cursorOrDisplayShift_PARM_1
      0006C5 D2 05            [12] 1420 	setb	_cursorOrDisplayShift_PARM_2
      0006C7 12 0A 8C         [24] 1421 	lcall	_cursorOrDisplayShift
                                   1422 ;	lcd.c:344: current_addr1++;
      0006CA 05 4E            [12] 1423 	inc	_clock_setup_current_addr1_1_39
                                   1424 ;	lcd.c:347: break;
      0006CC 02 04 2C         [24] 1425 	ljmp	00216$
      0006CF                       1426 00146$:
                                   1427 ;	lcd.c:350: if (line2){		//Only modify line 2
      0006CF E5 3C            [12] 1428 	mov	a,_clock_setup_PARM_2
      0006D1 45 3D            [12] 1429 	orl	a,(_clock_setup_PARM_2 + 1)
      0006D3 70 03            [24] 1430 	jnz	00441$
      0006D5 02 09 F6         [24] 1431 	ljmp	00214$
      0006D8                       1432 00441$:
                                   1433 ;	lcd.c:352: if (gotkey_pressed && gotkey != '*' && gotkey != '#'){
      0006D8 E5 4D            [12] 1434 	mov	a,_clock_setup_gotkey_pressed_1_39
      0006DA 70 03            [24] 1435 	jnz	00442$
      0006DC 02 09 AA         [24] 1436 	ljmp	00200$
      0006DF                       1437 00442$:
      0006DF 74 2A            [12] 1438 	mov	a,#0x2A
      0006E1 B5 4C 03         [24] 1439 	cjne	a,_clock_setup_gotkey_1_39,00443$
      0006E4 02 09 AA         [24] 1440 	ljmp	00200$
      0006E7                       1441 00443$:
      0006E7 74 23            [12] 1442 	mov	a,#0x23
      0006E9 B5 4C 03         [24] 1443 	cjne	a,_clock_setup_gotkey_1_39,00444$
      0006EC 02 09 AA         [24] 1444 	ljmp	00200$
      0006EF                       1445 00444$:
                                   1446 ;	lcd.c:354: if (current_addr2 == 0x48) break;
      0006EF 74 48            [12] 1447 	mov	a,#0x48
      0006F1 B5 4F 03         [24] 1448 	cjne	a,_clock_setup_current_addr2_1_39,00445$
      0006F4 02 04 2C         [24] 1449 	ljmp	00216$
      0006F7                       1450 00445$:
                                   1451 ;	lcd.c:358: if (current_addr2 == 0x46){
      0006F7 74 46            [12] 1452 	mov	a,#0x46
      0006F9 B5 4F 3F         [24] 1453 	cjne	a,_clock_setup_current_addr2_1_39,00150$
                                   1454 ;	lcd.c:359: temp = gotkey - '0';
      0006FC AC 4C            [24] 1455 	mov	r4,_clock_setup_gotkey_1_39
      0006FE 7F 00            [12] 1456 	mov	r7,#0x00
      000700 EC               [12] 1457 	mov	a,r4
      000701 24 D0            [12] 1458 	add	a,#0xD0
      000703 FB               [12] 1459 	mov	r3,a
      000704 EF               [12] 1460 	mov	a,r7
      000705 34 FF            [12] 1461 	addc	a,#0xFF
      000707 FE               [12] 1462 	mov	r6,a
                                   1463 ;	lcd.c:360: YEAR = (10 * temp) + (YEAR % 10);
      000708 8B 54            [24] 1464 	mov	__mulint_PARM_2,r3
      00070A 8E 55            [24] 1465 	mov	(__mulint_PARM_2 + 1),r6
      00070C 90 00 0A         [24] 1466 	mov	dptr,#0x000A
      00070F 12 0B 68         [24] 1467 	lcall	__mulint
      000712 85 82 50         [24] 1468 	mov	_clock_setup_sloc1_1_0,dpl
      000715 85 83 51         [24] 1469 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      000718 75 54 0A         [24] 1470 	mov	__moduint_PARM_2,#0x0A
      00071B 75 55 00         [24] 1471 	mov	(__moduint_PARM_2 + 1),#0x00
      00071E 85 3A 82         [24] 1472 	mov	dpl,_YEAR
      000721 85 3B 83         [24] 1473 	mov	dph,(_YEAR + 1)
      000724 12 0B 85         [24] 1474 	lcall	__moduint
      000727 AC 82            [24] 1475 	mov	r4,dpl
      000729 AF 83            [24] 1476 	mov	r7,dph
      00072B EC               [12] 1477 	mov	a,r4
      00072C 25 50            [12] 1478 	add	a,_clock_setup_sloc1_1_0
      00072E F5 3A            [12] 1479 	mov	_YEAR,a
      000730 EF               [12] 1480 	mov	a,r7
      000731 35 51            [12] 1481 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      000733 F5 3B            [12] 1482 	mov	(_YEAR + 1),a
                                   1483 ;	lcd.c:361: sendChar(gotkey);
      000735 85 4C 82         [24] 1484 	mov	dpl,_clock_setup_gotkey_1_39
      000738 12 0A D1         [24] 1485 	lcall	_sendChar
      00073B                       1486 00150$:
                                   1487 ;	lcd.c:364: if (current_addr2 == 0x47){
      00073B 74 47            [12] 1488 	mov	a,#0x47
      00073D B5 4F 41         [24] 1489 	cjne	a,_clock_setup_current_addr2_1_39,00152$
                                   1490 ;	lcd.c:365: temp = gotkey - '0';
      000740 AC 4C            [24] 1491 	mov	r4,_clock_setup_gotkey_1_39
      000742 7F 00            [12] 1492 	mov	r7,#0x00
      000744 EC               [12] 1493 	mov	a,r4
      000745 24 D0            [12] 1494 	add	a,#0xD0
      000747 FB               [12] 1495 	mov	r3,a
      000748 EF               [12] 1496 	mov	a,r7
      000749 34 FF            [12] 1497 	addc	a,#0xFF
      00074B FE               [12] 1498 	mov	r6,a
                                   1499 ;	lcd.c:366: YEAR = ((YEAR / 10) * 10) + temp;
      00074C 75 54 0A         [24] 1500 	mov	__divuint_PARM_2,#0x0A
                                   1501 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      00074F 8F 55            [24] 1502 	mov	(__divuint_PARM_2 + 1),r7
      000751 85 3A 82         [24] 1503 	mov	dpl,_YEAR
      000754 85 3B 83         [24] 1504 	mov	dph,(_YEAR + 1)
      000757 C0 06            [24] 1505 	push	ar6
      000759 C0 03            [24] 1506 	push	ar3
      00075B 12 0B 3F         [24] 1507 	lcall	__divuint
      00075E 85 82 54         [24] 1508 	mov	__mulint_PARM_2,dpl
      000761 85 83 55         [24] 1509 	mov	(__mulint_PARM_2 + 1),dph
      000764 90 00 0A         [24] 1510 	mov	dptr,#0x000A
      000767 12 0B 68         [24] 1511 	lcall	__mulint
      00076A E5 82            [12] 1512 	mov	a,dpl
      00076C 85 83 F0         [24] 1513 	mov	b,dph
      00076F D0 03            [24] 1514 	pop	ar3
      000771 D0 06            [24] 1515 	pop	ar6
      000773 2B               [12] 1516 	add	a,r3
      000774 F5 3A            [12] 1517 	mov	_YEAR,a
      000776 EE               [12] 1518 	mov	a,r6
      000777 35 F0            [12] 1519 	addc	a,b
      000779 F5 3B            [12] 1520 	mov	(_YEAR + 1),a
                                   1521 ;	lcd.c:367: sendChar(gotkey);
      00077B 85 4C 82         [24] 1522 	mov	dpl,_clock_setup_gotkey_1_39
      00077E 12 0A D1         [24] 1523 	lcall	_sendChar
      000781                       1524 00152$:
                                   1525 ;	lcd.c:371: if (current_addr2 == 0x43){
      000781 74 43            [12] 1526 	mov	a,#0x43
      000783 B5 4F 58         [24] 1527 	cjne	a,_clock_setup_current_addr2_1_39,00158$
                                   1528 ;	lcd.c:372: temp = gotkey - '0';
      000786 AC 4C            [24] 1529 	mov	r4,_clock_setup_gotkey_1_39
      000788 7F 00            [12] 1530 	mov	r7,#0x00
      00078A EC               [12] 1531 	mov	a,r4
      00078B 24 D0            [12] 1532 	add	a,#0xD0
      00078D FB               [12] 1533 	mov	r3,a
      00078E EF               [12] 1534 	mov	a,r7
      00078F 34 FF            [12] 1535 	addc	a,#0xFF
      000791 FE               [12] 1536 	mov	r6,a
                                   1537 ;	lcd.c:373: temp = (10 * temp) + (MONTH % 10);
      000792 8B 54            [24] 1538 	mov	__mulint_PARM_2,r3
      000794 8E 55            [24] 1539 	mov	(__mulint_PARM_2 + 1),r6
      000796 90 00 0A         [24] 1540 	mov	dptr,#0x000A
      000799 12 0B 68         [24] 1541 	lcall	__mulint
      00079C 85 82 50         [24] 1542 	mov	_clock_setup_sloc1_1_0,dpl
      00079F 85 83 51         [24] 1543 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      0007A2 75 54 0A         [24] 1544 	mov	__moduint_PARM_2,#0x0A
      0007A5 75 55 00         [24] 1545 	mov	(__moduint_PARM_2 + 1),#0x00
      0007A8 85 38 82         [24] 1546 	mov	dpl,_MONTH
      0007AB 85 39 83         [24] 1547 	mov	dph,(_MONTH + 1)
      0007AE 12 0B 85         [24] 1548 	lcall	__moduint
      0007B1 AC 82            [24] 1549 	mov	r4,dpl
      0007B3 AF 83            [24] 1550 	mov	r7,dph
      0007B5 EC               [12] 1551 	mov	a,r4
      0007B6 25 50            [12] 1552 	add	a,_clock_setup_sloc1_1_0
      0007B8 FB               [12] 1553 	mov	r3,a
      0007B9 EF               [12] 1554 	mov	a,r7
      0007BA 35 51            [12] 1555 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      0007BC FE               [12] 1556 	mov	r6,a
                                   1557 ;	lcd.c:375: if (temp < 1 || temp > 12) 				break;
      0007BD C3               [12] 1558 	clr	c
      0007BE EB               [12] 1559 	mov	a,r3
      0007BF 94 01            [12] 1560 	subb	a,#0x01
      0007C1 EE               [12] 1561 	mov	a,r6
      0007C2 94 00            [12] 1562 	subb	a,#0x00
      0007C4 50 03            [24] 1563 	jnc	00452$
      0007C6 02 04 2C         [24] 1564 	ljmp	00216$
      0007C9                       1565 00452$:
      0007C9 C3               [12] 1566 	clr	c
      0007CA 74 0C            [12] 1567 	mov	a,#0x0C
      0007CC 9B               [12] 1568 	subb	a,r3
      0007CD E4               [12] 1569 	clr	a
      0007CE 9E               [12] 1570 	subb	a,r6
      0007CF 50 03            [24] 1571 	jnc	00453$
      0007D1 02 04 2C         [24] 1572 	ljmp	00216$
      0007D4                       1573 00453$:
                                   1574 ;	lcd.c:377: MONTH = temp; 
      0007D4 8B 38            [24] 1575 	mov	_MONTH,r3
      0007D6 8E 39            [24] 1576 	mov	(_MONTH + 1),r6
                                   1577 ;	lcd.c:378: sendChar(gotkey);
      0007D8 85 4C 82         [24] 1578 	mov	dpl,_clock_setup_gotkey_1_39
      0007DB 12 0A D1         [24] 1579 	lcall	_sendChar
      0007DE                       1580 00158$:
                                   1581 ;	lcd.c:382: if (current_addr2 == 0x44){
      0007DE 74 44            [12] 1582 	mov	a,#0x44
      0007E0 B5 4F 5A         [24] 1583 	cjne	a,_clock_setup_current_addr2_1_39,00164$
                                   1584 ;	lcd.c:383: temp = gotkey - '0';
      0007E3 AC 4C            [24] 1585 	mov	r4,_clock_setup_gotkey_1_39
      0007E5 7F 00            [12] 1586 	mov	r7,#0x00
      0007E7 EC               [12] 1587 	mov	a,r4
      0007E8 24 D0            [12] 1588 	add	a,#0xD0
      0007EA FB               [12] 1589 	mov	r3,a
      0007EB EF               [12] 1590 	mov	a,r7
      0007EC 34 FF            [12] 1591 	addc	a,#0xFF
      0007EE FE               [12] 1592 	mov	r6,a
                                   1593 ;	lcd.c:384: temp = ((MONTH / 10) * 10) + temp;
      0007EF 75 54 0A         [24] 1594 	mov	__divuint_PARM_2,#0x0A
                                   1595 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      0007F2 8F 55            [24] 1596 	mov	(__divuint_PARM_2 + 1),r7
      0007F4 85 38 82         [24] 1597 	mov	dpl,_MONTH
      0007F7 85 39 83         [24] 1598 	mov	dph,(_MONTH + 1)
      0007FA C0 06            [24] 1599 	push	ar6
      0007FC C0 03            [24] 1600 	push	ar3
      0007FE 12 0B 3F         [24] 1601 	lcall	__divuint
      000801 85 82 54         [24] 1602 	mov	__mulint_PARM_2,dpl
      000804 85 83 55         [24] 1603 	mov	(__mulint_PARM_2 + 1),dph
      000807 90 00 0A         [24] 1604 	mov	dptr,#0x000A
      00080A 12 0B 68         [24] 1605 	lcall	__mulint
      00080D E5 82            [12] 1606 	mov	a,dpl
      00080F 85 83 F0         [24] 1607 	mov	b,dph
      000812 D0 03            [24] 1608 	pop	ar3
      000814 D0 06            [24] 1609 	pop	ar6
      000816 2B               [12] 1610 	add	a,r3
      000817 FB               [12] 1611 	mov	r3,a
      000818 EE               [12] 1612 	mov	a,r6
      000819 35 F0            [12] 1613 	addc	a,b
      00081B FE               [12] 1614 	mov	r6,a
                                   1615 ;	lcd.c:386: if (temp < 1 || temp > 12) 				break;
      00081C C3               [12] 1616 	clr	c
      00081D EB               [12] 1617 	mov	a,r3
      00081E 94 01            [12] 1618 	subb	a,#0x01
      000820 EE               [12] 1619 	mov	a,r6
      000821 94 00            [12] 1620 	subb	a,#0x00
      000823 50 03            [24] 1621 	jnc	00456$
      000825 02 04 2C         [24] 1622 	ljmp	00216$
      000828                       1623 00456$:
      000828 C3               [12] 1624 	clr	c
      000829 74 0C            [12] 1625 	mov	a,#0x0C
      00082B 9B               [12] 1626 	subb	a,r3
      00082C E4               [12] 1627 	clr	a
      00082D 9E               [12] 1628 	subb	a,r6
      00082E 50 03            [24] 1629 	jnc	00457$
      000830 02 04 2C         [24] 1630 	ljmp	00216$
      000833                       1631 00457$:
                                   1632 ;	lcd.c:388: MONTH = temp; 
      000833 8B 38            [24] 1633 	mov	_MONTH,r3
      000835 8E 39            [24] 1634 	mov	(_MONTH + 1),r6
                                   1635 ;	lcd.c:389: sendChar(gotkey);
      000837 85 4C 82         [24] 1636 	mov	dpl,_clock_setup_gotkey_1_39
      00083A 12 0A D1         [24] 1637 	lcall	_sendChar
      00083D                       1638 00164$:
                                   1639 ;	lcd.c:393: if (current_addr2 == 0x40){
      00083D 74 40            [12] 1640 	mov	a,#0x40
      00083F B5 4F 02         [24] 1641 	cjne	a,_clock_setup_current_addr2_1_39,00458$
      000842 80 03            [24] 1642 	sjmp	00459$
      000844                       1643 00458$:
      000844 02 08 F0         [24] 1644 	ljmp	00181$
      000847                       1645 00459$:
                                   1646 ;	lcd.c:394: temp = gotkey - '0';
      000847 AC 4C            [24] 1647 	mov	r4,_clock_setup_gotkey_1_39
      000849 7F 00            [12] 1648 	mov	r7,#0x00
      00084B EC               [12] 1649 	mov	a,r4
      00084C 24 D0            [12] 1650 	add	a,#0xD0
      00084E FB               [12] 1651 	mov	r3,a
      00084F EF               [12] 1652 	mov	a,r7
      000850 34 FF            [12] 1653 	addc	a,#0xFF
      000852 FE               [12] 1654 	mov	r6,a
                                   1655 ;	lcd.c:395: temp = (10 * temp) + (DAY % 10);
      000853 8B 54            [24] 1656 	mov	__mulint_PARM_2,r3
      000855 8E 55            [24] 1657 	mov	(__mulint_PARM_2 + 1),r6
      000857 90 00 0A         [24] 1658 	mov	dptr,#0x000A
      00085A 12 0B 68         [24] 1659 	lcall	__mulint
      00085D 85 82 50         [24] 1660 	mov	_clock_setup_sloc1_1_0,dpl
      000860 85 83 51         [24] 1661 	mov	(_clock_setup_sloc1_1_0 + 1),dph
      000863 75 54 0A         [24] 1662 	mov	__moduint_PARM_2,#0x0A
      000866 75 55 00         [24] 1663 	mov	(__moduint_PARM_2 + 1),#0x00
      000869 85 36 82         [24] 1664 	mov	dpl,_DAY
      00086C 85 37 83         [24] 1665 	mov	dph,(_DAY + 1)
      00086F 12 0B 85         [24] 1666 	lcall	__moduint
      000872 AC 82            [24] 1667 	mov	r4,dpl
      000874 AF 83            [24] 1668 	mov	r7,dph
      000876 EC               [12] 1669 	mov	a,r4
      000877 25 50            [12] 1670 	add	a,_clock_setup_sloc1_1_0
      000879 FB               [12] 1671 	mov	r3,a
      00087A EF               [12] 1672 	mov	a,r7
      00087B 35 51            [12] 1673 	addc	a,(_clock_setup_sloc1_1_0 + 1)
      00087D FE               [12] 1674 	mov	r6,a
                                   1675 ;	lcd.c:397: if      (temp < 1 || temp > 31) 		break;
      00087E C3               [12] 1676 	clr	c
      00087F EB               [12] 1677 	mov	a,r3
      000880 94 01            [12] 1678 	subb	a,#0x01
      000882 EE               [12] 1679 	mov	a,r6
      000883 94 00            [12] 1680 	subb	a,#0x00
      000885 50 03            [24] 1681 	jnc	00460$
      000887 02 04 2C         [24] 1682 	ljmp	00216$
      00088A                       1683 00460$:
      00088A C3               [12] 1684 	clr	c
      00088B 74 1F            [12] 1685 	mov	a,#0x1F
      00088D 9B               [12] 1686 	subb	a,r3
      00088E E4               [12] 1687 	clr	a
      00088F 9E               [12] 1688 	subb	a,r6
      000890 50 03            [24] 1689 	jnc	00461$
      000892 02 04 2C         [24] 1690 	ljmp	00216$
      000895                       1691 00461$:
                                   1692 ;	lcd.c:398: else if (MONTH == 2 && temp > 28) 		break;
      000895 74 02            [12] 1693 	mov	a,#0x02
      000897 B5 38 06         [24] 1694 	cjne	a,_MONTH,00462$
      00089A E4               [12] 1695 	clr	a
      00089B B5 39 02         [24] 1696 	cjne	a,(_MONTH + 1),00462$
      00089E 80 02            [24] 1697 	sjmp	00463$
      0008A0                       1698 00462$:
      0008A0 80 0B            [24] 1699 	sjmp	00173$
      0008A2                       1700 00463$:
      0008A2 C3               [12] 1701 	clr	c
      0008A3 74 1C            [12] 1702 	mov	a,#0x1C
      0008A5 9B               [12] 1703 	subb	a,r3
      0008A6 E4               [12] 1704 	clr	a
      0008A7 9E               [12] 1705 	subb	a,r6
      0008A8 50 03            [24] 1706 	jnc	00464$
      0008AA 02 04 2C         [24] 1707 	ljmp	00216$
      0008AD                       1708 00464$:
      0008AD                       1709 00173$:
                                   1710 ;	lcd.c:399: else if ((MONTH == 4 || 
      0008AD 74 04            [12] 1711 	mov	a,#0x04
      0008AF B5 38 06         [24] 1712 	cjne	a,_MONTH,00465$
      0008B2 E4               [12] 1713 	clr	a
      0008B3 B5 39 02         [24] 1714 	cjne	a,(_MONTH + 1),00465$
      0008B6 80 23            [24] 1715 	sjmp	00171$
      0008B8                       1716 00465$:
                                   1717 ;	lcd.c:400: MONTH == 6 || 
      0008B8 74 06            [12] 1718 	mov	a,#0x06
      0008BA B5 38 06         [24] 1719 	cjne	a,_MONTH,00466$
      0008BD E4               [12] 1720 	clr	a
      0008BE B5 39 02         [24] 1721 	cjne	a,(_MONTH + 1),00466$
      0008C1 80 18            [24] 1722 	sjmp	00171$
      0008C3                       1723 00466$:
                                   1724 ;	lcd.c:401: MONTH == 9 || 
      0008C3 74 09            [12] 1725 	mov	a,#0x09
      0008C5 B5 38 06         [24] 1726 	cjne	a,_MONTH,00467$
      0008C8 E4               [12] 1727 	clr	a
      0008C9 B5 39 02         [24] 1728 	cjne	a,(_MONTH + 1),00467$
      0008CC 80 0D            [24] 1729 	sjmp	00171$
      0008CE                       1730 00467$:
                                   1731 ;	lcd.c:402: MONTH == 11) && temp > 30)	break;
      0008CE 74 0B            [12] 1732 	mov	a,#0x0B
      0008D0 B5 38 06         [24] 1733 	cjne	a,_MONTH,00468$
      0008D3 E4               [12] 1734 	clr	a
      0008D4 B5 39 02         [24] 1735 	cjne	a,(_MONTH + 1),00468$
      0008D7 80 02            [24] 1736 	sjmp	00469$
      0008D9                       1737 00468$:
      0008D9 80 0B            [24] 1738 	sjmp	00166$
      0008DB                       1739 00469$:
      0008DB                       1740 00171$:
      0008DB C3               [12] 1741 	clr	c
      0008DC 74 1E            [12] 1742 	mov	a,#0x1E
      0008DE 9B               [12] 1743 	subb	a,r3
      0008DF E4               [12] 1744 	clr	a
      0008E0 9E               [12] 1745 	subb	a,r6
      0008E1 50 03            [24] 1746 	jnc	00470$
      0008E3 02 04 2C         [24] 1747 	ljmp	00216$
      0008E6                       1748 00470$:
      0008E6                       1749 00166$:
                                   1750 ;	lcd.c:404: DAY = temp; 
      0008E6 8B 36            [24] 1751 	mov	_DAY,r3
      0008E8 8E 37            [24] 1752 	mov	(_DAY + 1),r6
                                   1753 ;	lcd.c:405: sendChar(gotkey);
      0008EA 85 4C 82         [24] 1754 	mov	dpl,_clock_setup_gotkey_1_39
      0008ED 12 0A D1         [24] 1755 	lcall	_sendChar
      0008F0                       1756 00181$:
                                   1757 ;	lcd.c:409: if (current_addr2 == 0x41){
      0008F0 74 41            [12] 1758 	mov	a,#0x41
      0008F2 B5 4F 02         [24] 1759 	cjne	a,_clock_setup_current_addr2_1_39,00471$
      0008F5 80 03            [24] 1760 	sjmp	00472$
      0008F7                       1761 00471$:
      0008F7 02 09 A5         [24] 1762 	ljmp	00198$
      0008FA                       1763 00472$:
                                   1764 ;	lcd.c:410: temp = gotkey - '0';
      0008FA AC 4C            [24] 1765 	mov	r4,_clock_setup_gotkey_1_39
      0008FC 7F 00            [12] 1766 	mov	r7,#0x00
      0008FE EC               [12] 1767 	mov	a,r4
      0008FF 24 D0            [12] 1768 	add	a,#0xD0
      000901 FB               [12] 1769 	mov	r3,a
      000902 EF               [12] 1770 	mov	a,r7
      000903 34 FF            [12] 1771 	addc	a,#0xFF
      000905 FE               [12] 1772 	mov	r6,a
                                   1773 ;	lcd.c:411: temp = ((DAY / 10) * 10) + temp;
      000906 75 54 0A         [24] 1774 	mov	__divuint_PARM_2,#0x0A
                                   1775 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      000909 8F 55            [24] 1776 	mov	(__divuint_PARM_2 + 1),r7
      00090B 85 36 82         [24] 1777 	mov	dpl,_DAY
      00090E 85 37 83         [24] 1778 	mov	dph,(_DAY + 1)
      000911 C0 06            [24] 1779 	push	ar6
      000913 C0 03            [24] 1780 	push	ar3
      000915 12 0B 3F         [24] 1781 	lcall	__divuint
      000918 85 82 54         [24] 1782 	mov	__mulint_PARM_2,dpl
      00091B 85 83 55         [24] 1783 	mov	(__mulint_PARM_2 + 1),dph
      00091E 90 00 0A         [24] 1784 	mov	dptr,#0x000A
      000921 12 0B 68         [24] 1785 	lcall	__mulint
      000924 E5 82            [12] 1786 	mov	a,dpl
      000926 85 83 F0         [24] 1787 	mov	b,dph
      000929 D0 03            [24] 1788 	pop	ar3
      00092B D0 06            [24] 1789 	pop	ar6
      00092D 2B               [12] 1790 	add	a,r3
      00092E FB               [12] 1791 	mov	r3,a
      00092F EE               [12] 1792 	mov	a,r6
      000930 35 F0            [12] 1793 	addc	a,b
      000932 FE               [12] 1794 	mov	r6,a
                                   1795 ;	lcd.c:413: if      (temp < 1 || temp > 31) 		break;
      000933 C3               [12] 1796 	clr	c
      000934 EB               [12] 1797 	mov	a,r3
      000935 94 01            [12] 1798 	subb	a,#0x01
      000937 EE               [12] 1799 	mov	a,r6
      000938 94 00            [12] 1800 	subb	a,#0x00
      00093A 50 03            [24] 1801 	jnc	00473$
      00093C 02 04 2C         [24] 1802 	ljmp	00216$
      00093F                       1803 00473$:
      00093F C3               [12] 1804 	clr	c
      000940 74 1F            [12] 1805 	mov	a,#0x1F
      000942 9B               [12] 1806 	subb	a,r3
      000943 E4               [12] 1807 	clr	a
      000944 9E               [12] 1808 	subb	a,r6
      000945 50 03            [24] 1809 	jnc	00474$
      000947 02 04 2C         [24] 1810 	ljmp	00216$
      00094A                       1811 00474$:
                                   1812 ;	lcd.c:414: else if (MONTH == 2 && temp > 28) 		break;
      00094A 74 02            [12] 1813 	mov	a,#0x02
      00094C B5 38 06         [24] 1814 	cjne	a,_MONTH,00475$
      00094F E4               [12] 1815 	clr	a
      000950 B5 39 02         [24] 1816 	cjne	a,(_MONTH + 1),00475$
      000953 80 02            [24] 1817 	sjmp	00476$
      000955                       1818 00475$:
      000955 80 0B            [24] 1819 	sjmp	00190$
      000957                       1820 00476$:
      000957 C3               [12] 1821 	clr	c
      000958 74 1C            [12] 1822 	mov	a,#0x1C
      00095A 9B               [12] 1823 	subb	a,r3
      00095B E4               [12] 1824 	clr	a
      00095C 9E               [12] 1825 	subb	a,r6
      00095D 50 03            [24] 1826 	jnc	00477$
      00095F 02 04 2C         [24] 1827 	ljmp	00216$
      000962                       1828 00477$:
      000962                       1829 00190$:
                                   1830 ;	lcd.c:415: else if ((MONTH == 4 || 
      000962 74 04            [12] 1831 	mov	a,#0x04
      000964 B5 38 06         [24] 1832 	cjne	a,_MONTH,00478$
      000967 E4               [12] 1833 	clr	a
      000968 B5 39 02         [24] 1834 	cjne	a,(_MONTH + 1),00478$
      00096B 80 23            [24] 1835 	sjmp	00188$
      00096D                       1836 00478$:
                                   1837 ;	lcd.c:416: MONTH == 6 || 
      00096D 74 06            [12] 1838 	mov	a,#0x06
      00096F B5 38 06         [24] 1839 	cjne	a,_MONTH,00479$
      000972 E4               [12] 1840 	clr	a
      000973 B5 39 02         [24] 1841 	cjne	a,(_MONTH + 1),00479$
      000976 80 18            [24] 1842 	sjmp	00188$
      000978                       1843 00479$:
                                   1844 ;	lcd.c:417: MONTH == 9 || 
      000978 74 09            [12] 1845 	mov	a,#0x09
      00097A B5 38 06         [24] 1846 	cjne	a,_MONTH,00480$
      00097D E4               [12] 1847 	clr	a
      00097E B5 39 02         [24] 1848 	cjne	a,(_MONTH + 1),00480$
      000981 80 0D            [24] 1849 	sjmp	00188$
      000983                       1850 00480$:
                                   1851 ;	lcd.c:418: MONTH == 11) && temp > 30)	break;
      000983 74 0B            [12] 1852 	mov	a,#0x0B
      000985 B5 38 06         [24] 1853 	cjne	a,_MONTH,00481$
      000988 E4               [12] 1854 	clr	a
      000989 B5 39 02         [24] 1855 	cjne	a,(_MONTH + 1),00481$
      00098C 80 02            [24] 1856 	sjmp	00482$
      00098E                       1857 00481$:
      00098E 80 0B            [24] 1858 	sjmp	00183$
      000990                       1859 00482$:
      000990                       1860 00188$:
      000990 C3               [12] 1861 	clr	c
      000991 74 1E            [12] 1862 	mov	a,#0x1E
      000993 9B               [12] 1863 	subb	a,r3
      000994 E4               [12] 1864 	clr	a
      000995 9E               [12] 1865 	subb	a,r6
      000996 50 03            [24] 1866 	jnc	00483$
      000998 02 04 2C         [24] 1867 	ljmp	00216$
      00099B                       1868 00483$:
      00099B                       1869 00183$:
                                   1870 ;	lcd.c:420: DAY = temp; 
      00099B 8B 36            [24] 1871 	mov	_DAY,r3
      00099D 8E 37            [24] 1872 	mov	(_DAY + 1),r6
                                   1873 ;	lcd.c:421: sendChar(gotkey);
      00099F 85 4C 82         [24] 1874 	mov	dpl,_clock_setup_gotkey_1_39
      0009A2 12 0A D1         [24] 1875 	lcall	_sendChar
      0009A5                       1876 00198$:
                                   1877 ;	lcd.c:425: current_addr2++;
      0009A5 05 4F            [12] 1878 	inc	_clock_setup_current_addr2_1_39
                                   1879 ;	lcd.c:426: break;
      0009A7 02 04 2C         [24] 1880 	ljmp	00216$
      0009AA                       1881 00200$:
                                   1882 ;	lcd.c:430: if (gotkey == '*'){		// Move cursor to the left
      0009AA 74 2A            [12] 1883 	mov	a,#0x2A
      0009AC B5 4C 1D         [24] 1884 	cjne	a,_clock_setup_gotkey_1_39,00206$
                                   1885 ;	lcd.c:432: gotkey_pressed = 1;
      0009AF 75 4D 01         [24] 1886 	mov	_clock_setup_gotkey_pressed_1_39,#0x01
                                   1887 ;	lcd.c:434: if (current_addr2 == 0x40){
      0009B2 74 40            [12] 1888 	mov	a,#0x40
      0009B4 B5 4F 0C         [24] 1889 	cjne	a,_clock_setup_current_addr2_1_39,00204$
                                   1890 ;	lcd.c:435: setDdRamAddress(0x48);
      0009B7 75 82 48         [24] 1891 	mov	dpl,#0x48
      0009BA 12 0A C1         [24] 1892 	lcall	_setDdRamAddress
                                   1893 ;	lcd.c:436: current_addr2 = 0x48;
      0009BD 75 4F 48         [24] 1894 	mov	_clock_setup_current_addr2_1_39,#0x48
                                   1895 ;	lcd.c:437: break;
      0009C0 02 04 2C         [24] 1896 	ljmp	00216$
      0009C3                       1897 00204$:
                                   1898 ;	lcd.c:439: cursorOrDisplayShift(0, 0);
      0009C3 C2 04            [12] 1899 	clr	_cursorOrDisplayShift_PARM_1
      0009C5 C2 05            [12] 1900 	clr	_cursorOrDisplayShift_PARM_2
      0009C7 12 0A 8C         [24] 1901 	lcall	_cursorOrDisplayShift
                                   1902 ;	lcd.c:440: current_addr2--;
      0009CA 15 4F            [12] 1903 	dec	_clock_setup_current_addr2_1_39
      0009CC                       1904 00206$:
                                   1905 ;	lcd.c:444: if (gotkey == '#'){		// Move cursor to the right
      0009CC 74 23            [12] 1906 	mov	a,#0x23
      0009CE B5 4C 02         [24] 1907 	cjne	a,_clock_setup_gotkey_1_39,00488$
      0009D1 80 03            [24] 1908 	sjmp	00489$
      0009D3                       1909 00488$:
      0009D3 02 04 2C         [24] 1910 	ljmp	00216$
      0009D6                       1911 00489$:
                                   1912 ;	lcd.c:446: gotkey_pressed = 1;
      0009D6 75 4D 01         [24] 1913 	mov	_clock_setup_gotkey_pressed_1_39,#0x01
                                   1914 ;	lcd.c:448: if (current_addr2 == 0x47){
      0009D9 74 47            [12] 1915 	mov	a,#0x47
      0009DB B5 4F 0C         [24] 1916 	cjne	a,_clock_setup_current_addr2_1_39,00208$
                                   1917 ;	lcd.c:449: setDdRamAddress(0x40);
      0009DE 75 82 40         [24] 1918 	mov	dpl,#0x40
      0009E1 12 0A C1         [24] 1919 	lcall	_setDdRamAddress
                                   1920 ;	lcd.c:450: current_addr2 = 0x40;
      0009E4 75 4F 40         [24] 1921 	mov	_clock_setup_current_addr2_1_39,#0x40
                                   1922 ;	lcd.c:451: break;
      0009E7 02 04 2C         [24] 1923 	ljmp	00216$
      0009EA                       1924 00208$:
                                   1925 ;	lcd.c:453: cursorOrDisplayShift(0, 1);
      0009EA C2 04            [12] 1926 	clr	_cursorOrDisplayShift_PARM_1
      0009EC D2 05            [12] 1927 	setb	_cursorOrDisplayShift_PARM_2
      0009EE 12 0A 8C         [24] 1928 	lcall	_cursorOrDisplayShift
                                   1929 ;	lcd.c:454: current_addr2++;
      0009F1 05 4F            [12] 1930 	inc	_clock_setup_current_addr2_1_39
                                   1931 ;	lcd.c:457: break;
      0009F3 02 04 2C         [24] 1932 	ljmp	00216$
      0009F6                       1933 00214$:
                                   1934 ;	lcd.c:462: row = row >> 1;   // No key is detected yet, try the next row
      0009F6 EA               [12] 1935 	mov	a,r2
      0009F7 C3               [12] 1936 	clr	c
      0009F8 13               [12] 1937 	rrc	a
      0009F9 FA               [12] 1938 	mov	r2,a
                                   1939 ;	lcd.c:463: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      0009FA 43 02 F0         [24] 1940 	orl	ar2,#0xF0
                                   1941 ;	lcd.c:228: for (i=0;i<4;++i){ // loop over the 4 rows
      0009FD 0D               [12] 1942 	inc	r5
      0009FE BD 04 00         [24] 1943 	cjne	r5,#0x04,00492$
      000A01                       1944 00492$:
      000A01 50 03            [24] 1945 	jnc	00493$
      000A03 02 04 46         [24] 1946 	ljmp	00224$
      000A06                       1947 00493$:
                                   1948 ;	lcd.c:467: gotkey = 0;
      000A06 02 04 2C         [24] 1949 	ljmp	00216$
      000A09                       1950 00218$:
                                   1951 ;	lcd.c:472: if      (line1) setDdRamAddress(0x08);
      000A09 E5 3E            [12] 1952 	mov	a,_clock_setup_line1_1_38
      000A0B 45 3F            [12] 1953 	orl	a,(_clock_setup_line1_1_38 + 1)
      000A0D 60 06            [24] 1954 	jz	00222$
      000A0F 75 82 08         [24] 1955 	mov	dpl,#0x08
      000A12 02 0A C1         [24] 1956 	ljmp	_setDdRamAddress
      000A15                       1957 00222$:
                                   1958 ;	lcd.c:473: else if (line2) setDdRamAddress(0x48);
      000A15 E5 3C            [12] 1959 	mov	a,_clock_setup_PARM_2
      000A17 45 3D            [12] 1960 	orl	a,(_clock_setup_PARM_2 + 1)
      000A19 60 06            [24] 1961 	jz	00226$
      000A1B 75 82 48         [24] 1962 	mov	dpl,#0x48
      000A1E 02 0A C1         [24] 1963 	ljmp	_setDdRamAddress
      000A21                       1964 00226$:
      000A21 22               [24] 1965 	ret
                                   1966 ;------------------------------------------------------------
                                   1967 ;Allocation info for local variables in function 'sendValue'
                                   1968 ;------------------------------------------------------------
                                   1969 ;value                     Allocated with name '_sendValue_PARM_2'
                                   1970 ;address                   Allocated to registers 
                                   1971 ;------------------------------------------------------------
                                   1972 ;	lcd.c:479: void sendValue(char address, unsigned int value){
                                   1973 ;	-----------------------------------------
                                   1974 ;	 function sendValue
                                   1975 ;	-----------------------------------------
      000A22                       1976 _sendValue:
                                   1977 ;	lcd.c:480: setDdRamAddress(address);
      000A22 12 0A C1         [24] 1978 	lcall	_setDdRamAddress
                                   1979 ;	lcd.c:481: sendChar((value / 10) + '0');
      000A25 75 54 0A         [24] 1980 	mov	__divuint_PARM_2,#0x0A
      000A28 75 55 00         [24] 1981 	mov	(__divuint_PARM_2 + 1),#0x00
      000A2B 85 52 82         [24] 1982 	mov	dpl,_sendValue_PARM_2
      000A2E 85 53 83         [24] 1983 	mov	dph,(_sendValue_PARM_2 + 1)
      000A31 12 0B 3F         [24] 1984 	lcall	__divuint
      000A34 AE 82            [24] 1985 	mov	r6,dpl
      000A36 74 30            [12] 1986 	mov	a,#0x30
      000A38 2E               [12] 1987 	add	a,r6
      000A39 F5 82            [12] 1988 	mov	dpl,a
      000A3B 12 0A D1         [24] 1989 	lcall	_sendChar
                                   1990 ;	lcd.c:482: sendChar((value % 10) + '0');
      000A3E 75 54 0A         [24] 1991 	mov	__moduint_PARM_2,#0x0A
      000A41 75 55 00         [24] 1992 	mov	(__moduint_PARM_2 + 1),#0x00
      000A44 85 52 82         [24] 1993 	mov	dpl,_sendValue_PARM_2
      000A47 85 53 83         [24] 1994 	mov	dph,(_sendValue_PARM_2 + 1)
      000A4A 12 0B 85         [24] 1995 	lcall	__moduint
      000A4D AE 82            [24] 1996 	mov	r6,dpl
      000A4F 74 30            [12] 1997 	mov	a,#0x30
      000A51 2E               [12] 1998 	add	a,r6
      000A52 F5 82            [12] 1999 	mov	dpl,a
      000A54 02 0A D1         [24] 2000 	ljmp	_sendChar
                                   2001 ;------------------------------------------------------------
                                   2002 ;Allocation info for local variables in function 'returnHome'
                                   2003 ;------------------------------------------------------------
                                   2004 ;	lcd.c:487: void returnHome(void) {
                                   2005 ;	-----------------------------------------
                                   2006 ;	 function returnHome
                                   2007 ;	-----------------------------------------
      000A57                       2008 _returnHome:
                                   2009 ;	lcd.c:488: RS = 0;
      000A57 C2 A3            [12] 2010 	clr	_P2_3
                                   2011 ;	lcd.c:489: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
      000A59 75 90 02         [24] 2012 	mov	_P1,#0x02
                                   2013 ;	lcd.c:490: E = 1;
      000A5C D2 A2            [12] 2014 	setb	_P2_2
                                   2015 ;	lcd.c:491: E = 0;
      000A5E C2 A2            [12] 2016 	clr	_P2_2
                                   2017 ;	lcd.c:492: big_delay(); // This operation needs a bigger delay
      000A60 02 0B 14         [24] 2018 	ljmp	_big_delay
                                   2019 ;------------------------------------------------------------
                                   2020 ;Allocation info for local variables in function 'entryModeSet'
                                   2021 ;------------------------------------------------------------
                                   2022 ;	lcd.c:495: void entryModeSet() {
                                   2023 ;	-----------------------------------------
                                   2024 ;	 function entryModeSet
                                   2025 ;	-----------------------------------------
      000A63                       2026 _entryModeSet:
                                   2027 ;	lcd.c:496: RS = 0;
      000A63 C2 A3            [12] 2028 	clr	_P2_3
                                   2029 ;	lcd.c:497: P1 = 0x06;  
      000A65 75 90 06         [24] 2030 	mov	_P1,#0x06
                                   2031 ;	lcd.c:498: E = 1;
      000A68 D2 A2            [12] 2032 	setb	_P2_2
                                   2033 ;	lcd.c:499: E = 0;
      000A6A C2 A2            [12] 2034 	clr	_P2_2
                                   2035 ;	lcd.c:500: delay();
      000A6C 02 0B 0B         [24] 2036 	ljmp	_delay
                                   2037 ;------------------------------------------------------------
                                   2038 ;Allocation info for local variables in function 'displayOnOffControl'
                                   2039 ;------------------------------------------------------------
                                   2040 ;	lcd.c:503: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
                                   2041 ;	-----------------------------------------
                                   2042 ;	 function displayOnOffControl
                                   2043 ;	-----------------------------------------
      000A6F                       2044 _displayOnOffControl:
                                   2045 ;	lcd.c:504: P1_7 = 0;
      000A6F C2 97            [12] 2046 	clr	_P1_7
                                   2047 ;	lcd.c:505: P1_6 = 0;
      000A71 C2 96            [12] 2048 	clr	_P1_6
                                   2049 ;	lcd.c:506: P1_5 = 0;
      000A73 C2 95            [12] 2050 	clr	_P1_5
                                   2051 ;	lcd.c:507: P1_4 = 0;
      000A75 C2 94            [12] 2052 	clr	_P1_4
                                   2053 ;	lcd.c:508: P1_3 = 1;
      000A77 D2 93            [12] 2054 	setb	_P1_3
                                   2055 ;	lcd.c:509: P1_2 = display;
      000A79 A2 01            [12] 2056 	mov	c,_displayOnOffControl_PARM_1
      000A7B 92 92            [24] 2057 	mov	_P1_2,c
                                   2058 ;	lcd.c:510: P1_1 = cursor;
      000A7D A2 02            [12] 2059 	mov	c,_displayOnOffControl_PARM_2
      000A7F 92 91            [24] 2060 	mov	_P1_1,c
                                   2061 ;	lcd.c:511: P1_0 = blinking;
      000A81 A2 03            [12] 2062 	mov	c,_displayOnOffControl_PARM_3
      000A83 92 90            [24] 2063 	mov	_P1_0,c
                                   2064 ;	lcd.c:512: E = 1;
      000A85 D2 A2            [12] 2065 	setb	_P2_2
                                   2066 ;	lcd.c:513: E = 0;
      000A87 C2 A2            [12] 2067 	clr	_P2_2
                                   2068 ;	lcd.c:514: delay();
      000A89 02 0B 0B         [24] 2069 	ljmp	_delay
                                   2070 ;------------------------------------------------------------
                                   2071 ;Allocation info for local variables in function 'cursorOrDisplayShift'
                                   2072 ;------------------------------------------------------------
                                   2073 ;	lcd.c:517: void cursorOrDisplayShift(__bit sc, __bit rl) {
                                   2074 ;	-----------------------------------------
                                   2075 ;	 function cursorOrDisplayShift
                                   2076 ;	-----------------------------------------
      000A8C                       2077 _cursorOrDisplayShift:
                                   2078 ;	lcd.c:518: RS = 0;
      000A8C C2 A3            [12] 2079 	clr	_P2_3
                                   2080 ;	lcd.c:519: P1_7 = 0;
      000A8E C2 97            [12] 2081 	clr	_P1_7
                                   2082 ;	lcd.c:520: P1_6 = 0;
      000A90 C2 96            [12] 2083 	clr	_P1_6
                                   2084 ;	lcd.c:521: P1_5 = 0;
      000A92 C2 95            [12] 2085 	clr	_P1_5
                                   2086 ;	lcd.c:522: P1_4 = 1;
      000A94 D2 94            [12] 2087 	setb	_P1_4
                                   2088 ;	lcd.c:523: P1_3 = sc;
      000A96 A2 04            [12] 2089 	mov	c,_cursorOrDisplayShift_PARM_1
      000A98 92 93            [24] 2090 	mov	_P1_3,c
                                   2091 ;	lcd.c:524: P1_2 = rl;
      000A9A A2 05            [12] 2092 	mov	c,_cursorOrDisplayShift_PARM_2
      000A9C 92 92            [24] 2093 	mov	_P1_2,c
                                   2094 ;	lcd.c:525: P1_1 = 0;
      000A9E C2 91            [12] 2095 	clr	_P1_1
                                   2096 ;	lcd.c:526: P1_0 = 0;
      000AA0 C2 90            [12] 2097 	clr	_P1_0
                                   2098 ;	lcd.c:527: E = 1;
      000AA2 D2 A2            [12] 2099 	setb	_P2_2
                                   2100 ;	lcd.c:528: E = 0;
      000AA4 C2 A2            [12] 2101 	clr	_P2_2
                                   2102 ;	lcd.c:529: delay();
      000AA6 02 0B 0B         [24] 2103 	ljmp	_delay
                                   2104 ;------------------------------------------------------------
                                   2105 ;Allocation info for local variables in function 'functionSet'
                                   2106 ;------------------------------------------------------------
                                   2107 ;	lcd.c:532: void functionSet(void) {
                                   2108 ;	-----------------------------------------
                                   2109 ;	 function functionSet
                                   2110 ;	-----------------------------------------
      000AA9                       2111 _functionSet:
                                   2112 ;	lcd.c:533: RS = 0;
      000AA9 C2 A3            [12] 2113 	clr	_P2_3
                                   2114 ;	lcd.c:534: P1 = 0x38; // 8-bit mode, 2 lines LCD
      000AAB 75 90 38         [24] 2115 	mov	_P1,#0x38
                                   2116 ;	lcd.c:535: E = 1;
      000AAE D2 A2            [12] 2117 	setb	_P2_2
                                   2118 ;	lcd.c:536: E = 0;
      000AB0 C2 A2            [12] 2119 	clr	_P2_2
                                   2120 ;	lcd.c:537: delay();
      000AB2 02 0B 0B         [24] 2121 	ljmp	_delay
                                   2122 ;------------------------------------------------------------
                                   2123 ;Allocation info for local variables in function 'clearDisplay'
                                   2124 ;------------------------------------------------------------
                                   2125 ;	lcd.c:540: void clearDisplay(void) {
                                   2126 ;	-----------------------------------------
                                   2127 ;	 function clearDisplay
                                   2128 ;	-----------------------------------------
      000AB5                       2129 _clearDisplay:
                                   2130 ;	lcd.c:541: RS = 0;
      000AB5 C2 A3            [12] 2131 	clr	_P2_3
                                   2132 ;	lcd.c:542: P1 = 0x01; // command to clear LCD and return the cursor to the home position
      000AB7 75 90 01         [24] 2133 	mov	_P1,#0x01
                                   2134 ;	lcd.c:543: E = 1;
      000ABA D2 A2            [12] 2135 	setb	_P2_2
                                   2136 ;	lcd.c:544: E = 0;
      000ABC C2 A2            [12] 2137 	clr	_P2_2
                                   2138 ;	lcd.c:545: big_delay(); // This operation needs a bigger delay
      000ABE 02 0B 14         [24] 2139 	ljmp	_big_delay
                                   2140 ;------------------------------------------------------------
                                   2141 ;Allocation info for local variables in function 'setDdRamAddress'
                                   2142 ;------------------------------------------------------------
                                   2143 ;address                   Allocated to registers r7 
                                   2144 ;------------------------------------------------------------
                                   2145 ;	lcd.c:548: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
                                   2146 ;	-----------------------------------------
                                   2147 ;	 function setDdRamAddress
                                   2148 ;	-----------------------------------------
      000AC1                       2149 _setDdRamAddress:
      000AC1 AF 82            [24] 2150 	mov	r7,dpl
                                   2151 ;	lcd.c:549: RS = 0;
      000AC3 C2 A3            [12] 2152 	clr	_P2_3
                                   2153 ;	lcd.c:550: P1 = address | 0x80;  // set the MSB to detect that this is an address
      000AC5 74 80            [12] 2154 	mov	a,#0x80
      000AC7 4F               [12] 2155 	orl	a,r7
      000AC8 F5 90            [12] 2156 	mov	_P1,a
                                   2157 ;	lcd.c:551: E = 1;
      000ACA D2 A2            [12] 2158 	setb	_P2_2
                                   2159 ;	lcd.c:552: E = 0;
      000ACC C2 A2            [12] 2160 	clr	_P2_2
                                   2161 ;	lcd.c:553: delay();
      000ACE 02 0B 0B         [24] 2162 	ljmp	_delay
                                   2163 ;------------------------------------------------------------
                                   2164 ;Allocation info for local variables in function 'sendChar'
                                   2165 ;------------------------------------------------------------
                                   2166 ;c                         Allocated to registers r7 
                                   2167 ;------------------------------------------------------------
                                   2168 ;	lcd.c:558: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
                                   2169 ;	-----------------------------------------
                                   2170 ;	 function sendChar
                                   2171 ;	-----------------------------------------
      000AD1                       2172 _sendChar:
      000AD1 AF 82            [24] 2173 	mov	r7,dpl
                                   2174 ;	lcd.c:559: RS = 1;
      000AD3 D2 A3            [12] 2175 	setb	_P2_3
                                   2176 ;	lcd.c:560: P1 = c;
      000AD5 8F 90            [24] 2177 	mov	_P1,r7
                                   2178 ;	lcd.c:561: E = 1;
      000AD7 D2 A2            [12] 2179 	setb	_P2_2
                                   2180 ;	lcd.c:562: E = 0;
      000AD9 C2 A2            [12] 2181 	clr	_P2_2
                                   2182 ;	lcd.c:563: delay();
      000ADB 02 0B 0B         [24] 2183 	ljmp	_delay
                                   2184 ;------------------------------------------------------------
                                   2185 ;Allocation info for local variables in function 'sendString'
                                   2186 ;------------------------------------------------------------
                                   2187 ;str                       Allocated to registers 
                                   2188 ;c                         Allocated to registers r3 
                                   2189 ;------------------------------------------------------------
                                   2190 ;	lcd.c:566: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
                                   2191 ;	-----------------------------------------
                                   2192 ;	 function sendString
                                   2193 ;	-----------------------------------------
      000ADE                       2194 _sendString:
      000ADE AD 82            [24] 2195 	mov	r5,dpl
      000AE0 AE 83            [24] 2196 	mov	r6,dph
      000AE2 AF F0            [24] 2197 	mov	r7,b
                                   2198 ;	lcd.c:568: while (c = *str++) {
      000AE4                       2199 00101$:
      000AE4 8D 82            [24] 2200 	mov	dpl,r5
      000AE6 8E 83            [24] 2201 	mov	dph,r6
      000AE8 8F F0            [24] 2202 	mov	b,r7
      000AEA 12 0B D2         [24] 2203 	lcall	__gptrget
      000AED FC               [12] 2204 	mov	r4,a
      000AEE A3               [24] 2205 	inc	dptr
      000AEF AD 82            [24] 2206 	mov	r5,dpl
      000AF1 AE 83            [24] 2207 	mov	r6,dph
      000AF3 EC               [12] 2208 	mov	a,r4
      000AF4 FB               [12] 2209 	mov	r3,a
      000AF5 60 13            [24] 2210 	jz	00104$
                                   2211 ;	lcd.c:569: sendChar(c);
      000AF7 8B 82            [24] 2212 	mov	dpl,r3
      000AF9 C0 07            [24] 2213 	push	ar7
      000AFB C0 06            [24] 2214 	push	ar6
      000AFD C0 05            [24] 2215 	push	ar5
      000AFF 12 0A D1         [24] 2216 	lcall	_sendChar
      000B02 D0 05            [24] 2217 	pop	ar5
      000B04 D0 06            [24] 2218 	pop	ar6
      000B06 D0 07            [24] 2219 	pop	ar7
      000B08 80 DA            [24] 2220 	sjmp	00101$
      000B0A                       2221 00104$:
      000B0A 22               [24] 2222 	ret
                                   2223 ;------------------------------------------------------------
                                   2224 ;Allocation info for local variables in function 'delay'
                                   2225 ;------------------------------------------------------------
                                   2226 ;c                         Allocated to registers r7 
                                   2227 ;------------------------------------------------------------
                                   2228 ;	lcd.c:573: void delay(void) {
                                   2229 ;	-----------------------------------------
                                   2230 ;	 function delay
                                   2231 ;	-----------------------------------------
      000B0B                       2232 _delay:
                                   2233 ;	lcd.c:575: for (c = 0; c < 50; c++);
      000B0B 7F 32            [12] 2234 	mov	r7,#0x32
      000B0D                       2235 00104$:
      000B0D EF               [12] 2236 	mov	a,r7
      000B0E 14               [12] 2237 	dec	a
      000B0F FE               [12] 2238 	mov	r6,a
      000B10 FF               [12] 2239 	mov	r7,a
      000B11 70 FA            [24] 2240 	jnz	00104$
      000B13 22               [24] 2241 	ret
                                   2242 ;------------------------------------------------------------
                                   2243 ;Allocation info for local variables in function 'big_delay'
                                   2244 ;------------------------------------------------------------
                                   2245 ;c                         Allocated to registers r7 
                                   2246 ;------------------------------------------------------------
                                   2247 ;	lcd.c:578: void big_delay(void) {
                                   2248 ;	-----------------------------------------
                                   2249 ;	 function big_delay
                                   2250 ;	-----------------------------------------
      000B14                       2251 _big_delay:
                                   2252 ;	lcd.c:580: for (c = 0; c < 255; c++);
      000B14 7F FF            [12] 2253 	mov	r7,#0xFF
      000B16                       2254 00104$:
      000B16 8F 06            [24] 2255 	mov	ar6,r7
      000B18 1E               [12] 2256 	dec	r6
      000B19 EE               [12] 2257 	mov	a,r6
      000B1A FF               [12] 2258 	mov	r7,a
      000B1B 70 F9            [24] 2259 	jnz	00104$
      000B1D 22               [24] 2260 	ret
                                   2261 ;------------------------------------------------------------
                                   2262 ;Allocation info for local variables in function 'timer_delay'
                                   2263 ;------------------------------------------------------------
                                   2264 ;a                         Allocated to registers r7 
                                   2265 ;------------------------------------------------------------
                                   2266 ;	lcd.c:584: void timer_delay(void){
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function timer_delay
                                   2269 ;	-----------------------------------------
      000B1E                       2270 _timer_delay:
                                   2271 ;	lcd.c:587: TMOD = 0x01;
      000B1E 75 89 01         [24] 2272 	mov	_TMOD,#0x01
                                   2273 ;	lcd.c:588: while (a != 0){
      000B21 7F 14            [12] 2274 	mov	r7,#0x14
      000B23                       2275 00104$:
      000B23 EF               [12] 2276 	mov	a,r7
      000B24 60 12            [24] 2277 	jz	00107$
                                   2278 ;	lcd.c:589: TL0 = 0xAF;
      000B26 75 8A AF         [24] 2279 	mov	_TL0,#0xAF
                                   2280 ;	lcd.c:590: TH0 = 0x3C;
      000B29 75 8C 3C         [24] 2281 	mov	_TH0,#0x3C
                                   2282 ;	lcd.c:591: TR0 = 1;
      000B2C D2 8C            [12] 2283 	setb	_TR0
                                   2284 ;	lcd.c:592: while (!TF0) ;
      000B2E                       2285 00101$:
      000B2E 30 8D FD         [24] 2286 	jnb	_TF0,00101$
                                   2287 ;	lcd.c:593: TR0 = 0;
      000B31 C2 8C            [12] 2288 	clr	_TR0
                                   2289 ;	lcd.c:594: TF0 = 0;
      000B33 C2 8D            [12] 2290 	clr	_TF0
                                   2291 ;	lcd.c:595: a = a-1;
      000B35 1F               [12] 2292 	dec	r7
      000B36 80 EB            [24] 2293 	sjmp	00104$
      000B38                       2294 00107$:
      000B38 22               [24] 2295 	ret
                                   2296 ;------------------------------------------------------------
                                   2297 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                   2298 ;------------------------------------------------------------
                                   2299 ;	lcd.c:602: void _sdcc_gsinit_startup(void) {
                                   2300 ;	-----------------------------------------
                                   2301 ;	 function _sdcc_gsinit_startup
                                   2302 ;	-----------------------------------------
      000B39                       2303 __sdcc_gsinit_startup:
                                   2304 ;	lcd.c:606: __endasm;
      000B39 75 81 5F         [24] 2305 	mov sp, #0x5F
                                   2306 ;	lcd.c:607: main();
      000B3C 02 00 68         [24] 2307 	ljmp	_main
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      000BEE                       2310 ___str_0:
      000BEE 30 30 3A 30 30 3A 30  2311 	.ascii "00:00:00"
             30
      000BF6 00                    2312 	.db 0x00
      000BF7                       2313 ___str_1:
      000BF7 30 31 2D 30 31 2D 30  2314 	.ascii "01-01-00"
             30
      000BFF 00                    2315 	.db 0x00
                                   2316 	.area XINIT   (CODE)
                                   2317 	.area CABS    (ABS,CODE)
