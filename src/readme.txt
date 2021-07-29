ch07-ssm：整合开发。
SSM对应是：SpringMVC + Spring + MyBatis

SpringMVC：视图层，界面层，负责接收请求，显示处理结果
Spring：业务层，管理service.dao ，工具栏对象
MyBatis：持久层，访问数据库的

用户发起请求----SpringMVC接收----Spring中的Service对象----MyBatis处理数据

整合中容器
1. SpringMVC容器，管理Controller控制器对象的
2. Spring容器，管理Service.Dao，工具类对象

我们要做的把使用的对象交给合适的容器创建，管理。把Controller还有web开发的相关对象
交给SpringMVC容器，这些web用的对象卸载SpringMVC配置文件中

Service.dao对象定义在Spring的配置文件中，让Spring管理这些对象 。

SpringMVC容器和Spring容器是有关系的，已经确定好的
SpringMVC是Spring容器的子容器，类似java中的继承
子是可以访问父的内容，子容器中的Controller可以访问父容器的Service对象


实验步骤
0. 使用spingdb的mysql库，表使用student（id auto_increment,name,age）
1. 新建maven web项目
2. 加入依赖
    SpringMVC，Spring，MyBatis三个框架的依赖
    JackSon依赖，mysql驱动，druid连接池，
    jsp,servlet依赖

3. 写web.xml
    1）注册DispatcherServlet，目的：1.创建SpringMVC容器对象，才能创建Controller类对象
                                 2.创建Servlet，才能接收用户的请求

    2）注册Spring的监听器：ContextLoaderListener，目的：创建Spring的容器对象才能创建Service，dao等对象

    3）注册字符集过滤器，解决post请求乱码的问题

4. 创建包 Controller包，service，dao，实体类包名创建好

5. 写配置文件
    SpringMVC
    Spring
    MyBatis
    数据库属性的配置文件

6. 写代码
    dao接口Mapper文件
    Service和实现类
    Controller
    实体类

7. 写jsp页面