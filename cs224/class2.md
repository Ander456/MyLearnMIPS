computer architecture include:
1. isa
2. harward layer

hardwarlayer is the computer organization 硬件层就是电脑是怎么组成的内部funtion unit的作用单元是怎么联系的等等

computer classes电脑种类：
1. desktop 笔记本 verysimple  low cost便宜
2. server serves many people  高可用安全稳定
3. super computers  用来计算超级大的超级复杂的计算  expensive
4. embed computer 嵌入式的设备 比如 手机 DVD ipad等等 very common

embed computer是应用最广的了
特点：
1. 不需要太高性能
2. 价格比较低
3. 点亮要求比较低
4. high reliable low tolerance failure对错误的容忍性低 比如汽车零件。。除了问题就凉了

---

application ---  system softwar ---  hardware

---

c语言->compiling -> 汇编语言 -> assembling -> 机器码

高级语言是 machine independ的 也就是高级语言是和architecture无关的
而 汇编语言和机器码是和architecutre有关的 取决于你用的是什么architecutre amd？intel？

编译器现在越来越好已经可以把高级语言比如c编译成很好的汇编语言了 效率很高

为什么 高级语言 到 汇编语言 可以 很好的 编译   而 我们的自然语言 无法 很好的 一一对应到 汇编语言？？
因为。。高级语言和汇编语言 都是有 规则的 fromal language 你必须按照规则来才能，有了规则就有很多的方法 来把高级语言编译到汇编语言

what a computer process does? 计算级处理器做了什么？ 如何做？instruction怎么被执行
Execution Cycle:
1. obtain instruction from program storage 从程序的存储中取出指令
2. detemine required actions and instruction size 找到需要的动作和指令位置
3. locate and obtain operand data 定位并且操作数据
4. compute result value or status  计算结果或者状态
5. deposit results in storage for later use  把结果存储起来以便一会使用
6. determine successor instruction 决定下一个instruction是干嘛的 回到1取指令根据1的指令继续跑哈哈哈哈
上面的就是 执行循环 一个一个执行 必须这样
要想加快这个执行。。就得硬件更好更快。。没有别的办法(不算并行的话)




















