.text

main:
    
    li a7, 5
    ecall
    mv t0, a0
    
    li t1, 0
    
loop:

    beq t0, x0 end
    li a7, 5
    ecall
    add t1, t1, a0
    
    addi t0, t0, -1
    
    j loop
    
    
end:

    li a7, 1
    mv a0, t1
    ecall
    
    li a7, 10
    ecall
    