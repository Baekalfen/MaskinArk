# addu, addiu, slt, slti, subu, and, andi, or, ori, lw, sw, beq, jal, jr

addiu $t0, $zero, 4
addiu $t1, $zero, 6
addiu $t2, $zero, 9
addiu $t3, $zero, 17
addiu $t4, $zero, 23
addiu $t5, $zero, 31
addu  $t6, $t0, $t1
addu  $t6, $t0, $t1
subu  $t7, $t1, $t0
subu  $t7, $t1, $t0
slt   $s0, $t0, $t1
slt   $s0, $t0, $t1
slti  $s1, $t0, 7
slti  $s1, $t0, 7
addiu $s2, $zero, 2
and   $s2, $t0, $t1
and   $s2, $t0, $t1
andi  $s3, $t0, 6
andi  $s3, $t0, 6
or    $s4, $t0, $t1
or    $s4, $t0, $t1
ori   $s5, $t0, 6
ori   $s5, $t0, 6