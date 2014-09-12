	j    main
		
fib:	ble  $a0,1,returnn      # if n<=1, jump to returnn label

	# save return address
	addi $sp,$sp,-8         # make room in stack for ra and n
	sw   $ra,4($sp)         # save ra in stack
	
	# fib(n-1)
	sw   $a0,0($sp)         # save n in stack because it gets overwritten in the recursive call
	addi $a0,$a0,-1         # decrement n by 1
	jal  fib#(n-1)          # jump to fib(n-1)
	
	# fib(n-2)
	lw   $a0,0($sp)         # load old n (before fib(n-1))
	addi $sp,$sp,4          # close used space in stack
	addi $a0,$a0,-2         # decrement n by 2 for n-2
	jal  fib#(n-2)          # jump to fib(n-2)
	
	# return
	lw   $ra,0($sp)         # load old ra before return
	addi $sp,$sp,4          # close used space in stack
	jr   $ra                # jump back to calling address
	
	
returnn:add  $v0,$v0,$a0        # add n to $v0 (where the result is stored)
	jr   $ra                # jump back to function call
	
	
main:  	addi $a0,$zero,10 	# init n as a0 to its start value
	jal  fib                # jump to the fib function (label)