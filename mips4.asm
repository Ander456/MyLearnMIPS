# 1+2+3+..+100
# int i = 1;
# int sum = 0;
# while(i<=100)
#   sum = sum +i;
#   i++l;

li $t0, 1
li $t1, 0

loop:
add $t1, $t1, $t0
add $t0, $t0,1

ble $t0, 100, loop

li $v0, 1
move $a0, $t1
syscall