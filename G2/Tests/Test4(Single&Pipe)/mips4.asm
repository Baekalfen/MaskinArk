# addu, addiu, slt, slti, subu, and, andi, or, ori, lw, sw, beq, jal, jr

beq   $t0, $zero, label
addiu $t0, $zero, 5
addiu $t1, $zero, 7
nop
nop
label:
addiu $t0, $zero, 1
jr    $zero