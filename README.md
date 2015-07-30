

# Intro to Common Lisp and Fizzbuzz

![LISP, the Language of Creation](https://imgs.xkcd.com/comics/lisp.jpg)

Since we're all about abstraction, before we learn a high level language like ruby, we should first learn a lower level language like LISP. Where Ruby has 42 some odd keywords providing us with many abstractions, lisp only has 5 predicates. Anyway, you tend to always end up building a LISP like language. It's even [Greenspun's tenth rule of programming](https://en.wikipedia.org/wiki/Greenspun%27s_tenth_rule)

    Any sufficiently complicated C or Fortran program contains an ad hoc, 
    informally-specified, bug-ridden, slow implementation of half of Common
    Lisp.

So let's just learn LISP.

## Installing LISP

`brew install clisp`

That will install Common Lisp on your system.

## Using the LISP REPL

A REPL is for Read-Evaluate-Print-Loop - or a way to interact with a interpreted programming language.

After installing LISP, go to your command line and type `clisp` to run the interpreter.

![The LISP REPL](https://dl.dropboxusercontent.com/s/omwzddk146hmtty/2015-03-31%20at%206.52%20PM.png)

## A Simple Hello World

Put this in your LISP REPL:

```common_lisp
(defun Hello()
    "Hello World"
)
```

Then to evoke the function you just defined simply call that function within parenthesis.

```common_lisp
(Hello)
```

## Parenthesis 

![LISP ()](https://imgs.xkcd.com/comics/lisp_cycles.png)

Everything in LISP must be properly enclosed and nested by parenthesis `()`

Everything is an expression enclosed in parenthesis. If you're program is broken, it's probably missing 8-10 parenthesis at least.

## Defining Functions in LISP

Let's learn how to define a function in lisp. The keyword for a function/method in  lisp is appropriately named, `defun`, for de-funning all the things about programming.

```common_lisp
(defun Hello ()
    "Return Value"
)
```
## Defining Variables

```common_lisp
(let ((x 10) (y 20))
```

That uses the let extension predicate to create two barewords, variables, `x` assigned to 10 and `y` assigned to 20.


## Conditional in LISP

To control flow logic like conditionals, use the `(cond ())` syntax like:

```common_lisp
(defun is_a_teenager (n)
    (cond (>= n 12) (
       (cond (<= n 20) "Yes")
    )
    (t            "No")
))
```

That's a nested one.

## Fizzbuzz

Fizzbuzz is the basic test of competency in code.

Build a lisp function that takes an argument and returns Fizz if it's divisible by 3, Buzz if it's divisible by 5, and FizzBuzz if it's divisible by both 3 and 5. You can use the `mod` function to do that in lisp.

Test suite is included in `fizzbuzz-tests.lisp`
