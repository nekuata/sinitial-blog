-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.2.8-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  sinitial.sl_permission 的数据：~37 rows (大约)
/*!40000 ALTER TABLE `sl_permission` DISABLE KEYS */;
INSERT INTO `sl_permission` (`permission_id`, `permission_name`, `description`, `url`, `parent_id`, `is_parent`, `is_menu`) VALUES
	(60, '登陆管理', NULL, '/login', 0, 0, 0),
	(64, '用户角色管理', '用户角色', '/user/role/list', 95, 1, 0),
	(65, '添加用户角色', '添加用户角色', '/user/role/add', 64, 0, 0),
	(66, '删除用户角色', '删除用户角色', '/user/role/del', 64, 0, 0),
	(67, '角色管理', '角色管理', '/role/list', 0, 1, 1),
	(68, '添加角色', '添加角色', '/role/add', 67, 0, 0),
	(69, '删除角色', '删除角色', '/role/del', 67, 0, 0),
	(70, '修改角色', '修改角色', '/role/update', 67, 0, 0),
	(71, '角色权限', '角色权限', '/role/permission/list', 67, 1, 0),
	(72, '添加角色权限', '添加角色权限', '/role/permission/add', 71, 0, 0),
	(73, '删除角色权限', '删除角色权限', '/role/permission/del', 71, 0, 0),
	(74, '权限管理', '权限管理', '/permission/list', 0, 1, 1),
	(75, '添加权限', '添加权限', '/permission/add', 74, 0, 0),
	(76, '删除权限', '删除权限', '/permission/del', 74, 0, 0),
	(77, '修改权限', '修改权限', '/permission/update', 74, 0, 0),
	(78, '权限资源管理', '权限资源管理', '/permission/resources/list', 74, 1, 0),
	(79, '权限资源添加', '权限资源添加', '/permission/resources/add', 78, 0, 0),
	(80, '权限资源删除', '权限资源删除', '/permission/resources/del', 78, 0, 0),
	(81, '资源管理', '资源管理', '/resources/list', 0, 1, 0),
	(82, '添加资源', '添加资源', '/resources/add', 81, 0, 0),
	(83, '删除资源', '删除资源', '/resources/del', 81, 0, 0),
	(88, '菜单管理', '菜单管理', '/permission/menu/list', 0, 1, 0),
	(89, '添加菜单', '添加菜单', '/permission/menu/add', 88, 0, 0),
	(90, '删除菜单', '删除菜单', '/permission/menu/del', 88, 0, 0),
	(93, '修改菜单', '修改菜单', '/permission/menu/update', 88, 0, 0),
	(95, '用户管理', '用户管理', '/user/list', 0, 1, 1),
	(96, '添加用户', '添加用户', '/user/add', 95, 0, 0),
	(97, '删除用户', '删除用户', '/user/del', 95, 0, 0),
	(98, '修改用户', '修改用户', '/user/update', 95, 0, 0),
	(100, '文章管理', '文章管理', '/post/list', 0, 1, 1),
	(101, '添加文章', '添加文章', '/post/add', 100, 0, 0),
	(102, '删除文章', '删除文章', '/post/del', 100, 0, 0),
	(103, '修改文章', '修改文章', '/post/update', 100, 0, 0),
	(104, '标签管理', '标签管理', '/tag/list', 0, 1, 1),
	(105, '增加标签', '增加标签', '/tag/add', 104, 0, 0),
	(106, '删除标签', '删除标签', '/tag/del', 104, 0, 0),
	(107, '修改标签', '修改标签', '/tag/update', 104, 0, 0);
