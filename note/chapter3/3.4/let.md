# `let`

`let`是一个表达式，允许在任何位置定义局部变量，且不能对其它哨卫可见，`let`表达式也可以使用模式匹配

`let`表达式的格式为`let <binding> in <expression>`，在let中绑定的名字仅对于`in`部分可见

> 只要是表达式，就一定有返回值，这意味着`let`表达式可以放在代码的任何位置

`let`表达式的常用用法：

* 在局部作用域中定义函数
* 当需要在一行中绑定多个名字时，可以用分号将其分开
* 当需要从一个元组中取值时，使用`let`表达式配合模式匹配将十分方便