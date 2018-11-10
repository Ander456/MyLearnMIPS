li $t1, 1
add $t0, $t1, 2

# $v0 = 1, syscall ->print_int   this means syscall's print type base on the value in $v0
# $v0 = 4, syscall -> print_string
# syscal only can print the content of $a0
move $a0, $t0
li $v0, 1
syscall