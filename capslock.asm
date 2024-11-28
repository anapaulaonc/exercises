.data

rsp:  .space 30
size: .word 30

.text

# Seu código abaixo:

main:

    li a7, 8
    la a0, rsp
    lw a1, size
    ecall
    
    la t0, rsp
    
loop:

    lb t1, 0(t0)
    beq t1, x0, resultado
    
    li t2, 97
    li t3, 122
    blt t1, t2, skip
    bgt t1, t3, skip
    
    li t4, 32
    sub t1, t1, t4
    sb t1, 0(t0)
    
skip:

    addi t0, t0, 1
    j loop
    
resultado:

    li a7, 4
    la a0, rsp
    ecall
    
end:

    li a7, 10
    ecall