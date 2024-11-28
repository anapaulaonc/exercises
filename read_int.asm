.text

main: 
    li a7, 5
    ecall
    mv t0, a0
    
    li a7, 1
    mv a0, t0
    ecall
    
    li a7, 10 
    ecall