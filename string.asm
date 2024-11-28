.data 
str:	.space 32
nl:	    .word 10

.text
	li a7, 8
	la a0, str
	li a1, 30
	ecall
	
	lw  a1, nl
	jal limpa
	
	li a7, 4
	la a0, str
	ecall
	
	li a7, 10
	ecall
	
limpa:
    
    loop:
        
        lb t0, 0(a0)
        beq t0, a1, replace
        beq t0, x0, end
        
        addi a0, a0, 1
        
        j loop
        
    replace:
        
        sb x0, 0(a0)
        
    end:
    
        jr ra
        