.text

main:

    li a7, 5
    ecall
    mv t0, a0
    
    li a7, 5
    ecall 
    mv t1, a0
    
    li a7, 5
    ecall
    mv t2, a0
    
    
    mul t3, t1, t2   
    add t4, t0, t3
    
    li a7, 1
    mv a0, t4
    ecall
    
    li a7, 10
    ecall
