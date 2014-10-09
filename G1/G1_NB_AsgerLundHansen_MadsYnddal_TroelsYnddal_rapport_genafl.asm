	j    main

fib:	ble  $a0,1,returnn      # if n<=1, jump to returnn label

	# save return address
	addi $sp,$sp,-12         # make room in stack for ra and n
	sw   $ra,8($sp)         # save ra in stack

	# fib(n-1)
	sw   $a0,4($sp)         # save n in stack because it gets overwritten in the recursive call
	addi $a0,$a0,-1         # decrement n by 1
	jal  fib#(n-1)          # jump to fib(n-1)
	# result is pushed to the stack at 0 offset
	
	addi $sp,$sp,-4

	# fib(n-2)
	lw   $a0,8($sp)         # load old n (before fib(n-1))
	#addi $sp,$sp,4          # close used space in stack
	addi $a0,$a0,-2         # decrement n by 2 for n-2
	jal  fib#(n-2)          # jump to fib(n-2)
	
	
	# fib(n-1) + fib(n-2)
	lw   $t1,0($sp)         #load fib2
	
	#beq $t1,$t7,wat
	
	lw   $t2,4($sp)         #load fib1
	addi $sp,$sp,12         #close stack space for fib1, fib2 and n
	add  $v0,$t1,$t2        #save result in $v0
	
	# return
	lw   $ra,0($sp)         # load old ra before return
	addi $sp,$sp,4          # close used space in stack
	jr   $ra                # jump back to calling address


returnn:#add  $v1,$zero,$a0      # store return value in v0
	sw   $a0,0($sp)
	jr   $ra                # jump back to function call

#wat:	nop
	
main:  	#addi $t7,$zero,4194340
	addi $a0,$zero,4 	# init n as a0 to its start value
	jal  fib                # jump to the fib function (label)
	nop