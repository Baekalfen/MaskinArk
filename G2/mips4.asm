# addu, addiu, slt, slti, subu, and, andi, or, ori, lw, sw, beq, jal, jr
#addiu $t0, $zero, 1
#addiu $t0, $zero, 2
#addiu $t0, $zero, 3
#addiu $t0, $zero, 4
#addiu $t0, $zero, 5
#addiu $t0, $zero, 6
#addiu $t0, $zero, 7

addiu $t0, $zero, 1
addiu $t0, $zero, 2
addiu $t0, $zero, 3
addiu $t0, $zero, 4
jr    $t0
addiu $t0, $zero, 5
addiu $t0, $zero, 6
addiu $t0, $zero, 7
addiu $t0, $zero, 8
addiu $t0, $zero, 9
jr    $zero

addiu $t0, $zero, 1
addiu $t1, $zero, 1
addiu $t0,   $t1, 0
addiu $t0,   $t1, 1
addiu $t0,   $t1, 2
addiu $t0,   $t1, 3
addiu $t0,   $t1, 4
addiu $t0,   $t1, 5
addiu $t0,   $t1, 6

addiu $s1, $zero, 1
addiu $s2,   $s1, 0
addiu $s3,   $s1, 1
addiu $s4,   $s1, 2
addiu $s5,   $s1, 3
addiu $s4,   $s4, 1
addiu $s3,   $s3, 1
addiu $s2,   $s2, 1