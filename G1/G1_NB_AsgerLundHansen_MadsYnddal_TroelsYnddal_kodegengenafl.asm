#
# int fib(int n)
# {
#     if (n == 0)
#        return 0;
#     else if (n == 1)
#         return 1;
#     else
#         return fib(n-1) + fib(n-2);
# }
	
		
	j    main

fib:	# Save to stack
	addi $sp, $sp, -12
   	sw   $ra, 8($sp)
	sw   $a0, 4($sp)
   	sw   $v0, 0($sp)
    
	# Calculate
	ble  $a0, 1, innerloop   # if n <= 1: goto innerloop
	
	addi $a0,$a0,-2
	
	# Recur
	# Recur


innerloop:
	add  $v0,$zero,$a0
	j    fib
	# Calculate
	# Save to stack


main:  	addi $a0,$zero,6 	# init n as a0 to its start value
	jal  fib                # jump to the fib function (label)
