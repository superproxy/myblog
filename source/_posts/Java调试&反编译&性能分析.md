title: Java调试_反编译_性能分析
date:  2010-11-14 00:27:00
tags: [调试, java, debug, javap ]
---

调试(需要有源代码，没有源代码就需要反编译，然后将这个反编译的源码重新编译，再打包)

####调试器的工作原理

http://en.wikipedia.org/wiki/Debugger

http://download.oracle.com/javase/1.3/docs/guide/jpda/index.html

http://java.sun.com/javase/technologies/core/toolsapis/jpda/

####IBM上的介绍

http://www.ibm.com/developerworks/cn/views/java/libraryview.jsp?search_by=%E6%B7%B1%E5%85%A5+Java+%E8%B0%83%E8%AF%95%E4%BD%93%E7%B3%BB

http://www.ibm.com/developerworks/cn/java/j-lo-jpda1/index.html

http://www.ibm.com/developerworks/cn/java/j-lo-jpda2/index.html

http://www.ibm.com/developerworks/cn/java/j-lo-jpda3/index.html

http://www.ibm.com/developerworks/cn/java/j-lo-jpda4/index.html

####调试方式(支持本地，和远程)，基于源代码级别调试&javac -g 有其中的调试信息，

通过对反编译方式获取源文件可以找到对应的行， 通过分析字节代码也可以。

####普通的字节方式  javap -c -l hehe.class  >a.txt

Compiled from "hehe.java"
public class hehe extends java.lang.Object {
  public hehe();
    Code:
       0: aload_0       
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return        
    LineNumberTable:
      line 13: 0

  public static void main(java.lang.String[]);
    Code:
       0: iconst_2      
       1: istore_1      
       2: iconst_3      
       3: istore_2      
       4: iload_1       
       5: iload_2       
       6: iadd          
       7: istore_3      
       8: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
      11: iload_3       
      12: invokevirtual #3                  // Method java/io/PrintStream.println:(I)V
      15: new           #4                  // class test
      18: dup           
      19: iconst_1      
      20: iconst_2      
      21: invokespecial #5                  // Method test."<init>":(II)V
      24: astore        4
      26: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
      29: aload         4
      31: invokevirtual #6                  // Method test.add:()I
      34: invokevirtual #3                  // Method java/io/PrintStream.println:(I)V
      37: return        
    LineNumberTable:
      line 17: 0
      line 18: 2
      line 19: 4
      line 20: 8
      line 21: 15
      line 22: 26
      line 23: 37
}

#####1. 命令行

jdb  http://download.oracle.com/javase/1.3/docs/tooldocs/win32/jdb.html

参考了gdb http://oss.org.cn/ossdocs/gnu/linux/gdb.html

需要 javac -g 的支持。

通常使用javac  应该默认打开了部分调试信息的，因为可以看到源代码和行号，但是不能使用locals。

-g

（在调试时，可以通过list命令显示源代码的情况。）

比默认多了，localVariableTable 可以使用locals

    LocalVariableTable:
      Start  Length  Slot  Name   Signature
             0       5     0  this   Lhehe;

 

-g:none 没有行号信息和源代码，只能打断点在方法上。

 

http://www.qqread.com/java/w982394600.html

回到的debug , softice时代。

######2. GUI

Eclipse等IDE支持，就是命令的包裹器吧

类似于Windbg, ollydbg

 

####反编译

javap  （字节码级别）

http://download.oracle.com/javase/1.4.2/docs/tooldocs/windows/javap.html

JVM的字节指令

http://java.sun.com/docs/books/vmspec/

jd-gui （源代码级别）

 

===============性能=============

jps    进程查看

jstack  线程打印

jmap  堆栈打印

jhat  查看对象

jvisualvm  (图形化的)