/*!40000 ALTER TABLE `sl_permission` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_post 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `sl_post` DISABLE KEYS */;
INSERT INTO `sl_post` (`post_id`, `post_title`, `post_status`, `post_author`, `post_content`, `post_mime_type`, `post_date`, `post_type`) VALUES
	(1, '快排の日常', 'publish', 4, '想象一个场景：桌子上有8本书，这些书的高度各不相同。身为伪处女座，咱想把这些书按从高到低的顺序摆在书架上，请务必帮咱想一个可靠的方法！\r\n\r\n> 先把所有的书放到书架上，依次比较相邻书的高度（从左至右依次取名1号~8号，比较1号和2号的高度，若2号比1号高，则交换两者位置，1号继续跟3号比较；若1号比2号高，则让2号跟3号比较。），直到最右边。这时最右边的书就是最低的书，重复上述过程即可完成排序。\r\n\r\n这个是冒泡排序法。\r\n\r\n> 先随便选一本书，然后拿这本书跟其他书比较，高的放左边，低的放右边，完成后以最先选中的书为界限把所有书分成2个部分；分别对每部分重复上述操作后划分为4部分；以此类推，直到每部分只有一本书，排序达成。\r\n\r\n这是快速排序法，采用了分治的思想，分治法（Divide and conquer）用来将一个序列（list）分为两个子序列（sub-lists）。每次操作的对象比前一次少一半还多，速度明显优于第一种。\r\n\r\n步骤为：\r\n\r\n1. 从数列中挑出一个元素，称为"基准"（pivot），\r\n2. 重新排序数列，所有比基准值小的元素摆放在基准前面，所有比基准值大的元素摆在基准后面（相同的数可以到任一边）。在这个分区结束之后，该基准就处于数列的中间位置。这个称为分区（partition）操作。\r\n3. 递归地（recursively）把小于基准值元素的子数列和大于基准值元素的子数列排序。\r\n\r\n递归到最底部时，数列的大小是零或一，也就是已经排序好了。这个算法一定会结束，因为在每次的迭代（iteration）中，它至少会把一个元素摆到它最后的位置去。\r\n\r\n那么就决定是你了！回到现实，咱这里有个数组需要排序，那么如何将此方法用Java实现呢？\r\n\r\n快速排序最早由东尼·霍尔在1962提出。在平均状况下，排序n个项目要Ο(N*logN)次比较。在最坏状况下则需要`O`次比较，但这种状况并不常见。\r\n\r\n先把所有书放到书架上，抽出最左边的书，保留空位，然后从右到左依次跟这本书比较高度（从左至右依次取名1号~8号，比较1号和8号的高度，若8号比1号高，则将8号书移到1号空出的位置；然后1号继续去和7号比较，若7号比8号低，则将7号移动到8号的位置上，以此类推）', '', '2017-09-24 17:58:58', '想象一个场景：桌子上有8本书，这些书的高度各不相同。身为伪处女座，咱想把这些书按从高到低的顺序摆在书架上，请务必帮咱想一个可靠的方法！\r\n\r\n> 先把所有的书放到书架上，依次比较相邻书的高度（从左至右依次取名1号~8号，比较1号和2号的高度，若2号比1号高，则交换两者位置，1号继续跟3号比较；若1号比2号高，则让2号跟3号比较。），直到最右边。这时最右边的书就是最低的书，重复上述过程即可完成排序。\r\n\r\n这个是冒泡排序法。\r\n\r\n> 先随便选一本书，然后拿这本书跟其他书比较，高的放左边，低的放右边，完成后以最先选中的书为界限把所有书分成2个部分；分别对每部分重复上述操作后划分为4部分；以此类推，直到每部分只有一本书，排序达成。\r\n\r\n这是快速排序法，采用了分治的思想，分治法（Divide and conquer）用来将一个序列（list）分为两个子序列（sub-lists）。每次操作的对象比前一次少一半还多，速度明显优于第一种。'),
	(6, '关于本博客的食用说明（详见gayhub）', 'publish', 5, '# sinitial readme\r\n\r\n作为一个~~轻量级~~小巧的博客系统，本项目采用Spring+Spring-mvc+Mybatis构建。\r\n\r\n> Q: SSM轻量级？吾阅诗书甚少，你不要骗我。\r\n> A: 捂脸(*/ω＼*)，找工作需要嘛！所谓轻量是指对Java程序员而言。PS. 隔壁sgroup第一个项目没用任何框架，初学者可以拿去参考。\r\n\r\n> Q: 那你这个意义何在？\r\n> A: 自用，下面有食用说明。本项目的优点之一就是代码超规范（见名知意，参考alibaba的那本手册），注释超详细（覆盖率超过90%），RESTful风格API，二次开发也超轻松。\r\n\r\n```\r\nPS. 不懂java也没关系，可以直接跳到食用说明，理论上没问题！（有问题发issue）\r\n```\r\n\r\n本项目基于maven的标准目录结构，使用maven构建；框架是Spring，MVC框架是Spring-mvc，数据库是MariaDB，持久化是Mybatis，权限管理是自制的，如下所示：\r\n\r\nTODO 正在用Spring-boot写一个图床工具，搞定之后再来把这个也改成Spring-boot。\r\n\r\n```shell=\r\nsrc\r\n└─main\r\n    ├─java\r\n    │  └─com\r\n    │      └─sinitial\r\n    │          ├─aop\r\n    │          ├─controller\r\n    │          ├─dao\r\n    │          ├─domain\r\n    │          ├─interception\r\n    │          ├─service\r\n    │          │  └─Implement\r\n    │          └─utils\r\n    ├─notebook\r\n    ├─resources\r\n    │  ├─mybatis\r\n    │  │  ├─mariadb\r\n    │  │  └─oracle\r\n    │  └─spring\r\n    ├─test\r\n    └─webapp\r\n```\r\n\r\n本项目采用mvc架构，前端部分同时使用jsp和freemarker，目录结构如下：\r\n\r\nTODO 后续会将jsp全部改成freemarker，以配合Spring-boot和RESTful API实现前后端分离。\r\n\r\n```shell=\r\nwebapp\r\n├─META-INF\r\n├─resources\r\n│  ├─bootstrap-3.0\r\n│  │  ├─css\r\n│  │  ├─extension\r\n│  │  │  ├─bootbox\r\n│  │  │  └─datetimepicker\r\n│  │  │      ├─css\r\n│  │  │      └─js\r\n│  │  └─js\r\n│  ├─bootstrap-4.0.0-beta\r\n│  │  ├─css\r\n│  │  └─js\r\n│  ├─dataTables\r\n│  │  ├─css\r\n│  │  ├─images\r\n│  │  └─js\r\n│  ├─font-awesome-4.7.0\r\n│  │  ├─css\r\n│  │  └─fonts\r\n│  ├─img\r\n│  ├─jquery\r\n│  ├─panel\r\n│  │  ├─css\r\n│  │  └─js\r\n│  ├─post\r\n│  │  ├─css\r\n│  │  └─js\r\n│  ├─role\r\n│  │  ├─css\r\n│  │  └─js\r\n│  ├─showdown\r\n│  ├─user\r\n│  │  ├─css\r\n│  │  └─js\r\n│  └─ztree\r\n│      ├─css\r\n│      │  └─img\r\n│      └─js\r\n└─WEB-INF\r\n    ├─ftl\r\n    │  ├─surface\r\n    │  └─tag\r\n    └─jsp\r\n        ├─panel\r\n        ├─permission\r\n        ├─post\r\n        ├─role\r\n        └─user\r\n```\r\n\r\n食（shi）用（du）方法如下所述。\r\n\r\n## 1. 环境配置\r\n\r\n部署环境的配置如下（阿里云友情提供）：\r\n\r\nCPU： 1核\r\n\r\n内存： 1 GB\r\n\r\n硬盘： 40 GB\r\n\r\n操作系统： Ubuntu 16.04 64位\r\n\r\n### 1.1. 安装openjdk\r\n\r\n更新软件列表：\r\n\r\n```shell=\r\nroot@akari:~# apt update\r\n```\r\n\r\n安装openjdk-8-jdk：\r\n\r\n```shell=\r\nroot@akari:~# apt install openjdk-8-jdk -y\r\n```\r\n\r\n检查，成功则返回版本号：\r\n\r\n```shell=\r\nroot@akari:~# java -version\r\n```\r\n\r\n### 1.2. 安装git\r\n\r\n```shell=\r\nroot@akari:~# apt install git -y\r\n```\r\n\r\n检查git是否安装成功；输入如下命令，安装成功返回版本号。\r\n\r\n```shell=\r\nroot@akari:~# git --version\r\ngit version 2.7.4\r\n```\r\n\r\n### 1.3. 配置maven\r\n\r\n先下载最新版[maven](https://maven.apache.org/download.cgi)，右键Binary tar.gz archive获取下载地址，输入如下命令下载maven：\r\n\r\n```shell=\r\nroot@akari:~# cd /home\r\nroot@akari:/home# wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz\r\n# 解压\r\nroot@akari:/home# tar -zxvf apache-maven-3.5.0-bin.tar.gz\r\n```\r\n\r\n添加环境变量：\r\n\r\n```shell=\r\nroot@akari:/home# vim /etc/profile\r\n```\r\n\r\n在最后加上这些：\r\n\r\n```shell=\r\nMAVEN_HOME=/home/apache-maven-3.5.0\r\nexport MAVEN_HOME\r\nexport PATH=${PATH}:${MAVEN_HOME}/bin\r\n```\r\n\r\n保存，退出后重载文件：\r\n\r\n```shell=\r\nroot@akari:/home# source /etc/profile\r\n```\r\n\r\n验证maven配置，成功则返回版本号：\r\n\r\n```shell=\r\nroot@akari:/home# mvn -v\r\nApache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-04T03:39:06+08:00)\r\nMaven home: /home/apache-maven-3.5.0\r\nJava version: 1.8.0_131, vendor: Oracle Corporation\r\nJava home: /usr/lib/jvm/java-8-openjdk-amd64/jre\r\nDefault locale: en_US, platform encoding: UTF-8\r\nOS name: "linux", version: "4.4.0-47-generic", arch: "amd64", family: "unix"\r\n```\r\n\r\n### 1.4. 配置tomcat\r\n\r\n在这儿获取最新版[tomcat](http://tomcat.apache.org/download-90.cgi)下载地址（core版本的tar.gz），如下：\r\n\r\n```shell=\r\nroot@akari:~# cd /home\r\nroot@akari:/home# wget http://mirrors.shuosc.org/apache/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz\r\n# 解压\r\nroot@akari:/home# tar -zxvf apache-tomcat-9.0.0.M26.tar.gz\r\n```\r\n\r\n启动tomcat：\r\n\r\n```shell=\r\nroot@akari:/home# sh apache-tomcat-9.0.0.M26/bin/startup.sh\r\nUsing CATALINA_BASE:   /home/apache-tomcat-9.0.0.M26\r\nUsing CATALINA_HOME:   /home/apache-tomcat-9.0.0.M26\r\nUsing CATALINA_TMPDIR: /home/apache-tomcat-9.0.0.M26/temp\r\nUsing JRE_HOME:        /usr\r\nUsing CLASSPATH:       /home/apache-tomcat-9.0.0.M26/bin/bootstrap.jar:/home/apache-tomcat-9.0.0.M26/bin/tomcat-juli.jar\r\nTomcat started.\r\n```\r\n### 1.5. 安装mariaDB数据库\r\n\r\nMariaDB是MySQL源代码的一个分支，在意识到Oracle会对MySQL许可做什么后分离了出来（有闭源的潜在风险）。作者Michael Widenius Monty也是Mysql创办者。MariaDB目的是完全兼容Mysql，也包括一些新特性优于MySQL。\r\n\r\n直接apt安装：\r\n\r\n```shell=\r\nroot@akari:/home# apt install mariadb-server -y\r\n```\r\nTo Be Continue...', '', '2017-08-04 00:04:02', '作为一个~~轻量级~~小巧的博客系统，本项目采用Spring+Spring-mvc+Mybatis构建。\r\n\r\n> Q: SSM轻量级？吾阅诗书甚少，你不要骗我。\r\n> A: 捂脸(*/ω＼*)，找工作需要嘛！所谓轻量是指对Java程序员而言。PS. 隔壁sgroup第一个项目没用任何框架，初学者可以拿去参考。\r\n\r\n> Q: 那你这个意义何在？\r\n> A: 自用，下面有食用说明。本项目的优点之一就是代码超规范（见名知意，参考alibaba的那本手册），注释超详细（覆盖率超过90%），RESTful风格API，二次开发也超轻松。\r\n\r\n```\r\nPS. 不懂java也没关系，可以直接跳到食用说明，理论上没问题！（有问题发issue）\r\n```'),
	(10, '9の日常', 'publish', 6, '提问？', '', '2017-09-27 00:11:26', 'none'),
	(11, 'test', 'publish', 5, 'test', 'post', '2017-09-27 01:31:50', 'none'),
	(18, '测试', 'publish', 5, '1111', 'post', '2017-09-20 16:05:11', 'none');
