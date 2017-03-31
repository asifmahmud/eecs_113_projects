ORG 0H

SJMP MAIN


;; The Max function first checks whether
;; operand is positive and the other
;; is negative. If one is positive and the other 
;; is negative, it returns the positive operand.
;; If both operands are postive or negative, it
;; subtracts one form the other and check the carry bit
;; to determine which one is greater


MAX:
	
	MOV A,R0			;; Move R0 to A
	JNB ACC.7,L1		;; If R0 is positive, go to L1
	MOV A,R1			;; Move R1 to A
	JB ACC.7,L2			;; If R1 is negative, go to L2
	RET					;; else return R1

	L1: 
		MOV A,R1		;; Move R1 to A
		JNB ACC.7,L2	;; if R1 is positive, go to L2
		MOV A,R0		;; else return R0
		RET

	L2:
		MOV A, R0		;; Move R0 to A
		SUBB A, R1		;; A = A - R1
		JNC L3			;; If C = 0, go to L3
		MOV A, R1		;; else return R1
		RET		

	L3:
		MOV A, R0		;; return R0
		RET

;; The main function		
MAIN:
	MOV R2,#0			;; R2 = 0
	
	;; Test Case #1
	MOV R0, #1			;; R0 = 1
	MOV R1, #2			;; R1 = 2
	ACALL MAX			;; A = Max(1,2)
	CJNE A, #2, ERROR	;; if A != 2, go to ERROR
	INC R2				;; else R2++

	;; Test Case #2
	MOV R0, #2			;; R0 = 2
	MOV R1, #1			;; R1 = 1
	ACALL MAX			;; A = Max(2,1)
	CJNE A, #2, ERROR	;; if A != 2, go to ERROR
	INC R2				;; else R2++

	;; Test Case #3
	MOV R0, #-3			;; R0 = -3
	MOV R1, #4			;; R1 = 4
	ACALL MAX			;; A = Max(-3,4)
	CJNE A, #4, ERROR	;; if A != 4, go to ERROR
	INC R2				;; else R2++

	;; Test Case #4
	MOV R0, #-3			;; R0 = -3
	MOV R1, #-2			;; R1 = -2
	ACALL MAX			;; A = Max(-3,-2)
	CJNE A, #-2, ERROR	;; if A != -2, go to ERROR
	INC R2				;; else R2++

	
SUCCESS: 
	SJMP SUCCESS

ERROR:
	SJMP ERROR

END


















