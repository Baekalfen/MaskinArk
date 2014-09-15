# 2.3
#f ,g ,h ,i , j,  , A, B
#$0,$1,$2,$3,$4,$5,$6,$7
#B[8] = A[i-j]

sub $t0,$3,$4   # i-j
sll $t0,$t0,2   # mul by 4
add $t0,$s6,$t0 # A+(i-j)

lw $t0,0($t0)   # load A[i-j]
sw $t0,32($s7)  # store i 4*8(B)

# 2.27
#a  ,b  ,i  ,j  ,D  ,temp
#$s0,$s1,$t0,$t1,$s2,$t2

        move $t0,$zero      # i=0
start1: slt $t2,$t0,$s0     # set $t2 to 1 if i<a
	bne $t2,$zero,exit1 # branch to exit if $t2 = 0
	
	move $t1,$zero      # j=0
start2: slt $t2,$t1,$s1     # set $t2 to 1 if j<b
	bne $t2,$zero,exit2  # branch to exit if $t2 = 0
	
	## body
	add $t2,$t0,$t1     # i+j
	
       	sll $t3,$t1,4       # mul j by 4 and store in $t3 because of bytes->word
       		   #2*2     # mul j by 4 and store in $t3 because of algorithm
	add $t4,$s2,$t3     # $t4 = D+(j*4)

	sw $t2,0($t4)       # store i+j in D[j*4]
	## /body
	
	addi $t1,$t1,1
	j start2
	
exit2:
	addi $t0,$t0,1       # i++
	j start1
	 	
exit1: #Exit




# 2.31

# $a0 = n
	addi $t0,$zero,1 	# temp var for 1
fib: 	beqz $a0, return1
	beq  $a0,$t0,returnn
	
	beqz
	

returnn:
     	add  $v0,$v0,$a0	# move n to $v0
     	jr   $ra

returnfib:

