## 校园卡管理系统

[TOC]

一个简易的校园卡管理系统，基于PyQt5实现图形化界面操作。

### 软硬件环境

平台：Windows10
使用语言：Python
Python解释器：Python 3.8.6
IDE：Pycharm

### 数据库

DBMS：mysql

端口：3306

用户名：root

密码：root

可以根据个人设置在`main.py`161行处修改。

### 运行

- 启动mqsql，在mysql中新建名为“foodcardms”的数据库。

- 在新建的数据库中执行根目录下的`foodcardms.sql`文件，插入数据。

- 安装必要的python库：

`pip install pyqt5`

`pip install pymysql`

`pip install matplotlib`

`pip install qt_material`

- 在根目录下执行`main.py`：`python main.py`

- 以管理员身份登录，可以使用账号：`123`，密码：`123123`登录。学生用户可以使用账号：`162130316`，密码：`123`登录









