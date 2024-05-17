.text 

addi $t0, $t0, 1 #t0 = f e recebe 1

li $v0, 5
syscall
move $t1, $v0 # n = t1

fatorial:
slt $t9, $zero, $t1 #t1 = n > 0
beq $t9, $zero, print 
mult $t0, $t1
mflo $t0

sub $t1, $t1, 1 #incremento

j fatorial

print:
li $v0, 1
move $a0, $t0
syscall