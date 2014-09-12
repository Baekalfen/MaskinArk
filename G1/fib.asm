	addi $a0,$zero,10 	# init a0 (n) to its start value
	jal  fib
	
exit:   nop
	j exit
	
	
fib:	ble  $a0,1,returnn     # jump to fib(n-1)...

	# save return address
	addi $sp,$sp,-4         # make room in stack for ra
	sw   $ra,0($sp)         # save ra in stack
	
	# fib(n-1)
	addi $sp,$sp,-4         # make room in stack for n
	sw   $a0,0($sp)         # save n in stack
	addi $a0,$a0,-1         # decrement n by 1
	jal  fib#(n-1)          # jump to fib(n-1)
	#add  $s1,$s1,$v0
	
	# fib(n-2)
	lw   $a0,0($sp)         # load old n before fib(n-1)
	addi $sp,$sp,4          # close used space in stack
	addi $a0,$a0,-2         # decrement n by 2 for n-2
	jal  fib#(n-2)          # jump to fib(n-2)
	
	## fib(n-1)+fib(n-2)
	#add  $s1,$s1,$v0
	
	# return
	lw   $ra,0($sp)         # load old ra before return
	addi $sp,$sp,4          # close used space in stack
	jr   $ra
	
	
returnn:add  $v0,$v0,$a0
	jr   $ra