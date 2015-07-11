title: OllyDbg学习路线 
date: 2009-4-16 13:26
tags: [ollydbg, debug]
---
1. 了解软件（注册过程，是否有壳）

2. 有壳脱壳

3. 快速定位(串定位、API定位、消息定位、内存定位等。方法越多，技术越高）

4. 分析流程

5. 爆破、补丁(动态补丁、程序修补)、注册机.

 
###学习路线

#####C语言

http://oss.org.cn/ossdocs/gnu/linux/gdb.html

#####Windows 程序设计（第5版）（上、下册）

http://www.kuqin.com/networkprog/20080512/8362.html

http://www.bccn.net/Article/kfyy/cjj/jszl/200412/429.html

#####组成原理&微机原理

#####汇编&win32汇编

http://baike.baidu.com/view/33704.htm

http://www.aogosoft.com/

http://baike.baidu.com/view/270236.htm

#####ollydbg软件分析 （windasm+softice)

######简介

http://book.51cto.com/art/200806/77871.htm

######OllyDbg入门系列

http://bbs.pediy.com/showthread.php?t=21748

http://bbs.pediy.com/showthread.php?s&threadid=21284

http://security.ctocio.com.cn/hacker/466/9075966.shtml

#####keymaker

http://sec.chinabyte.com/298/8914298.shtml

OllyDbg常用断点

http://safe.it168.com/ss/2007-06-07/20070607038001.shtml

OllyDbg文章合集（破解的基本都是它了）

http://www.pediy.com/

http://www.anqn.com/ollydbg/

 

 

调试器

windbg框架

http://blog.csdn.net/zhyhang/archive/2007/02/07/1504937.aspx

断点

http://book.51cto.com/art/200806/77880.htm 

http://book.51cto.com/art/200806/77881.htm

 

重要概念

要搞清各API函数的定义（查看相关API手册）。
 
API函数基本采用的是__stdcall调用约定，即函数入口参数按从右到左的顺序入栈，并由被调用者清理栈中参数，返回值放在eax寄存器中。因此，对相关的API函数要分析其前的push指令，这些指令将参数放进堆栈以传送给API调用。整个跟踪过程中要关注堆栈数据变化。
 
C代码中的子程序采用的是C调用约定，函数入口参数按从右到左的顺序入栈，由调用者清理栈中的参数。

有关调用约定、参数传递等知识，可以从本书第4章获得。阅读上面代码时，需理解的GetDlgItemTextA函数原型如下：

UINT GetDlgItemText(      
HWND hDlg,        // 对话框句柄
int nIDDlgItem,       // 控件标识（ID号）
LPTSTR lpString,      // 文本缓冲区指针 
int nMaxCount        // 最大字符数
);
GetDlgItemText采用标准调用约定，参数按从右到左的顺序入栈。例如本例中的汇编代码：
 004011AE  push    51         　   ; int nMaxCount
004011B0  push    eax           ; LPTSTR lpString,
004011B1  push    6E          ; int nIDDlgItem
004011B3  push    esi          ; HWND hDlg
004011B4  call    GetDlgItemTextA          
当GetWindowText函数执行后，将把取出的文本放到由lpString（LPTSTR是一个长的指针，指向由空字符终止的字符串）指定的位置。如想看到输入的字符串，跟踪的时候，在4011B0一行停住，在eax寄存器单击右键，执行菜单“Follow in Dump”命令查看数据窗口中的内容，当然此时数据窗口中没什么有价值的东西。继续按F8键单步执行完下面一句：


004011B4   call edi            ; GetDlgItemTextA函数取姓名


此时GetDlgItemTextA函数已将字符串取出，放到eax所指的地址里。数据窗口右边字符段显示出刚输入的字符“pediy”，如图2.17所示。

 
（点击查看大图）图2.17  数据窗口查看字符
 

断点

 

 

更多阅读

http://book.51cto.com/art/200806/77976.htm

http://book.51cto.com/art/200801/63515.htm

http://book.51cto.com/