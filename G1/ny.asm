
fib:
	

main:  	addi $a0,$zero,10 	# init n as a0 to its start value
	jal  fib                # jump to the fib function (label)
	nop