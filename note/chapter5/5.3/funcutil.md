# 函数式程序员的工具箱

## `map`函数

`map`函数：取一个函数和一个列表作为参数，它会将这个函数应用到列表的每个元素上，得到一个新的列表

函数定义：

```haskell
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs
```

`map`函数实现的功能可以使用列表推导式完成，但是在嵌套`map`的情况下使用`map`函数会使代码更加易读

---

## `filter`函数

`filter`函数：取一个*谓词（predicate）*和一个列表作为参数，返回由列表中所有符合该条件的元素组成的列表

函数定义：

```haskell
filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (x:xs)
    | p x = x : filter p xs
    | otherwise = filter p xs
```

与`map`函数相同，`filter`函数也可以使用列表推导式加谓词来实现，根据上下文的情景来判断使用**可读性更高**的方式

---

## 有关`map`和`filter`的更多示例

仅列举克拉兹序列，其它例子见练习内容

克拉兹序列问题定义：

* 从任意自然数开始
* 如果是1，停止
* 如果是偶数，将它除以2
* 如果是奇数，乘3再加1
* 所得结果继续计算

```haskell
collatz :: Integer -> [Integer]
collatz x
    | ord x = x : collatz (x * 3 + 1)
    | even x = x : collatz (x / 2)
    | 1 = [1]
```

---

## 映射带有多个参数的函数

可以映射带有多个参数的函数，根据之前的经验，将一个参数应用到取两个参数的函数上，可以得到一个取一个参数的函数