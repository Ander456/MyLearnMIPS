.data
	msg_yes:	.ascii	"YES\0"  #if not \0 the string will continue go to the NO string
	msg_no:		.ascii	"NO\0"

.text
# scanf("%d", &a);    $t0:a
# scanf("%d", &a);    $t1:b
# if(a>b)
#   printf("YES");
# else
#   printf("NO");

li $v0, 5
syscall
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0

bgt $t0, $t1, sub1 #if $t0>$t1 jump to label sub1
#printf("NO");
li $v0, 4
la $a0, msg_no
syscall

li $v0, 10
syscall

sub1:
#printf("YES");
li $v0, 4
la $a0, msg_yes
syscall
