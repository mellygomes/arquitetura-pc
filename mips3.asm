.data
a: .word 0 
i: .word 0
limite: .word 11

.text
lw $t1, a
lw $t3, i
lw $t2, limite


calcularTabuada:

contadorA:
addi $t1, $t1, 1

contadorB:
addi $t3, $t3, 1
slt $t9, $t3, $t2, #t3 = i
bne $t9, $zero, saida
mult $t1, $t3
mflo $t0

li $v0, 1
move $t0, $v0
syscall  

j contadorB
j contadorA

saida:
li $v0, 10				# 10 -> encerra o programa
syscall