.text 

main:

    li a7, 5
    ecall
    mv t0, a0
    
    li t1, 0
    li t2, 32
    
count:

    beq t2, x0, result
    andi t3, t0, 1
    add t1, t1, t3
    
    srai t0, t0, 1
    addi t2, t2, -1
    
    j count
    
result:

    li a7, 1
    mv a0, t1
    ecall
    
    li a7, 10
    ecall