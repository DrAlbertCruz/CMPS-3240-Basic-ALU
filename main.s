# filename: main.s
# purpose:  Lab 3 - Bare bones code for an ALU that can only ADD
# Albert C. Cruz - CSU Bakersfield

.data
question1: 
  .asciiz "7 - 3 = "    
question2: 
  .asciiz "\n-3 - 7 = "  
question3: 
  .asciiz "\n0 * 3 = "   
question4: 
  .asciiz "\n3 * 7 = "
  
.text

.globl  main
.ent  main
main:
  ########## 7 - 3 ##########
  
  # Print str 'question1'
  la  $a0, question1  
  jal printf       
  
  # Calculate 7 - 3
  # Set up call 
  li   $a0, 7       # First argument
  li   $a1, 3       # Second argument 
  jal  mysub        # You will need to fill out this function
  move $a0, $v0     # Move result into $a0 to print via syscall
  li   $v0, 1       # Syscall 1 - print int
  syscall   
  
  ########## -3 - 7 ##########
  
  # Print str 'question2'
  la  $a0, question2
  jal printf       
  
  # Calculate -3 - 7
  # Set up call 
  li   $a0, -3      # First argument
  li   $a1, 7       # Second argument 
  jal  mysub        # You will need to fill out this function
  move $a0, $v0     # Move result into $a0 to print via syscall
  li   $v0, 1       # Syscall 1 - print int
  syscall

  ########## 0 * 3 ##########
  
  # Print str 'question2'
  la  $a0, question3
  jal printf       
  
  # Calculate 0 * 3
  # Set up call 
  li   $a0, 0       # First argument
  li   $a1, 3       # Second argument 
  jal  mymult       # You will need to fill out this function
  move $a0, $v0     # Move result into $a0 to print via syscall
  li   $v0, 1       # Syscall 1 - print int
  syscall

  ########## 3 * 7 ##########
  
  # Print str 'question2'
  la  $a0, question4
  jal printf       
  
  # Calculate 3 * 7
  # Set up call 
  li   $a0, 3       # First argument
  li   $a1, 7       # Second argument 
  jal  mymult       # You will need to fill out this function
  move $a0, $v0     # Move result into $a0 to print via syscall
  li   $v0, 1       # Syscall 1 - print int
  syscall
  
  # Newline
  li   $a0, 0xA
  li   $v0, 11
  syscall
  
  li  $v0, 10       # 10 is exit system call
  syscall   
.end  main

.ent mysub
mysub:
  addiu $sp, $sp, -16   # Push stack frame, save 4 words
  sw    $ra, 4($sp)     # Save RA

  # YOUR CODE HERE
  li    $v0, 0
   
  lw    $ra, 4($sp)
  addiu $sp, $sp, 16    # Pop the stack frame
  jr    $ra
.end mysub

.ent mymult
mymult: 
  addiu $sp, $sp, -16    # Push stack frame, save 4 words
  sw    $ra, 4($sp)      # Save RA
  
  # YOUR CODE HERE
  li    $v0, 0
     
  lw    $ra, 4($sp)
  addiu $sp, $sp, 16    # Pop the stack frame
  jr    $ra
.end mymult