/*!40000 ALTER TABLE `sl_post` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_post_tag 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `sl_post_tag` DISABLE KEYS */;
INSERT INTO `sl_post_tag` (`post_tag_id`, `post_id`, `tag_id`) VALUES
	(34, 11, 3),
	(35, 11, 2),
	(72, 1, 12),
	(73, 1, 3),
	(77, 6, 5),
	(78, 6, 12),
	(79, 6, 2),
	(80, 10, 3),
	(81, 10, 1);
/*!40000 ALTER TABLE `sl_post_tag` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_role 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sl_role` DISABLE KEYS */;
INSERT INTO `sl_role` (`role_id`, `role_name`, `role_info`) VALUES
	(1, 'root', 'BOSS'),
	(2, 'author', '上帝'),
	(5, 'admin', '权限狗');
/*!40000 ALTER TABLE `sl_role` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_role_permission 的数据：~49 rows (大约)
/*!40000 ALTER TABLE `sl_role_permission` DISABLE KEYS */;
INSERT INTO `sl_role_permission` (`id`, `role_id`, `permission_id`) VALUES
	(249, 2, 60),
	(250, 2, 81),
	(251, 2, 82),
	(252, 2, 83),
	(253, 2, 100),
	(254, 2, 101),
	(255, 2, 102),
	(256, 2, 103),
	(257, 2, 104),
	(258, 2, 105),
	(259, 2, 106),
	(260, 2, 107),
	(381, 1, 60),
	(382, 1, 67),
	(383, 1, 68),
	(384, 1, 69),
	(385, 1, 70),
	(386, 1, 71),
	(387, 1, 72),
	(388, 1, 73),
	(392, 1, 74),
	(393, 1, 75),
	(394, 1, 76),
	(395, 1, 77),
	(396, 1, 78),
	(397, 1, 79),
	(398, 1, 80),
	(399, 1, 81),
	(400, 1, 82),
	(401, 1, 83),
	(402, 1, 88),
	(403, 1, 89),
	(404, 1, 90),
	(405, 1, 93),
	(406, 1, 95),
	(407, 1, 64),
	(408, 1, 65),
	(409, 1, 66),
	(410, 1, 96),
	(411, 1, 97),
	(412, 1, 98),
	(413, 1, 100),
	(414, 1, 101),
	(415, 1, 102),
	(416, 1, 103),
	(417, 1, 104),
	(418, 1, 105),
	(419, 1, 106),
	(420, 1, 107);
