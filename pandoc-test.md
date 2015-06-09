---
title:  "Slides with Pandoc"
subtitle: "an introduction"
author: "Eduardo Pareja-Tobes"
date: "14 March 2023"
tags: [nothing, nothingness]
...

# In the morning

## Getting up

This should be a nice text. Put some _emphasis!_

- Turn **off** alarm
- Get out of bed

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

This should be something!

# Styles

## Math

$$
  \Delta \Delta^\dagger = 1_X
$$

Adjoints can be defined through extensions, as

$$
  Lan_G 1 = F
$$

## Code I

``` haskell
data DList a = DLNode (DList a) a (DList a)

takeF :: Integer -> DList a -> [a]
takeF 0     _                   = []
takeF (n + 1) (DLNode _ x next) = x : (takeF n next)

takeR :: Show a => Integer -> DList a -> [a]
takeR 0     _                   = []
takeR (n + 1) (DLNode prev x _) = x : (takeR n prev)
```

## Code II

Scala syntax highlighting is awful

``` scala
// Scala has objects
case class test {
  lazy val x = 2
  type T = Int
  def oh: String = "Buh!"
  def uh[X <: Any](l: Boolean): X

  val f: String => Int = _.length

  val g: String => Int = x => f(x)
}
```
