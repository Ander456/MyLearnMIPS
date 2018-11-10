fuck 还是换了的老师代课 惊呆了 这口音 听不懂啊 我曹

0xffffffff|-------------------|
          |                   |
          |                   |
          |-------------------|
          |                   |
0x00000000|                   |

lw $t0, 4($s3) #load word from memory 
这个4的意思 在基本地址上 像下(向大的方向)便宜4个字节

C code c的代码：
g = h + A[8];
-- g in $s1, h in $s2, base address of A in $s3
compiled MIPS code:
index 8 requires offset of 32 bytes 一个int4字节（32位MIPS是）8就是32
lw  $t0, 32($s3)
add $s1, $s2, $t0

c代码：
A[12] = h + A[8];
-- h in $s2, base address of A in $s3
compiled to MIPS code:
index 8 requires offset of 32bytes 12 need 48bytes;
lw  $t0, 32($s3)
add $t0,  $s2, $t0
sw  %t0, 48(%s3)

---

load/store instruction format(I format)
lw $t0, 24($s3)
35  |   19  |   8   |   24              |
lw     $s3     $t0      24 immediate value

---

Big Endian: leftmost byte is word address ex: IBM MIPS HP PA
Little Endian: rightmost byte is word address  ex: 80x86 Vax DEC ALpha
                little endian byte
      3   2   1   0
msb |   |   |   |   | lsb
      0   1   2   3
bigendian

---

32位的 第31位 是sign位 
0 unsigned
1 负数
most-negative 最小的负数 1000000000...000
most-postive  最大的正数 0111111111...111

---

16进制 hex  4bits per hex digit 每四位一个进制 因为2的4次方就是16 满16 进一

---

MIPS shift operations 位移操作
1. need operations to pack and unpack 8-bit characters into 32-bit words 也就是说在32位范围内操作 不够的按32位来看补齐0
2. shifts move all the bits in a world left or right 移动所有的bits在一个word也就是32位长度范围内 向左或者向右

用处：mask bits in a word 
也就是 把一些位变为0但是其他的保持不变

and $t0, $t1, $t2  # $t1 is the "AND mask"
这里t1就是掩码了 总算知道了吧
                          |     |   
$t2 0000 0000 0000 0000 00|00 11|01 1100 0000
$t1 0000 0000 0000 0000 00|00 11|11 0000 0000
$t0 0000 0000 0000 0000 00|00 11|00 0000 0000

如果我们只想操作 $t2虚线圈住的 这几位 让这几位保持不变 我们只需要add上$t1 那么结果$t0就会只有这几位不变 其他的clear为0了