/*!40000 ALTER TABLE `sl_role_permission` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_tag 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `sl_tag` DISABLE KEYS */;
INSERT INTO `sl_tag` (`tag_id`, `tag_name`) VALUES
	(1, 'IDEA'),
	(2, 'Java'),
	(3, '算法'),
	(5, '测试'),
	(10, '线程'),
	(12, '日常'),
	(13, '动漫');
/*!40000 ALTER TABLE `sl_tag` ENABLE KEYS */;

-- 正在导出表  sinitial.sl_user 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `sl_user` DISABLE KEYS */;
INSERT INTO `sl_user` (`user_id`, `user_name`, `user_password`, `nick_name`, `email`, `gender`, `sign_date`, `user_role`, `user_info`, `headshot`) VALUES
	(2, 'test', '1234', 'test2', 'whofawea@gmail.com', 0, '2017-09-27 16:57:07', 1, 'test', '201709271657074108.jpg'),
	(4, '魔理沙', '1234', '魔理沙', '233@gmail.com', 1, '2017-09-27 16:56:00', 2, '魔法使', '201709271656000459.png'),
	(5, '红白', '1234', '红白', 'jc@gmail.com', 1, '2017-09-27 16:56:36', 1, '巫女', '201709271656364583.jpg'),
	(6, '阿卡林', '1234', '阿卡林', 'nekuata@gmail.com', 1, '2017-09-27 16:56:49', 1, '不存在', '201709271656499432.jpg');
/*!40000 ALTER TABLE `sl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;