---
title:  "Slides with Pandoc"
subtitle: "an introduction"
author: "Eduardo Pareja-Tobes"
date: "14 March 2023"
tags: [nothing, nothingness]
...

# The idea

## what?

### markdown sources

You write your _slides_ using **Markdown**, working with them as you would with any markdown file; you can use all your favorite `pandoc` features too!

### PDF slides

Then, `pandoc` and `XeTeX` will convert your source to `pdf` using a custom `beamer` template. That sounds involved, but is already automated for you.

# How

## Making slides

Use level *one* headings to make _sections_, and level *two* headings for _slides_. You can introduce a new slide at any point with _4_ or more dashes `----`. This is sometimes handy for displaying images or a lot of code.

``` Markdown
# A section

## Now a slide

Hola!

----

Another slide here!
```

# Formatting

## Standard Markdown

Everything works the same as for any markdown document. You have **bold**, *italic* and _**bold italic**_ text; ~~strikeout~~, [links](http://ohnosequences.com) and of course $\lim_{n \to \infty} B(n) = c$. Block quotes work too:

> quotations are a byproduct of impermanence
>
> **Someone**, 2018

1. and also lists
2. numbered or not, nested, ...
    - the order is sometimes
    - not so important

## Images

![A nice valley](images/valley.jpg)

## Images

![](images/valley.jpg)

----

![A nice valley again](images/valley.jpg)

## Code highlighting

Works reasonably well. The awful Haskell syntax in all its glory:

``` haskell
data DList a = DLNode (DList a) a (DList a)

takeF :: Integer -> DList a -> [a]
takeF 0     _                   = []
takeF (n + 1) (DLNode _ x next) = x : (takeF n next)

takeR :: Show a => Integer -> DList a -> [a]
takeR 0     _                   = []
takeR (n + 1) (DLNode prev x _) = x : (takeR n prev)
```

## Code highlighting

Sadly, the Scala syntax definition that Pandoc uses is awful. See [jgm/highlighting-kate#71](https://github.com/jgm/highlighting-kate/issues/71)

``` Scala
// Scala looks awful!
case class test(val x: Boolean) {

  lazy val x = 2
  type T = Int
  def oh: String = "Buh!"
}
```

# Slides specific bits

## Basic animations

### Incremental lists

Sometimes we want to display items from a list incrementally:

> - first this,
> - then that
> - and also this too

Can be a nice touch sometimes; do not abuse it though.

## Basic animations

### Pauses

Pause is a bit misleading here. The effect is that a slide displays at first only part of your text.

. . .

Once you advance to the next, you get the same as before plus some added content. It can be a nice addition if you remember *where* those pauses are.

. . .

It can also be a bit

. . .

tiring.

# Questions?
