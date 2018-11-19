# 再来点儿高阶函数

> Haskell中的函数可以取函数作为参数，也可以返回一个函数

---

## 实现`zipWith`

`zipWith`函数：取一个函数和两个列表作为参数，然后使用两个列表中相应的元素取调用该函数，将两个列表结合到一起

```haskell
zipWith' :: (a -> b -> c) -> a -> b -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = (f x y) : (zipWith' f xs ys)
```

> 在编写函数（尤其是高阶函数）时，如果不确定函数的类型，可以先省略类型声明，再利用`:t`来查看Haskell类型推导的结果

---

## 实现`flip`

`flip`函数：取一个函数作为参数，返回一个效果相同的新函数,两个函数唯一的区别是新函数前两个参数的顺序与原函数相反

```haskell
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f y x = g x y
```