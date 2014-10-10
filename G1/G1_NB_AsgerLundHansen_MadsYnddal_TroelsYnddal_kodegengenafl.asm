	j    main

fib:	# Save to stack
	addi $sp, $sp, -12     # Make room in stack
   	sw   $ra, 8($sp)       # Save $ra to stack
	sw   $a0, 4($sp)       # Save $a0 to stack
   	sw   $v1, 0($sp)       # Save $s0 to stack
    
	# Calculate
	ble  $a0, 1, setV0     # if n <= 1: goto innerloop
	
	addi $a0, $a0, -1      # Decrement n by 1
	jal  fib               # Recur 1
	add  $v1, $zero, $v0   # Save return value to $s0 !!! Maybe not
	lw   $a0, 4($sp)       # Restore n from stack
	addi $a0, $a0, -2      # Decrement n by 2
	jal  fib               # Recur 2
	add  $v0, $v1, $v0     # Add fib(n-1) and fib(n-2)
	j innerloop

setV0:
	add  $v0,$zero,$a0     # Place $a0 in $v0
	# Continues to innerloop

innerloop:
	lw   $ra, 8($sp)       # Restore $ra
	lw   $v1, 0($sp)       # Restore $s0
	addi $sp, $sp, 12      # Close stack
	
	jr   $ra               # Return to $ra


main:  	addi $a0,$zero,10
	jal  fib
	nop
