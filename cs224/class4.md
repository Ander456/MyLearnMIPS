fuck 换了个老师代课 惊呆了 这口音 听不懂啊 我曹

instructions are bits

programs are stored in memory

所以我们从内存中获取instruction 然后执行

---

三中指令格式： all 32 bits wide

op   |rs   |rt   |rd   |shamt|funct  |      R format
op   |rs   |rt   |   immediate       |      I format
op   |         jump target           |      J format

rs rt rd 这个r 就是register 的意思 std就是第一个第二个第三个的意思

immedate 就是立即马上，不需要再操作寄存器来读取或者写入而是一个立即的值 比如某个数字 比如内存地址的便宜 

simplicity favors regularity
1. fixed size instructions 固定大小的指令
2. small number of instruction formats 很少的指令格式 就三中
3. opcode always the first 6 bits     操作码永远在前6位

---

MIPS assembl language arithmetic statement mips汇编算数语句介绍
add    $t0    $s1    $s2
sub    $t0    %s1    $s2
1. 每一个指令都表达一个操作 下面使用上面这句sub命令详细解释

2. each specifies exactly three operands that are all contained in the datapath's register file 每个特殊的操作包括的三个操作数都是寄存器
    destination <---- source1  op  source2
        $t0             $s1          $s2

3. this is R format - >
|  0  |  17  |  18  |  8  |  0  |  0x22  |
  sub   $s1    $s2    $t0           sub 这个地址也就是sub这个操作的地址

op      6bits   opcode specifies the operation
rs      5bits   register file address of the first source operand 第一个操作数
rt      5bits   第二个操作数
rd      5bits   结果存放的寄存器
shamt   5bits   shift amount (for shift instructions) 便宜
funct   6bits   function code augmenting the opcde 

---

MIPS has 32 x 32-bit register file
* use for frequently accessed data 频繁的操作data
* Numbered 0 to 31
* 32-bit data called a "word"
assembler names
* $t0 $t1 .. $t9 for template variables 临时变量
* $s0 $s1 .. $s7 for saved variables 保存变量
* $v0 $v1   returned values 返回值
* $a0 $a1   arguments 参数
* $Zero constant 0    常量0
* $at   reserved for assembler 预留的
* $gp   global pointer
* $sp   stack pointer
* $fp   frame pointer
* $ra   return addr 返回地址

---

MIPS regiser file :
            |---32bit-----|
src1  addr->|             |->src1 data
src2  addr->|            32bit
dst   addr->|    locations|
write data->|             |->src2 data
            |-------------|
two read ports && one write port  有两个读的口 一个写的口

registers are faster than main memory
easier for a compiler to use
can hold variables 

---



