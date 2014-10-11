# addu, addiu, slt, slti, subu, and, andi, or, ori, lw, sw, beq, jal, jr
addiu $t0, $t0, 12
jr    $t0
addiu $t0, $t0, 5
jal   test
addiu $t0, $t0, 5
addiu $t1, $t1, 5

beq   $zero, $zero, end
nop
nop
nop

test:
addiu $t2, $t0, 0
nop
nop
nop
nop
nop
addiu $t2, $t0, 0
addiu $t0, $zero, 1
addiu $t1, $zero, 1
nop
nop
nop
nop
nop
jr    $ra
addiu $s0, $s0, 5
addiu $s1, $s1, 5

end:
nop
