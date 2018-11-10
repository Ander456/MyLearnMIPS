.data
#.data datasegment  under .data are all global variables
# ex: cahr* msg = "hello world";
msg:	.ascii	"Hello world"

.text
la $a0, msg
li $v0, 4
syscall