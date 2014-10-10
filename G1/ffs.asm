j	main

Prolog:
    addi $sp, $sp, -12        # Make 3 spaces on the stack
    sw   $a0, 8($sp)          # Push argument to stack
    sw   $ra, 4($sp)          # Push return address of function
    sw   $s0, 0($sp)          # Push $s0 to the stack

    # The FIB procedure
    addi $v0, $zero, 0        # Save 0 to the return value
    beq  $a0, $v0, Epilog     # Return from the procedure if n == 0

    addi $v0, $zero, 1        # Save 1 to the return value
    beq  $a0, $v0, Epilog     # Return from the procedure if n == 1
    
    #addi $v0, $zero, 1
    #ble  $a0, 1, Epilog # if n <= 1: goto innerloop

    add  $a0, $a0, -1         # Decrement $a0 by 1
    jal  Prolog               # Call function recursive
    addi $s0, $v0, 0          # Save the value of $v0
    lw   $a0, 8($sp)          # Restore $a0
    add  $a0, $a0, -2         # Decrement $a0 by 2
    jal  Prolog               # Call function recursive
    add  $v0, $s0, $v0        # Save fib(n-1) + fib(n-2) to the return register
    j    lala

Epilog:
	nop                    # Innerloop
	add  $v0,$zero,$a0     # Place $a0 in $v0
lala:
	lw   $ra, 4($sp)       # Restore $ra
	lw   $s0, 0($sp)       # Restore $s0
	addi $sp, $sp, 12      # Close stack
	
	jr   $ra               # Return to $ra


    #lw   $ra, 4($sp)          # Restore the value of the return address
    #lw   $s0, 0($sp)          # Restore the value of s0
    #addi $sp, $sp, 12         # Change the stack pointer to the original value
    #jr   $ra                  # Jump back to the return address

main:
	# Testing procedure
	addi $a0, $zero, 6            # Insert 6 in the argument register to take FIB(6)
	jal  Prolog                   # Make a function call
