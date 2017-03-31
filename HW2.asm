;; Status: It works. All the simulations provide correct reuslts.
;;-------------------------------------------------


;; Setting up all the global variables
ORG 0H
SJMP MAIN
STRING1: 	DB 	"The Test String"
			DB 0, 15
			
STRING1LEN 	EQU 15

STRING2: 	DB 	0, 0		;; Empty string
STRING2LEN 	EQU 0
T 			EQU 0

;;-------------------------------------------------


;; The strcpy function
STRCPY:
	LEN EQU 0				;; len = 0
	MOV R2, #LEN			;; R2 = len
	MOV A, R0				;; move destination to R1
	MOV R1, A				;; and len to A
	MOV A, R2				;;
	BACK:
		MOVC A, @A+DPTR		;; A = s[len]
		CJNE A, #0H, COPY	;; if (A != 0) then copy 
		MOV @R1, A			;; else append 0 to destination string
		INC R1				;; increment R1
		MOV A, R2			;; Append length to destination string
		MOV @R1, A			;;
		RET					;; return
	COPY:
		MOV @R1, A			;; sd[len] = A
		INC R1				;; s++
		INC R2				;; len++
		MOV A, R2			;; move len back into A
		SJMP BACK			;; repeat
		


;; The testString function
TESTSTRING:
	
	SD: DB 0				;; sd = pointer to an empty string
	MOV R0, #SD				;; R0 = sd
	CALL STRCPY				;; call strcpy with sd as the destination str
	MOV R5, A				;; Save the original len to R5
	INC A					;; len = len + 1
	MOVC A, @A+DPTR 		;; A = s[len+1]	
	MOV R3, A				;; R3 = expectedLen
	MOV A, R5				;; Move original len back to A
	
	SUBB A, R3				;; If (len != expectedLen) goto ERROR
	JNZ ERROR
	CLR A					;; A = 0
	
	COMPARE:
		MOV R6, A			;; The actual comparison of the 
		MOVC A, @A+DPTR		;; the strings takes place here
		MOV R5, A
		MOV A, @R0
		MOV R1, A
		MOV A, R5
		SUBB A, R1			;; A = s[len] - sd[len]
		JNZ ERROR			;; if A != 0, then error
		INC R0				;; else sd++
		MOV A, R6
		INC A				;; s++
		DJNZ R3, COMPARE
	
	INC R4					;; if no error, t++
	RET						;; return



;; The main function
MAIN:
	MOV R4, T				;; R4 = t
	;; Test Case #1
	MOV DPTR, #STRING1
	CALL TESTSTRING
	
	;; Test Case #2
	MOV DPTR, #STRING2
	CALL TESTSTRING




SUCCESS: SJMP SUCCESS
ERROR  : SJMP ERROR


END