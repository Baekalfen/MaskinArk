	j    main

fib:	# Save to stack
	addi $sp, $sp, -12     # Make room in stack
   	sw   $ra, 8($sp)       # Save $ra to stack
   	sw   $v1, 4($sp)       # Save $v1 to stack
	sw   $a0, 0($sp)       # Save $a0 to stack
    
	# Determine the return value $v1 (n = 0 or n = 1); not changed if n > 1.
	ble  $a0, 1, setV0     # If n <= 1: goto innerloop
	
	# Calculate fib(n-1)
	addi $a0, $a0, -1      # Decrement n by 1
	jal  fib               # Recurs
	add  $v1, $zero, $v0   # Save return value to $v1 for later use
	
	# Calculate fib(n-2)
	lw   $a0, 0($sp)       # Restore n from stack
	addi $a0, $a0, -2      # Decrement n by 2
	jal  fib               # Recurs
	
	# Sum fib(n-1) and fib(n-2)
	add  $v0, $v1, $v0     # Add fib(n-1) and fib(n-2)
	
	j innerloop

setV0:  add  $v0,$zero,$a0     # Place $a0 in $v0
	# Continues to innerloop

innerloop:
	lw   $ra, 8($sp)       # Restore $ra
	lw   $v1, 4($sp)       # Restore $s0
	addi $sp, $sp, 12      # Close stack
	
	jr   $ra               # Return to $ra from stack


main:  	addi $a0,$zero,10
	jal  fib
	nop
