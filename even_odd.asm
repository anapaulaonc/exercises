.data
# segmento de dados
ehpar: 	 .string "Its even"
ehimpar: .string "Its odd"

#segmento de codigo
.text
# seu codigo aqui...

.text

main:

    li a7, 5
    ecall
    mv t0, a0
    
    andi t1, t0, 1
    beq t1, x0, par
    
impar:
    
    li a7, 4
    la a0, ehimpar
    ecall
    
    j end
    
par:

    li a7, 4
    la a0, ehpar
    ecall
    
end:

    li a7, 10
    ecall