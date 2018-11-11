# funnyHaskell

Haskell趣学指南是一本非常有趣的书，虽然现在非常忙，但我希望在接下来的一段时间里能集中学习完这本书，这个项目也算是对github的一次练习，包含每个章节的笔记和练习

这本书虽然有免费的在线版，但是我希望通过这种复述的笨办法来学习haskell，到了年底看看这个懒毛病会不会复发。

在学习完一章之后进行向主分支的merge

## 第一章 各就各位，预备！

### 准备工具

编辑器（vscode）和编译器（glasgow haskell compiler GHC）

最简单的方法是下载Haskell Platform，包含很多有用的库

在终端中使用`ghci`来进入交互模式

学习流程：
在一个文件中定义了几个函数，通过`:l myfuctions`将函数装载进GHCi（需要保证脚本位于启动GHCi的同一目录下）
在修改了这个脚本内容之后，可以再次通过`:l myfunctions`或等价的`:r`来重新装载脚本

### 1.1 调用函数

* [笔记部分](note/chapter1/1.1/fuction.md)
* [练习部分](practice/chapter1/1.1/fuction.hs)

### 1.2 小朋友的第一个函数

* [笔记部分](note/chapter1/1.2/first_function.md)
* [练习部分](practice/chapter1/1.2/first_function.hs)

### 1.3 列表入门

1. 拼接列表
2. 访问列表中的元素
3. 嵌套列表
4. 比较列表
5. 更多列表操作

* [笔记部分](note/chapter1/1.3/list.md)
* [练习部分](practice/chapter1/1.3/list.hs)

### 1.4 得州区间

* [笔记部分](note/chapter1/1.4/range.md)
* [练习部分](practice/chapter1/1.4/range.hs)

### 1.5 我是列表推导式

* [笔记部分](note/chapter1/1.5/comprehension.md)
* [练习部分](practice/chapter1/1.5/comprehension.hs)

### 1.6 元组

1. 使用元组
2. 使用序对
3. 找直角三角形

* [笔记部分](note/chapter1/1.6/tuple.md)
* [练习部分](practice/chapter1/1.6/tuple.hs)

## 相信类型

### 2.1 显式类型声明

* [笔记部分](note/chapter2/2.1/type_declare.md)
* [练习部分](practice/chapter2/2.1/type_declare.hs)

### 2.2 Haskell的常见类型

* [笔记部分](note/chapter2/2.2/common_type.md)
* [练习部分](practice/chapter2/2.2/common_type.hs)

### 2.3 类型变量

* [笔记部分](note/chapter2/2.3/type_var.md)
* [练习部分](practice/chapter2/2.3/type_var.hs)

### 2.4 类型类入门

1. Eq类型类
2. Ord类型类
3. Show类型类
4. Read类型类
5. Enum类型类
6. Bounded类型类
7. Num类型类
8. Floating类型类
9. Integeral类型类
10. 有关类型类的最后总结

* [笔记部分](note/chapter2/2.4/type_class.md)
* [练习部分](practice/chapter2/2.4/type_class.hs)

## 函数的语法

### 3.1 模式匹配

1. 元组的模式匹配
2. 列表与列表推导式的模式匹配
3. As模式

* [笔记部分](note/chapter3/3.1/pattern.md)
* [练习部分](practice/chapter3/3.1/pattern.hs)

### 3.2 注意，哨卫！

* [笔记部分](note/chapter3/3.2/guard.md)
* [练习部分](practice/chapter3/3.2/guard.hs)

### 3.3 **where ? !**

1. where的作用域
2. where中的模式匹配
3. where块中的函数

* [笔记部分](note/chapter3/3.3/where.md)
* [练习部分](practice/chapter3/3.3/where.hs)

### 3.4 let

1. 列表推导式中的let
2. GHCi中的let

* [笔记部分](note/chapter3/3.4/let.md)
* [练习部分](practice/chapter3/3.4/let.hs)

### 3.5 case表达式

* [笔记部分](note/chapter3/3.5/case.md)
* [练习部分](practice/chapter3/3.5/case.hs)

## 你好，递归

### 4.1 不可思议的最大值

### 4.2 更多的几个递归函数

1. replicate
2. take
3. reverse
4. repeat
5. zip
6. elem

### 4.3 快点，排序！

1. 算法思路
2. 编写代码

### 4.4 递归地思考