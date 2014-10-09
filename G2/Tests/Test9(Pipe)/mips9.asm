# addu, addiu, slt, slti, subu, and, andi, or, ori, lw, sw, beq, jal, jr

addiu $t0, $zero, 4
nop
nop
nop
nop
nop
sw    $t0, 0($zero)
lw    $t1, 0($zero)
addiu $t2, $t1, 1
nop
sw    $t0, 4($zero)
lw    $t3, 4($zero)
addu  $t4, $zero, $t3