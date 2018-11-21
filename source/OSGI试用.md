title: OSGI试用
date: 2011-9-2 22:35
tags: [osgi, felix, equinox]
---

####1. OSGI规范

管理组件的框架

####2.支持框架的容器

Eclipse Equinox、Felix、JBOSS OSGI。

Eclipse IDE支持osgi开发

osgi> install file:/d:/jboss7/standalone/deployments/plugins/osgitest_1.0.0.201109022026.jar
Bundle id is 895

osgi> start 895
Starting to listen for service events.
*******************event Type1
Ex1: Service of type osgitest.DictionaryService registered.

osgi> update 895
Stopped listening for service events.
Starting to listen for service events.
*******************event Type1
Ex1: Service of type osgitest.DictionaryService registered.

osgi> stop 895
Stopped listening for service events.

osgi> ls



####3. 组件的依赖、组件服务的获取、服务组件的组织