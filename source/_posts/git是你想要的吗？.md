title: git是你想要的吗?
date: 2010-09-03 22:34:00
tags: [git, svn]
---

##SVN的优缺点
####优点
1. 支持历史追踪 
2. 很容易合并和修改
3. 比较适合个人的历史记录、同一模块提交不是很频繁的协作开发

####缺点
1. 适合每个人有LocalSpace的情况。一个模块一个人很好开发。 但是一个模块多个人开发，每个人必须不断的合并才能跟踪，影响别人的开发进展。


###解决方案
双SVN方式 第一checkout后，合入自己的SVN。 更新时，对比本机的副本。
同步。 提交时，选择某个历史的SVN版本，和主版本比较合入。 缺点：每次都要主动的更新主版本，两个版本直接的文件没有关联性，需要借助第三方的工具进行比较。

##GIT的优缺点

####缺点
GIT图像界面并不太好 Windows下经常有莫名奇妙的错误 

自己一个git库

mkdir  project

cd project 

D:\>mkdir project

D:\>cd project

D:\project>git init

Initialized empty Git repository in D:/project/.git/

D:\project>echo "1+1=?" >readme.txt

D:\project>git add readme.txt

D:\project>git commit  -m 添加readme.txt



创建本地拷贝

D:\>md local

D:\>cd local

D:\local>git clone d:\project

Initialized empty Git repository in D:/local/project/.git/



添加提交删除都一样

D:\local\project>git add -A

D:\local\project>git commit -m 添加其它文件

D:\local\project>git commit -a  -m 修改文件



查看日志

D:\local\project>git log 

下载一个版本库

git clone https://github.com/KentBeck/junit.git

  
更多内容

参考：

http://wenku.baidu.com/view/78898a1fa76e58fafab00377.html

http://www.ibm.com/developerworks/cn/linux/l-git/ 

#####持续集成 =====

自动化构建

1.提交修改  2. 提交完毕后的固定时间，进行集成。 3. 将集成结果进行发布

支持这个过程的方法很多，基本的原理：hook , at, ant, email&web public

###CruiseControl

http://cruisecontrol.sourceforge.net/ 

#### jenkins