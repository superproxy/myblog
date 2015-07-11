title: WIKI系统
date: 2011-9-9 19:59
tags: [wiki, jira, confluence]
---

个人的WIKI, VIM中有个插件 wiki就很不错。
但是团队用的话就有点问题。
MediaWiki是不错的选择可惜是PHP的，PHP还是WEB大佬。
国内也有的PHP的，很不错。http://kaiyuan.hudong.com/

1. 需要 JAVA的
2. 能够不需要用户认证就可以，和其他系统不好集成，访问也比较简单。
3. 功能比较强大，像QQ空间就可以了，支持中文、支持文本存储格式
4. 能够通知更新，像微博。

搜索了下：
http://www.open-open.com/51.htm
http://www.oschina.net/project/tag/69/wiki?lang=19&os=0&sort=view

jenkins用的这个，发现这个不错。但要付费。比较出名的是jira。
http://www.atlassian.com/software/confluence/

有点心动，应该比较好集成。 统一的方案就是好。以后不同的系统的认证功能应该有统一的解决方案。 便于集成。

有规范就好了。

JBoss也开始支持Php，但是还是个试验版，也只能在linux上，而且Java上应该能找到个。
发现JBoss也有个http://www.jboss.org/jbosswiki/

结论：试用下JBossWiki,多语言支持。我喜欢。
但是发现不能在JBoss7下部署，需要 JBoss Portal(门户平台）

先使用confluence，据说个人免费。

1. 下载 ear版本，需要ant build。神奇呀
2. 修改配置路径 confluence-3.5.13.war\WEB-INF\classes\confluence-init.properties
3. key 验证 atlassian-extras-2.4.jar\com\atlassian\license