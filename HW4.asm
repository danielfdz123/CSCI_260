MAIN:
#test values
    li $s0, 2   
    li $s1, 4
     
#s0 and s1 are both positive numbers (can be any)
    add $a0, $s0, $zero    #store s0 in a0 (parameter A)
    add $a1, $s1, $zero    #store s1 in a1 (parameter B)
    jal MULTIPLY 
    j END  

MULTIPLY:
    add $t0, $a0, $zero     #t0 <- integer A (2)
    add $t1, $a1, $zero     #t1 <- integer b (4)
    add $t2, $zero, $zero   #t2 <- RESULT
    add $t3, $zero, $zero   #t3 <- 0 (for loop value)
    
FOR:
    slt $t4, $t3, $t1         #t3 < t1 == (0 < 4)
    bne $t4, $zero, FORcont   #if slt != 0, continue with for loop
    add $v0, $t2, $zero       #store result in result variable
    jr $ra                    #EXIT for loop

FORcont:
    add $t2, $t2, $t0         # result = result + sum (t2 <- 0 + 2)    
    addi $t3, $t3, 1          #increment i 
    j FOR

END: