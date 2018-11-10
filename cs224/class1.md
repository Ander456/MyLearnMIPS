Contents of Course CS224

1. ISA the instructions set architucture  指令集架构
2. assembly 汇编语言 like MIPS
3. arithmetic logic unit 逻辑运算单元
4. processor design 中央处理器设计 也就是cpu设计
5. pipelined 管道设计
---
6. Memory caches
7. visual memory
8. I/O devices
9. multicores 多处理器
10. cluster computing 集群


关于硬件软件 效率影响
1. 算法 
2. 语言编译器 决定机器指令怎么样执行
3. 硬件处理器内存 决定 指令执行速度
4. I/O and cpu核数
 

instruction Set: a critical interface
|softwar
---
|instruction set
---
|hardware
所有的软件都建立在 architecture上也就是 instructionset指令集 比如x86 x64 amd 等等 然后 set 建立在 hardwar上

处理器不论是 amd的还是intel的他们都按照自己的instructions指令来实现他们的hardward，但是所有的软件都能在上面跑的额原因是什么？ 就是上面的这层 instruction set ，然后我们的所有软件其实是建立在这个上面的。so anyway跑的起来

这样的好处就是。不论amd还是intel他们都可以在hardware层面尽心innovate改革，可以做到更好，我们只需要保证instruction set 这层指令层 这个core 不改变，或者 横向扩展就好。

so：这一点提醒我 设计什么，提供一个中间层的重要性，否则我一旦改变。。在上面跳舞的software就不行了 fuck

---
iSA is the floor to program .也就是这层是提供给工程师的 
ISA includes
* organizationof storage 存储的组织
* data types 数据类型
* Encoding and representing instructions 如何编码执行指令
* opcodes 指令码
* modes of addressing data 寻址
* exception handling 异常处理

一些常见的ISA指令集 比如：MIPS ARM x86 x32 等等

一个很简单的ISA指令集介绍 MIPS
**数据可以用来做什么**
instruction categroies 指令类型：
* load/store  加载或者存储的类别
* computational  计算类别
* jump and branch  跳转(jump go to )或者分支(if 之类的)
* floating point  浮点型可以用来表示更精确的数字
* memeory management  内存管理
* speical   其他特性
**数据可以存在哪**
registers 寄存器 32个 R0-R31 PC HI LO
**操作数据的指令张什么样**
instruction formats 32bits. 指令类型3三中








